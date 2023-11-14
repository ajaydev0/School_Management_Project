import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';
import 'package:school_management_app/app/router/app_pages.dart';

import '../../NavPage/widget/ExitBox.dart';
import '../controllers/home_page_controller.dart';
import '../widget/HomeIocnBox.dart';
import '../widget/UpComeingEvents.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return WillPopScope(
        onWillPop: () {
          Exit_DialogBox(context);
          return Future.value(false);
        },
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeIconBox(
                        icon: Icons.school,
                        label: "Academic",
                        onTap: () {
                          print("Academic");
                        },
                      ),
                      HomeIconBox(
                        icon: Icons.calendar_month,
                        label: "Attendance",
                        onTap: () {
                          print("Attendance");
                        },
                      ),
                      HomeIconBox(
                        icon: Icons.car_crash,
                        label: "Transport",
                        onTap: () {
                          print("Transport");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeIconBox(
                        icon: Icons.home,
                        label: "Library",
                        onTap: () {
                          print("Library");
                        },
                      ),
                      HomeIconBox(
                        icon: Icons.logout,
                        label: "Leave",
                        onTap: () {
                          print("logout");
                        },
                      ),
                      HomeIconBox(
                        icon: Icons.calendar_month,
                        label: "Time Table",
                        onTap: () {
                          print("Time Table");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 480,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Kcolor.amber),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Upcoming Events",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.toNamed(Routes.ALL_EVENTS,
                                        arguments:
                                            controller.upcomingEventsList);
                                  },
                                  child: Text(
                                    "See All",
                                    style: TextStyle(color: Kcolor.black),
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.upcomingEventsList.length,
                            itemBuilder: (context, index) {
                              var data = controller.upcomingEventsList[index];
                              return Events(data: data);
                            },
                          ),
                        ),
                        const SizedBox(height: 70),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
