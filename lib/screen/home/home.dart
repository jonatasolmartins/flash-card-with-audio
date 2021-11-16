import 'package:flash_card_with_audio/screen/flashcard/flahcards.dart';
import 'package:flash_card_with_audio/screen/flashcard/flashcard_group_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: flashcardgroup.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                FlashCardGroup flashCardGroup = flashcardgroup[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: GestureDetector(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.orange,
                              ),
                              child: Image(
                                  fit: BoxFit.fill,
                                  width: 400,
                                  height: 175,
                                  alignment: Alignment.center,
                                  image: AssetImage(flashCardGroup.imgUrl)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      flashCardGroup.descricao,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                        'Lorem Ipsem Lorem IpsemLorem Ipsem...')
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        if (flashCardGroup.flashCards.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlashCard(
                                      groupname: flashCardGroup.descricao,
                                      flashCards: flashCardGroup.flashCards,
                                      imgpath: flashCardGroup.imgUrl,
                                    )),
                          );
                        }
                      },
                    ),
                  ),
                );
              })),
    );
  }
}
