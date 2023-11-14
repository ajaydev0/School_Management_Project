import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';

import '../controllers/nav_page_controller.dart';
import '../widget/logOutBox.dart';

class NavPageView extends GetView<NavPageController> {
  const NavPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    color: Kcolor.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 15),
                        CircleAvatar(
                            radius: 50,
                            backgroundColor: Kcolor.black,
                            child: CircleAvatar(
                              radius: 45,
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
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Designation: Instructor",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              "ID: 766574",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text("Profile"),
                    leading: const Icon(Icons.person),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Attendance"),
                    leading: const Icon(Icons.calendar_month),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Payment History"),
                    leading: const Icon(Icons.history),
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Kcolor.amber,
                        foregroundColor: Kcolor.black,
                        shape: const LinearBorder()),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return logOutBox(context);
                        },
                      );
                    },
                    child: const Text("LogOut")),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: const Text('AppBar'),
        centerTitle: true,
        actions: [
          Stack(children: [
            IconButton(
                onPressed: () {
                  controller.selectIndex.value = 2;
                },
                icon: Icon(
                  Icons.notifications,
                  size: 26,
                  color: Kcolor.black,
                )),
            Positioned(
              top: 8,
              right: 12,
              child: Container(
                  alignment: Alignment.center,
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Kcolor.amber,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "10",
                    style: TextStyle(color: Kcolor.white, fontSize: 8),
                  )),
            ),
          ]),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Obx(() => controller.pages[controller.selectIndex.value]),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton(
          foregroundColor: Kcolor.black,
          backgroundColor: Kcolor.amber,
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomAppBar(
            height: 62,
            color: Colors.grey[100],
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  splashColor: Kcolor.black.withOpacity(.1),
                  onTap: () {
                    controller.selectIndex.value = 0;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          controller.selectIndex.value == 0
                              ? Icons.home
                              : Icons.home_outlined,
                          color: controller.selectIndex.value == 0
                              ? Kcolor.black
                              : Colors.grey[600],
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: controller.selectIndex.value == 0
                                ? FontWeight.bold
                                : null,
                            fontSize:
                                controller.selectIndex.value == 0 ? 10 : 9.5,
                            color: controller.selectIndex.value == 0
                                ? Kcolor.black
                                : Colors.grey[600],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 80),
                InkWell(
                  splashColor: Kcolor.black.withOpacity(.1),
                  onTap: () {
                    controller.selectIndex.value = 1;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          controller.selectIndex.value == 1
                              ? Icons.person
                              : Icons.person_outlined,
                          color: controller.selectIndex.value == 1
                              ? Kcolor.black
                              : Colors.grey[600],
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontWeight: controller.selectIndex.value == 1
                                ? FontWeight.bold
                                : null,
                            fontSize:
                                controller.selectIndex.value == 1 ? 10 : 9.5,
                            color: controller.selectIndex.value == 1
                                ? Kcolor.black
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
