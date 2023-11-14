import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../const/colors.dart';
import '../../NavPage/widget/ExitBox.dart';
import '../controllers/profile_page_controller.dart';
import '../widget/StudentDetails.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Exit_DialogBox(context);
          return Future.value(false);
        },
        child: Scaffold(
            backgroundColor: Kcolor.white,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 15),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Kcolor.amber),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 15),
                        CircleAvatar(
                            radius: 40,
                            backgroundColor: Kcolor.black,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Kcolor.black,
                              backgroundImage:
                                  const AssetImage("assets/student.png"),
                            )),
                        const SizedBox(width: 15),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ajay Nath",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Designation: Instructor",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "ID: 766574",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 15),
                  child: Container(
                    height: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Kcolor.amber),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          "Student Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 5, top: 5),
                          child: Divider(
                            thickness: 1,
                            color: Kcolor.black,
                          ),
                        ),
                        StudentDetails(
                          title: "Date Of Birth",
                          descript: "30-09-2002",
                          icon: Icons.calendar_month,
                        ),
                        StudentDetails(
                          title: "Gender",
                          descript: "Male",
                          icon: Icons.people_outlined,
                        ),
                        StudentDetails(
                          title: "Blood Group",
                          descript: "(AB+)",
                          icon: Icons.bloodtype_outlined,
                        ),
                        StudentDetails(
                          title: "Address",
                          descript: "Feni",
                          icon: Icons.place_outlined,
                        ),
                        StudentDetails(
                          title: "Class",
                          descript: "6th",
                          icon: Icons.school,
                        ),
                        StudentDetails(
                          title: "Roll",
                          descript: "05",
                          icon: Icons.numbers,
                        ),
                        StudentDetails(
                          title: "Group",
                          descript: "Science",
                          icon: Icons.science,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
