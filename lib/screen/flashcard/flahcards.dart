import 'package:flash_card_with_audio/screen/audioplayer/audioplayerservices.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          borderRadius: BorderRadius.circular(15.0)),
                      height: 400,
                      child: FlipCard(
                        front: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 400,
                                width: 400,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.orange,
                                ),
                                child: Image(
                                    fit: BoxFit.fill,
                                    width: 400,
                                    height: 300,
                                    alignment: Alignment.center,
                                    image: AssetImage(widget.imgpath)),
                              ),
                            ),
                            Padding(
                              padding:
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
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        back: Container(
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (var item
                                    in widget.flashCards[listIndex].translation)
                                  Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 70,
                  width: 300,
                  child: AudioPlayerWithLocalAsset(
                    fileName: widget.flashCards[listIndex].audioUrl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
