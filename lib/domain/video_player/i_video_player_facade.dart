import 'dart:typed_data';

import 'package:machine_test/application/core/utils/typedefs/typedefs.dart';

abstract interface class IVideoPlayerFacade {


  List<String> getDownloadedVideoId();

  ResultFuture<String> downloadAndEncrypt({
    required String videoId,
  });

  ResultFuture<Uint8List> getDecreptedData({
    required String videoId,
  });
}
