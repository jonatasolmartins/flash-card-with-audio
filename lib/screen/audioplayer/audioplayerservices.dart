import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class AudioPlayerWithLocalAsset extends StatefulWidget {
  final PathCallback onPathSelected;

  const AudioPlayerWithLocalAsset({required this.onPathSelected, Key? key})
      : super(key: key);
  @override
  _AudioPlayerWithLocalAssetState createState() =>
      _AudioPlayerWithLocalAssetState();
}

class _AudioPlayerWithLocalAssetState extends State<AudioPlayerWithLocalAsset> {
  AudioCache cachePlayer = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState playerState = PlayerState.PAUSED;
  Duration musicDuration = const Duration();
  Duration position = const Duration();

  void seekToSec(int sec) {
    Duration newPosition = Duration(seconds: sec);
    audioPlayer.seek(newPosition);
  }

  @override
  void initState() {
    super.initState();

    cachePlayer = AudioCache(fixedPlayer: audioPlayer, prefix: 'asset/audio/');

    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() => musicDuration = d);
    });

    audioPlayer.onAudioPositionChanged
        .listen((Duration p) => {setState(() => position = p)});

    audioPlayer.onPlayerStateChanged
        .listen((PlayerState s) => {setState(() => playerState = s)});

    audioPlayer.onPlayerCompletion.listen((event) {
      seekToSec(0);
    });
    audioPlayer.onPlayerError.listen((msg) {
      setState(() {
        playerState = PlayerState.STOPPED;
        musicDuration = const Duration(seconds: 0);
        position = const Duration(seconds: 0);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    cachePlayer.clearAll();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

typedef PathCallback = void Function(String path);
