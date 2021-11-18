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
      transcription: 'Are you hungry?',
      translationlist: ['Você está com fome?'],
      namegroup: 'verbtobe'),
  FlashCardModel(
    transcription: 'Are you ready?',
    translationlist: ['Você está pronta?', 'Você está pronto?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'Where are you?',
    translationlist: ['Onde está você?', 'Onde você está?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'Who are they?',
    translationlist: ['Quem são eles?', 'Quem eles são', 'Quem elas são'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'What are you doing?',
    translationlist: ['O que você está fazendo?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'What is the color of your T-shirt?',
    translationlist: ['Qual é a cor da sua camiseta?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'How much is it?',
    translationlist: ['Quanto é?', 'Quanto custa?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'Why is this here?',
    translationlist: ['Por que isso está aqui?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'How are you?',
    translationlist: ['Como vai você?', 'Como você está?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'How is your mother?',
    translationlist: ['Como vai sua mãe?', 'Como sua mãe está?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'How old are you?',
    translationlist: ['Quantos anos você tem?'],
    namegroup: 'verbtobe',
  ),
  FlashCardModel(
    transcription: 'How old is she?',
    translationlist: ['Quantos anos ela tem?'],
    namegroup: 'verbtobe',
  ),
];

List<FlashCardModel> verbcard = [
  FlashCardModel(
    transcription: 'To Love',
    translationlist: ['Amar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Like',
    translationlist: ['Gostar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Pray',
    translationlist: ['Orar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Speak',
    translationlist: ['Falar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Say',
    translationlist: ['Dizer'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Have',
    translationlist: ['Ter'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Give',
    translationlist: ['Dar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Eat',
    translationlist: ['Comer'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Drink',
    translationlist: ['Beber'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To See',
    translationlist: ['Ver'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Look',
    translationlist: ['Olhar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Leave',
    translationlist: ['Sair'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Stay',
    translationlist: ['Ficar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Go',
    translationlist: ['Ir'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Come',
    translationlist: ['Vir'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Wash',
    translationlist: ['Lavar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Brush',
    translationlist: ['Escovar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Lay',
    translationlist: ['Deitar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Take',
    translationlist: ['Pegar', 'Tomar', 'Levar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Get',
    translationlist: ['Obter', 'Receber', 'Conseguir'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Put',
    translationlist: ['Colocar', 'Pôr', 'Botar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Touch',
    translationlist: ['Tocar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Walk',
    translationlist: ['Andar', 'Caminhar'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Run',
    translationlist: ['Correr'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Sit',
    translationlist: ['Sentar', 'Sentar-se'],
    namegroup: 'verb',
  ),
  FlashCardModel(
    transcription: 'To Jump',
    translationlist: ['Pular', 'Saltar'],
    namegroup: 'verb',
  ),
];

List<FlashCardModel> qusingcancard = [
  FlashCardModel(
    transcription: 'Can you help me?',
    translationlist: ['Você pode me ajudar?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can I take this?',
    translationlist: ['Posso levar isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can I get this?',
    translationlist: ['Posso pegar isso?', 'Posso obter isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you repeat?',
    translationlist: ['Você pode repetir?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you speak slower?',
    translationlist: ['Você falar mais devagar?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you speak louder?',
    translationlist: ['Você falar mais alto?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you speak lower?',
    translationlist: ['Você falar mais baixo?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can it be now?',
    translationlist: ['Pode ser agora?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you fix it?',
    translationlist: ['Você pode consertar isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can I eat this?',
    translationlist: ['Eu posso comer isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can I drink this?',
    translationlist: ['Eu posso beber isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you see this?',
    translationlist: ['Você pode ver isso?', 'Pode ver isso?'],
    namegroup: 'qusingcan',
  ),
  FlashCardModel(
    transcription: 'Can you look at me?',
    translationlist: ['Você pode olhar para mim?', 'Pode olhar para mim?'],
    namegroup: 'qusingcan',
  ),
];

List<FlashCardModel> familycard = [
  FlashCardModel(
    transcription: 'Father',
    translationlist: ['Pai'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Mother',
    translationlist: ['Mãe'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Parents',
    translationlist: ['Pais'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Daughter',
    translationlist: ['Filha'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Son',
    translationlist: ['Filho'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'GrandFather',
    translationlist: ['Avô'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'GrandMother',
    translationlist: ['Avó'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'GrandParents',
    translationlist: ['Avós'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Sister',
    translationlist: ['Irmã'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Sisters',
    translationlist: ['Irmãs'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Brother',
    translationlist: ['Irmão'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Brothers',
    translationlist: ['Irmãos'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Siblings',
    translationlist: ['Irmãos(Homem e Mulher)'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Cousin',
    translationlist: ['Primo', 'Prima'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Cousins',
    translationlist: ['Primos', 'Primas'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Husband',
    translationlist: ['Marido'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Wife',
    translationlist: ['Esposa'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Uncle',
    translationlist: ['Tio'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Uncles',
    translationlist: ['Tios'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Aunt',
    translationlist: ['Tia'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Aunts',
    translationlist: ['Tias'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Nephew',
    translationlist: ['Sobrinho'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Nephews',
    translationlist: ['Sobrinhos'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Niece',
    translationlist: ['Sobrinha'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Nieces',
    translationlist: ['Sobrinhas'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'StepFather',
    translationlist: ['Padrasto'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'StepMother',
    translationlist: ['Madrasta'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Groom',
    translationlist: ['Noivo'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Fiancee',
    translationlist: ['Noiva'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Father in law',
    translationlist: ['Sogro'],
    namegroup: 'family',
  ),
  FlashCardModel(
    transcription: 'Mother in law',
    translationlist: ['Sogra'],
    namegroup: 'family',
  ),
];

List<FlashCardModel> qusingdocard = [];

List<FlashCardModel> qusingpastcard = [];

List<FlashCardModel> bodypartscard = [];

List<FlashCardModel> professionscard = [];

List<FlashCardModel> animalscard = [];

List<FlashCardModel> foodscard = [];

List<FlashCardGroup> flashcardgroup = [
  FlashCardGroup(
      descricao: 'Verbs',
      imgUrl: 'asset/images/verb.jpeg',
      flashCards: verbcard,
      name: 'verb'),
  FlashCardGroup(
      descricao: 'Family relationship',
      imgUrl: 'asset/images/family.jpeg',
      flashCards: familycard,
      name: 'family'),
  FlashCardGroup(
      descricao: 'Questions using the verb to be',
      imgUrl: 'asset/images/verbtobe.jpeg',
      flashCards: verbtobecards,
      name: 'verbtobe'),
  FlashCardGroup(
      descricao: 'Questions using "Can"',
      imgUrl: 'asset/images/qusingcan.jpeg',
      flashCards: qusingcancard,
      name: 'qusingcan'),
  FlashCardGroup(
      descricao: 'Questions using the auxiliar verb "DO"',
      imgUrl: 'asset/images/qusingdo.jpeg',
      flashCards: qusingdocard,
      name: 'qusingdo'),
  FlashCardGroup(
      descricao: 'Questions in the Past tense',
      imgUrl: 'asset/images/qusingpast.jpeg',
      flashCards: qusingpastcard,
      name: 'qusingpast'),
  FlashCardGroup(
      descricao: 'Body parts',
      imgUrl: 'asset/images/bodyparts.jpeg',
      flashCards: bodypartscard,
      name: 'bodyparts'),
  FlashCardGroup(
      descricao: 'Professions',
      imgUrl: 'asset/images/professions.png',
      flashCards: professionscard,
      name: 'professions'),
  FlashCardGroup(
    descricao: 'Animals',
    imgUrl: 'asset/images/animals.jpeg',
    flashCards: animalscard,
    name: 'animals',
  ),
  FlashCardGroup(
      descricao: 'Foods',
      imgUrl: 'asset/images/foods.jpeg',
      flashCards: foodscard,
      name: 'foods'),
  // FlashCardGroup(
  //     descricao: 'Daily life phrases',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Illness',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
  // FlashCardGroup(
  //     descricao: 'Fellings',
  //     imgUrl: 'asset/images/questions/verbtobe/qverbtobe.jpeg',
  //     flashCards: flashCards),
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
];
