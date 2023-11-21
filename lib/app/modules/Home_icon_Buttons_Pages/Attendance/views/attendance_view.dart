import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/modules/Home_icon_Buttons_Pages/Attendance/model/Attendance_Model.dart';

import '../../../../const/colors.dart';
import '../controllers/attendance_controller.dart';
import '../widget/student_Attend_List.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Kcolor.amber,
          title: const Text('Teacher Attendance'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
            const SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
          child: Container(
            height: Get.height / 100 * 83,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
                  child: Obx(
                    () => SizedBox(
                      height: 55,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Obx(
                            () => Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              width: 124,
                              decoration: BoxDecoration(
                                  color: Kcolor.amber,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.classDropText.value,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  DropdownButton(
                                    iconEnabledColor: Colors.black,
                                    underline: Container(),
                                    items: const [
                                      DropdownMenuItem(
                                        value: "One",
                                        child: Text("One"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Two",
                                        child: Text("Two"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Three",
                                        child: Text("Three"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Four",
                                        child: Text("Four"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Five",
                                        child: Text("Five"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Six",
                                        child: Text("Six"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Seven",
                                        child: Text("Seven"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Eight",
                                        child: Text("Eight"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Nine",
                                        child: Text("Nine"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Ten",
                                        child: Text("Ten"),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      controller.classDropDownOnTap(value);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Obx(
                            () => Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              width: 124,
                              decoration: BoxDecoration(
                                  color: Kcolor.amber,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.sectionDropText.value,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  DropdownButton(
                                    iconEnabledColor: Colors.black,
                                    underline: Container(),
                                    items: const [
                                      DropdownMenuItem(
                                        value: "A",
                                        child: Text("A"),
                                      ),
                                      DropdownMenuItem(
                                        value: "B",
                                        child: Text("B"),
                                      ),
                                      DropdownMenuItem(
                                        value: "C",
                                        child: Text("C"),
                                      ),
                                      DropdownMenuItem(
                                        value: "D",
                                        child: Text("D"),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      controller.sectionDropDownOnTap(value);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          controller.groupBool.value
                              ? Obx(
                                  () => Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 5),
                                      width: 190,
                                      decoration: BoxDecoration(
                                          color: Kcolor.amber,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            controller.groupDropText.value,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          DropdownButton(
                                            iconEnabledColor: Colors.black,
                                            underline: Container(),
                                            items: const [
                                              DropdownMenuItem(
                                                value: "Science",
                                                child: Text("Science"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Commerce",
                                                child: Text("Commerce"),
                                              ),
                                              DropdownMenuItem(
                                                value: "Arts",
                                                child: Text("Arts"),
                                              ),
                                            ],
                                            onChanged: (value) {
                                              controller
                                                  .groupDropDownOnTap(value);
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            width: 95,
                            decoration: BoxDecoration(
                                color: Kcolor.amber,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "20-02-2023",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.only(left: 20, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Roll No.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Present",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Checkbox(
                              activeColor: Colors.black,
                              value: controller.isAll.value,
                              onChanged: (value) {
                                controller.allPresent(value!);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Obx(
                  () => Expanded(
                      child: ListView.builder(
                    itemCount: controller.studentAttendList.length,
                    itemBuilder: (context, index) {
                      var data = controller.studentAttendList[index];
                      return StudentAttendList(
                        rollNo: data.rollNo,
                        name: data.name,
                        isPresent: data.isPresent,
                        onChanged: (value) {
                          controller.present(index: index, present: value!);
                        },
                      );
                    },
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
