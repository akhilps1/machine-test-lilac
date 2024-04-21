part of 'video_player_bloc.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
    required List<String> videoId,
    required List<String> downloadVideos,
    required int playIndex,
    required bool isVideoDownloading,
    required Uint8List? decryptedVideo,
    required BetterPlayerController? videoController,
  }) = _VideoPlayerState;

  factory VideoPlayerState.initial() => const VideoPlayerState(
        videoId: [
          '1wS3ASt3JJJH3f71vLz5Buun0kvEvknKl',
          '1DgI-fhN9uIr4V-byvGLLZ81VVeAjqz6A',
          '1sudLFvdWO6AZwubFNGNa1tKKwwbQ7kE6'
        ],
        downloadVideos: [],
        playIndex: 0,
        isVideoDownloading: false,
        decryptedVideo: null,
        videoController: null,
      );
}

extension VideoPlayerStateX on VideoPlayerState {
  bool get isDownloadedVideo =>
      downloadVideos.map((e) => e).contains(videoId[playIndex]);
}
