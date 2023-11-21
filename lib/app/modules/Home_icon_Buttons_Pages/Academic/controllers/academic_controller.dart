import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/modules/Home_icon_Buttons_Pages/Academic/models/Academic_Model.dart';
import 'package:school_management_app/app/router/app_pages.dart';

class AcademicController extends GetxController {
  List<AcademicModel> acadecicList = <AcademicModel>[
    AcademicModel(
      icon: Icons.edit_square,
      name: "Exam",
      ontap: () {
        Get.toNamed(Routes.EXAM);
      },
    ),
    AcademicModel(
      icon: Icons.add_home_work,
      name: "Homework",
      ontap: () {
        Get.toNamed(Routes.HOME_WORK);
      },
    ),
    AcademicModel(
      icon: Icons.assessment,
      name: "Assignment",
      ontap: () {
        Get.toNamed(Routes.ASSIGNMENT);
      },
    ),
    AcademicModel(
      icon: Icons.report,
      name: "Report Card",
      ontap: () {
        Get.toNamed(Routes.REPORT_CARD);
      },
    )
  ];
}
