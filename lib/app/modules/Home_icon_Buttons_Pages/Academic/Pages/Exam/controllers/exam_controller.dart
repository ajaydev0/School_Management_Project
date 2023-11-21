import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/modules/Home_icon_Buttons_Pages/Academic/Pages/Exam/models/Exam_Model.dart';

class ExamController extends GetxController {
  // dropDownMenu() {
  //   return DropdownButton(
  //       iconSize: 50,
  //       items: [
  //         DropdownMenuItem(
  //           child: Text("Male"),
  //           value: "Male",
  //         ),
  //         DropdownMenuItem(
  //           child: Text("Female"),
  //           value: "Female",
  //         ),
  //       ],
  //       onChanged: (val) {
  //         // selected = val!;
  //       });
  // }

  RxList<ExamModel> examList = <ExamModel>[
    ExamModel(
      subjectName: "Physics",
      topic: "Newtons Lows",
      lastDate: "05-10-2023",
      time: "10.00 AM",
      onTap: () {},
    ),
    ExamModel(
      subjectName: "Chemistry",
      topic: "Define the Bohr Model",
      lastDate: "04-10-2023",
      time: "11.00 AM",
      onTap: () {},
    ),
    ExamModel(
      subjectName: "English",
      topic: "Write en Easy",
      lastDate: "05-10-2023",
      time: "10.35 PM",
      onTap: () {},
    ),
    ExamModel(
      subjectName: "Bangla",
      topic: "Write a Poem",
      lastDate: "06-10-2023",
      time: "10.55 AM",
      onTap: () {},
    ),
    ExamModel(
      subjectName: "Biology",
      topic: "Operation a frog and write the exam paragraph for Anual Exam.",
      lastDate: "07-10-2023",
      time: "11.00 AM",
      onTap: () {},
    ),
  ].obs;
}
