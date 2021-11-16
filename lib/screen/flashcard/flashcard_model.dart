class FlashCardModel {
  String transCricao;
  List<String> translation;
  String imgUrl;
  String audioUrl;
  String groupName;

  FlashCardModel(
      {required this.transCricao,
      required this.translation,
      required this.imgUrl,
      required this.audioUrl,
      required this.groupName});
}
