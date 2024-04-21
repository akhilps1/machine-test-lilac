import 'dart:developer';

import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/application/core/serveice/custom_toast.dart';
import 'package:machine_test/application/video_player/video_player_bloc.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    final state = context.read<VideoPlayerBloc>().state;
    BetterPlayerConfiguration betterPlayerConfiguration =
        const BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
    );

    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    if (!context.read<VideoPlayerBloc>().state.isDownloadedVideo) {
      _betterPlayerController.setupDataSource(
        BetterPlayerDataSource.network(
          'https://drive.google.com/uc?export=download&id=${state.videoId[state.playIndex]}',
        ),
      );
    } else {
      if (state.decryptedVideo != null) {
        _betterPlayerController.setupDataSource(
          BetterPlayerDataSource.memory(
            state.decryptedVideo!,
          ),
        );
      } else {
        context.read<VideoPlayerBloc>().add(
              GetDecreptedData(state.videoId[state.playIndex]),
            );
      }
    }

    _betterPlayerController.addEventsListener((event) {
      log(event.parameters.toString());
      if (event.betterPlayerEventType == BetterPlayerEventType.exception) {}
    });
    super.initState();
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoPlayerBloc, VideoPlayerState>(
      listener: (context, state) {
        log(state.downloadVideos.toString());
        // if (_betterPlayerController.isPlaying() == true) return;

        if (!state.isDownloadedVideo) {
          _betterPlayerController.setupDataSource(
            BetterPlayerDataSource.network(
              'https://drive.google.com/uc?export=download&id=${state.videoId[state.playIndex]}',
            ),
          );
        } else if (state.isDownloadedVideo && state.decryptedVideo == null) {
          context.read<VideoPlayerBloc>().add(
                GetDecreptedData(state.videoId[state.playIndex]),
              );
        } else {
          _betterPlayerController.setupDataSource(
            BetterPlayerDataSource.memory(
              state.decryptedVideo!,
            ),
          );
        }
      },
      buildWhen: (previous, current) =>
          previous.playIndex != current.playIndex ||
          current.decryptedVideo != null,
      builder: (context, state) {
        return Column(
          children: [
            if (state.isVideoDownloading) const LinearProgressIndicator(),
            Stack(
              alignment: Alignment.center,
              children: [
                BetterPlayer(controller: _betterPlayerController),
                if (state.isDownloadedVideo && state.decryptedVideo == null)
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.black,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (state.isVideoDownloading) {
                      CustomToast.errorToast(
                          message: 'Wait for video to download');

                      return;
                    }
                    _betterPlayerController.pause();
                    context.read<VideoPlayerBloc>().add(const PlayPrevious());
                  },
                  child: const Icon(Icons.skip_previous),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (!state.isDownloadedVideo) {
                      context.read<VideoPlayerBloc>().add(
                            DownloadAndEncrypt(
                              state.videoId[state.playIndex],
                            ),
                          );
                    }
                  },
                  child: Text(
                    !state.isDownloadedVideo ? 'Download Video' : 'Downloaded',
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (state.isVideoDownloading) {
                      CustomToast.errorToast(
                          message: 'Wait for video to download');

                      return;
                    }
                    _betterPlayerController.pause();
                    context.read<VideoPlayerBloc>().add(const PlayNext());
                  },
                  child: const Icon(Icons.skip_next),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
