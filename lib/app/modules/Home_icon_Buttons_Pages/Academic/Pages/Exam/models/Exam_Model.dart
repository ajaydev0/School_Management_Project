class ExamModel {
  String subjectName;
  String topic;
  String lastDate;
  String time;
  void Function()? onTap;

  ExamModel(
      {required this.subjectName,
      required this.topic,
      required this.lastDate,
      required this.time,
      required this.onTap});
}
