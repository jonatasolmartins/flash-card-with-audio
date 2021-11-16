import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerWithLocalAsset extends StatefulWidget {
  final String fileName;

  const AudioPlayerWithLocalAsset({Key? key, required this.fileName})
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

    cachePlayer.load(widget.fileName);

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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              playerState == PlayerState.PLAYING
                                  ? audioPlayer.pause()
                                  : cachePlayer.play(widget.fileName);
                            },
                            iconSize: 50,
                            icon: Icon(playerState == PlayerState.PLAYING
                                ? Icons.pause
                                : Icons.play_arrow)),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Slider(
                            activeColor: Colors.orange,
                            inactiveColor: Colors.grey[350],
                            min: 0.0,
                            max: (musicDuration.inMicroseconds /
                                1000.floorToDouble()),
                            value: (position.inMicroseconds / 1000)
                                .floorToDouble(),
                            onChanged: (value) {
                              seekToSec(value.toInt());
                            },
                            onChangeEnd: (value) {
                              seekToSec(0);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
