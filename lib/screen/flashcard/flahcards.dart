import 'package:audioplayers/audioplayers.dart';
import 'package:flash_card_with_audio/Server/sizeconfig.dart';
import 'package:flash_card_with_audio/screen/flashcard/flashcard_model.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlashCard extends StatefulWidget {
  final List<FlashCardModel> flashCards;
  final String groupname;
  final String imgpath;

  const FlashCard(
      {required this.flashCards,
      required this.groupname,
      required this.imgpath,
      Key? key})
      : super(key: key);

  @override
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  int listIndex = 0;

  AudioCache cachePlayer = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState playerState = PlayerState.PAUSED;
  Duration musicDuration = const Duration();
  Duration position = const Duration();

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

  void seekToSec(int sec) {
    Duration newPosition = Duration(seconds: sec);
    audioPlayer.seek(newPosition);
  }

  @override
  void dispose() {
    super.dispose();
    cachePlayer.clearAll();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // ignore: todo
      // TODO: Use Theme from MaterialWidget
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text(widget.groupname),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.orange[200]),
                      height: SizeConfig.safeBlockVertical * 50,
                      // ignore: todo
                      // TODO: Insert into an external widget
                      child: FlipCard(
                        front: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: SizeConfig.safeBlockVertical * 40,
                                width: SizeConfig.safeBlockHorizontal * 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.orange,
                                ),
                                child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(widget.imgpath)),
                              ),
                            ),
                            Padding(
                              padding: // ? How does EdgeInsets works
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget
                                            .flashCards[listIndex].transCricao,
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    6,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        back: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: SizeConfig.safeBlockVertical * 40,
                              width: SizeConfig.safeBlockHorizontal * 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (var item in widget
                                      .flashCards[listIndex].translation)
                                    Text(
                                      item,
                                      style: TextStyle(
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal * 6,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              playerState == PlayerState.PLAYING
                                  ? audioPlayer.pause()
                                  : cachePlayer.play(
                                      widget.flashCards[listIndex].audioUrl);
                            },
                            iconSize: SizeConfig.blockSizeVertical * 6,
                            icon: playerState == PlayerState.PLAYING
                                ? const Icon(Icons.pause)
                                : const Icon(Icons.play_arrow),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Slider(
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
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: SizeConfig.safeBlockVertical * 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton.icon(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (states) {
                                  return Colors.white;
                                }),
                              ),
                              onPressed: () {
                                if (listIndex > 0) {
                                  setState(() {
                                    listIndex--;
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.chevron_left,
                                color: Colors.orange,
                              ),
                              label: Text(
                                'Anterior',
                                style: TextStyle(
                                    color: listIndex > 0
                                        ? Colors.black
                                        : Colors.grey),
                              )),
                          OutlinedButton.icon(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (states) {
                                  return Colors.white;
                                }),
                              ),
                              onPressed: () {
                                if (listIndex < widget.flashCards.length - 1) {
                                  setState(() {
                                    listIndex++;
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.orange,
                              ),
                              label: Text(
                                'Proximo',
                                style: TextStyle(
                                    color:
                                        listIndex < widget.flashCards.length - 1
                                            ? Colors.black
                                            : Colors.grey),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
