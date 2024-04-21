import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/application/core/serveice/debug_logger.dart';
import 'package:machine_test/application/core/serveice/encription.dart';
import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';
import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/video_player/i_video_player_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IVideoPlayerFacade)
class VideoPlayerImpl implements IVideoPlayerFacade {
  VideoPlayerImpl(
    this.sharedPreferences,
    this.encriptionServeice,
  );

  final SharedPreferences sharedPreferences;
  final VideoEncriptionServeice encriptionServeice;

  final DebugLogger logger = DebugLogger();

  @override
  List<String> getDownloadedVideoId() {
    final data = sharedPreferences.getStringList('downloaded_videos');

    if (data != null) {
      return data;
    }

    return [];
  }

  ResultFuture<Unit> saveDownloadedVideo({
    required List<String> videoIds,
  }) async {
    try {
      await sharedPreferences.setStringList('downloaded_videos', videoIds);

      return right(unit);
    } catch (e) {
      return left(
        MainFailure.dataNotFount(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  ResultFuture<String> downloadAndEncrypt({
    required String videoId,
  }) async {
    logger.log('Downloading...');

    final url = 'https://drive.google.com/uc?export=download&id=$videoId';

    try {
      final result = await http.get(Uri.parse(url));

      if (result.statusCode == 200) {
        final encryptedResult = await _encriptData(
          data: result.bodyBytes,
          videoId: videoId,
        );

        return await encryptedResult.fold(
          left,
          (r) async {
            final result = await writeData(
              data: r,
              fileName: '$videoId.mp4.aes',
            );

            return result.fold(left, (r) async {
              await saveDownloadedVideo(
                videoIds: [...getDownloadedVideoId(), videoId],
              );
              return right(r);
            });
          },
        );
      } else {
        logger.log('Error downloading video');
        return left(
          const MainFailure.dataNotFount(
            errorMsg: 'Error downloading video',
          ),
        );
      }
    } catch (e) {
      logger.log('Error downloading video ${e.toString()}');
      throw Exception('Error downloading video');
    }
  }

  ResultFuture<Encrypted> _encriptData({
    required String videoId,
    required Uint8List data,
  }) async {
    final dir = await encriptionServeice.getPath();

    if (dir == null) {
      return left(
        const MainFailure.dataNotFount(
          errorMsg: 'Error getting external storage directory',
        ),
      );
    }

    final encrypted =
        encriptionServeice.encriptData(data: data, videoId: videoId);

    return right(encrypted);
  }

  ResultFuture<String> writeData({
    required Encrypted data,
    required String fileName,
  }) async {
    final dir = await encriptionServeice.getPath();

    if (dir == null) {
      return left(
        const MainFailure.dataNotFount(
          errorMsg: 'Error getting external storage directory',
        ),
      );
    }

    final path = await encriptionServeice.writeData(
      data: data,
      dir: dir,
      fileName: fileName,
    );

    return right(path);
  }

  @override
  ResultFuture<Uint8List> getDecreptedData({
    required String videoId,
  }) async {
    try {
      final dir = await encriptionServeice.getPath();

      if (dir == null) {
        return left(
          const MainFailure.dataNotFount(
            errorMsg: 'Error getting external storage directory',
          ),
        );
      }

      final data = await encriptionServeice.decryptData(
        path: '${dir.path}/$videoId.mp4.aes',
      );

      return right(Uint8List.fromList(data));
    } catch (e) {
      return left(
        MainFailure.dataNotFount(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  Future<bool> _requestPermission() async {
    return encriptionServeice.requestPermission();
  }
}
