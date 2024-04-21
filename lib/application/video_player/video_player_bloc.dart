import 'dart:typed_data';

import 'package:better_player_plus/better_player_plus.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_test/application/core/serveice/custom_toast.dart';
import 'package:machine_test/application/core/serveice/debug_logger.dart';
import 'package:machine_test/domain/video_player/i_video_player_facade.dart';

part 'video_player_event.dart';
part 'video_player_state.dart';
part 'video_player_bloc.freezed.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc(this.iVideoPlayerFacade) : super(VideoPlayerState.initial()) {
    on<PlayNext>(_playNext);
    on<PlayPrevious>(_playPrevious);

    on<GetDownloadedVideoId>(_getDownloadedVideoId);

    on<DownloadAndEncrypt>(
      _downloadAndEncrypt,
      transformer: droppable(),
    );
    on<GetDecreptedData>(
      _getDecreptedData,
      transformer: restartable(),
    );
  }

  final IVideoPlayerFacade iVideoPlayerFacade;
  DebugLogger logger = DebugLogger();

  void _playNext(
    PlayNext event,
    Emitter<VideoPlayerState> emit,
  ) {
    logger.log('Playing Next Video ${state.playIndex}');
    if (state.playIndex == state.videoId.length - 1) return;

    emit(
      state.copyWith(
        playIndex: state.playIndex + 1,
        decryptedVideo: null,
      ),
    );
  }

  void _playPrevious(
    PlayPrevious event,
    Emitter<VideoPlayerState> emit,
  ) async {
    logger.log('Playing Next Video ${state.playIndex}');
    if (state.playIndex == 0) return;
    emit(
      state.copyWith(
        playIndex: state.playIndex - 1,
        decryptedVideo: null,
      ),
    );
  }

  void _getDownloadedVideoId(
    GetDownloadedVideoId event,
    Emitter<VideoPlayerState> emit,
  ) {
    final result = iVideoPlayerFacade.getDownloadedVideoId();

    logger.log('Getting Downloaded Video Ids : $result');
    emit(
      state.copyWith(
        downloadVideos: result,
      ),
    );
  }

  void _downloadAndEncrypt(
    DownloadAndEncrypt event,
    Emitter<VideoPlayerState> emit,
  ) async {
    emit(state.copyWith(isVideoDownloading: true));
    final result = await iVideoPlayerFacade.downloadAndEncrypt(
      videoId: event.videoId,
    );

    result.fold(
      (l) {
        CustomToast.errorToast(message: 'Failed To Download Video');
        emit(state.copyWith(isVideoDownloading: false));
      },
      (r) {
        CustomToast.successToast(message: 'Video Downloaded Successfully');
        emit(state.copyWith(isVideoDownloading: false));
      },
    );
  }

  void _getDecreptedData(
    GetDecreptedData event,
    Emitter<VideoPlayerState> emit,
  ) async {
    final result = await iVideoPlayerFacade.getDecreptedData(
      videoId: event.videoId,
    );

    result.fold(
      (l) {
        CustomToast.errorToast(message: 'Failed To Decrypt Video');
      },
      (r) {
        logger.log('Decrypted Video');
        emit(state.copyWith(decryptedVideo: r));
      },
    );
  }
}
