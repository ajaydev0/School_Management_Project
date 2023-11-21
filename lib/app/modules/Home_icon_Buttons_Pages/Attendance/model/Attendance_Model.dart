class StudentModel {
  String rollNo;
  String name;
  bool isPresent;
  void Function(bool?)? onChanged;

  StudentModel(
      {required this.rollNo,
      required this.name,
      this.isPresent = false,
      this.onChanged});
}
