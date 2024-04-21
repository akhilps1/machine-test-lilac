part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.playNext() = PlayNext;
  const factory VideoPlayerEvent.playPrevious() = PlayPrevious;

  const factory VideoPlayerEvent.getDownloadedVideoId() = GetDownloadedVideoId;

  const factory VideoPlayerEvent.downloadAndEncrypt(String videoId) =
      DownloadAndEncrypt;

  const factory VideoPlayerEvent.getDecreptedData(String videoId) =
      GetDecreptedData;
}
