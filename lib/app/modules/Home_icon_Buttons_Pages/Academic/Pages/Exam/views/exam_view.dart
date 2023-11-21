import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../const/colors.dart';
import '../controllers/exam_controller.dart';

class ExamView extends GetView<ExamController> {
  const ExamView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Kcolor.amber,
          title: const Text("Exam"),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              color: Colors.white,
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              onSelected: (value) {
                if (value == "Create MCQ") {
                  print("Create MCQ");
                } else if (value == "Create Written") {
                  print("Create Written");
                } else if (value == "Create Forum") {
                  print("Create Forum");
                } else if (value == "Create Viva") {
                  print("Create Viva");
                } else if (value == "Create Test") {
                  print("Create Test");
                }
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: "Create MCQ",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create MCQ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: "Create Written",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create Written",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: "Create Forum",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create Forum",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: "Create Viva",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create Viva",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: "Create Test",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create Test",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ];
              },
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            Expanded(
                child: ListView.builder(
              itemCount: controller.examList.length,
              itemBuilder: (context, index) {
                var data = controller.examList[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: data.onTap,
                      child: Container(
                        height: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Subject : ${data.subjectName}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      data.time,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "Topic : ${data.topic}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "Last Date : ${data.lastDate}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )),
          ],
        ));
  }
}
