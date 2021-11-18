import 'package:flash_card_with_audio/Server/sizeconfig.dart';
import 'package:flash_card_with_audio/screen/flashcard/flashcard_model.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

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

enum TtsState { playing, stopped }

class _FlashCardState extends State<FlashCard> {
  late FlutterTts flutterTts;

  double volume = 0.5;
  double pitch = 1.1;
  double rate = 0.35;
  int listIndex = 0;

  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;

  get isStopped => ttsState == TtsState.stopped;

  @override
  initState() {
    super.initState();
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();

    flutterTts.setStartHandler(() {
      setState(() {
        ttsState = TtsState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setErrorHandler((msg) {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setLanguage('en-US');
  }

  Future _speak(String _newVoiceText) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (_newVoiceText.isNotEmpty) {
      var result = await flutterTts.speak(_newVoiceText);
      if (result == 1) setState(() => ttsState = TtsState.playing);
    }
  }

  Future _stop() async {
    var result = await flutterTts.stop();
    if (result == 1) setState(() => ttsState = TtsState.stopped);
  }

  Widget _buildSliders() {
    return SizedBox(
      child: Column(
        children: [_rate()],
      ),
    );
  }

  Widget _rate() {
    return Slider(
      value: rate,
      onChanged: (newRate) {
        setState(() => rate = newRate);
      },
      min: 0.0,
      max: 1.0,
      divisions: 10,
      label: "Rate: $rate",
      activeColor: Colors.green,
    );
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
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
                                        widget.flashCards[listIndex]
                                            .transcription,
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
                                      .flashCards[listIndex].translationlist)
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
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              Center(
                child: Container(
                  height: SizeConfig.safeBlockVertical * 10,
                  width: SizeConfig.safeBlockHorizontal * 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      _buildSliders(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
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
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: SizeConfig.safeBlockVertical * 8,
                              child: IconButton(
                                onPressed: () {
                                  isPlaying
                                      ? _stop()
                                      : _speak(widget
                                          .flashCards[listIndex].transcription);
                                },
                                iconSize: SizeConfig.blockSizeVertical * 6,
                                icon: isPlaying
                                    ? const Icon(Icons.pause)
                                    : const Icon(Icons.play_arrow),
                              ),
                            ),
                          ),
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
