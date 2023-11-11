import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';
import 'package:school_management_app/app/router/app_pages.dart';

import '../controllers/select_user_page_controller.dart';

class SelectUserPageView extends GetView<SelectUserPageController> {
  const SelectUserPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logo.png"))),
          ),
          const SizedBox(height: 10),
          const Text(
            "Select User",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.signInPage, arguments: false);
                },
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        color: Kcolor.amber,
                        image: const DecorationImage(
                            image: AssetImage("assets/student.png"))),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                  height: 100,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/arrow.png")))),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.signInPage, arguments: true);
                },
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        color: Kcolor.amber,
                        image: const DecorationImage(
                            image: AssetImage("assets/teacher.png"))),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Student",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(width: 30),
              Text(
                "Teacher",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
