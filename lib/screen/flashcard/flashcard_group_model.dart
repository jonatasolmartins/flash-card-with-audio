import 'package:flash_card_with_audio/screen/flashcard/flashcard_model.dart';

class FlashCardGroup {
  String descricao;
  String imgUrl;
  String name;
  List<FlashCardModel> flashCards;

  FlashCardGroup(
      {required this.descricao,
      required this.imgUrl,
      required this.flashCards,
      required this.name});
}

List<FlashCardModel> verbtobecards = [
  FlashCardModel(
      transCricao: 'Are you hungry?',
      translation: ['Você está com fome?'],
      imgUrl: 'asset/images/questions/verbtobe/areyouhungry.jpeg',
      audioUrl: 'questions/verbtobe/areyouhungry.mp3',
      groupName: 'verbtobe'),
  FlashCardModel(
    transCricao: 'Are you ready?',
    translation: ['Você está pronta?', 'Você está pronto?'],
    imgUrl: 'asset/images/questions/verbtobe/areyouready.jpeg',
    audioUrl: 'questions/verbtobe/areyouready.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'Where are you?',
    translation: ['Onde está você?', 'Onde você está?'],
    imgUrl: 'asset/images/questions/verbtobe/whereareyou.jpeg',
    audioUrl: 'questions/verbtobe/whereareyou.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'Who are they?',
    translation: ['Quem são eles?', 'Quem eles são', 'Quem elas são'],
    imgUrl: 'asset/images/questions/verbtobe/whoarethey.jpeg',
    audioUrl: 'questions/verbtobe/whoarethey.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'What are you doing?',
    translation: ['O que você está fazendo?'],
    imgUrl: 'asset/images/questions/verbtobe/whatareyoudoing.jpeg',
    audioUrl: 'questions/verbtobe/whatareyoudoing.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'What is the color of your T-shirt?',
    translation: ['Qual é a cor da sua camiseta?'],
    imgUrl: 'asset/images/questions/verbtobe/whatcolortshirt.jpeg',
    audioUrl: 'questions/verbtobe/whatcolortshirt.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'How much is it?',
    translation: ['Quanto é?', 'Quanto custa?'],
    imgUrl: 'asset/images/questions/verbtobe/howmuchisit.jpeg',
    audioUrl: 'questions/verbtobe/howmuchisit.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'Why is this here?',
    translation: ['Por que isso está aqui?'],
    imgUrl: 'asset/images/questions/verbtobe/whyisthishere.jpeg',
    audioUrl: 'questions/verbtobe/whyisthishere.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'How are you?',
    translation: ['Como vai você?', 'Como você está?'],
    imgUrl: 'asset/images/questions/verbtobe/howareyou.jpeg',
    audioUrl: 'questions/verbtobe/howareyou.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'How is your mother?',
    translation: ['Como vai sua mãe?', 'Como sua mãe está?'],
    imgUrl: 'asset/images/questions/verbtobe/howisyourmother.jpeg',
    audioUrl: 'questions/verbtobe/howisyourmother.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'How old are you?',
    translation: ['Quantos anos você tem?'],
    imgUrl: 'asset/images/questions/verbtobe/howoldareyou.jpeg',
    audioUrl: 'questions/verbtobe/howoldareyou.mp3',
    groupName: 'verbtobe',
  ),
  FlashCardModel(
    transCricao: 'How old is she?',
    translation: ['Quantos anos ela tem?'],
    imgUrl: 'asset/images/questions/verbtobe/howoldisshe.jpeg',
    audioUrl: 'questions/verbtobe/howoldisshe.mp3',
    groupName: 'verbtobe',
  ),
];

List<FlashCardModel> verbcard = [];

List<FlashCardModel> qusingcancard = [];

List<FlashCardModel> qusingdocard = [];

List<FlashCardModel> qusingpastcard = [];

List<FlashCardModel> familycard = [];

List<FlashCardModel> bodypartscard = [];

List<FlashCardModel> professionscard = [];

List<FlashCardModel> animalscard = [];

List<FlashCardModel> foodscard = [];

List<FlashCardGroup> flashcardgroup = [
  FlashCardGroup(
      descricao: 'Verbs',
      imgUrl: 'asset/images/verb/verb.jpeg',
      flashCards: verbcard,
      name: 'verb'),
  FlashCardGroup(
      descricao: 'Questions using the verb to be',
      imgUrl: 'asset/images/questions/verbtobe/verbtobe.jpeg',
      flashCards: verbtobecards,
      name: 'verbtobe'),
  FlashCardGroup(
      descricao: 'Questions using "Can"',
      imgUrl: 'asset/images/questions/qusingcan/qusingcan.jpeg',
      flashCards: qusingcancard,
      name: 'qusingcan'),
  FlashCardGroup(
      descricao: 'Questions using the auxiliar verb "DO"',
      imgUrl: 'asset/images/questions/qusingdo/qusingdo.jpeg',
      flashCards: qusingdocard,
      name: 'qusingdo'),
  // FlashCardGroup(
  //     descricao: 'Daily life phrases',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  FlashCardGroup(
      descricao: 'Questions in the Past tense',
      imgUrl: 'asset/images/questions/qusingpast/qusingpast.jpeg',
      flashCards: qusingpastcard,
      name: 'qusingpast'),
  FlashCardGroup(
      descricao: 'Family relationship',
      imgUrl: 'asset/images/family/family.jpeg',
      flashCards: familycard,
      name: 'family'),
  FlashCardGroup(
      descricao: 'Body parts',
      imgUrl: 'asset/images/bodyparts/bodyparts.jpeg',
      flashCards: bodypartscard,
      name: 'bodyparts'),
  FlashCardGroup(
      descricao: 'Professions',
      imgUrl: 'asset/images/professions/professions.png',
      flashCards: professionscard,
      name: 'professions'),
  // FlashCardGroup(
  //     descricao: 'Illness',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Fellings',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  FlashCardGroup(
    descricao: 'Animals',
    imgUrl: 'asset/images/animals/animals.jpeg',
    flashCards: animalscard,
    name: 'animals',
  ),
  // FlashCardGroup(
  //     descricao: 'Household utensils',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Useful words',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Phrasal verbs',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Affirmative / Negative: Simple present',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Affirmative / Negative: Past tense',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  FlashCardGroup(
      descricao: 'Foods',
      imgUrl: 'asset/images/foods/foods.jpeg',
      flashCards: foodscard,
      name: 'foods'),
];
