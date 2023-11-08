class OnBoardDataModel {
  String? imageUrl;
  String? title;
  String? description;

  OnBoardDataModel({this.imageUrl, this.title, this.description});
}

List onBoardList = [
  OnBoardDataModel(
      imageUrl: "animation/photo1.jpg",
      title: "Welcome !",
      description:
          "Welcome to our School Management App. Our App is very Userfriendly.Hope u like it."),
  OnBoardDataModel(
      imageUrl: "animation/photo2.jpg",
      title: "Work Hard",
      description:
          "Our mission is to foster equity improvements in learning and enrichment for young people, and in the arts for everyone.​"),
  OnBoardDataModel(
      imageUrl: "animation/photo3.jpg",
      title: "Success",
      description:
          "Our mission is to foster equity improvements in learning and enrichment for young people, and in the arts for everyone.​ "),
];
