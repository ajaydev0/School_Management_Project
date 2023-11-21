import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/colors.dart';
import '../controllers/academic_controller.dart';

class AcademicView extends GetView<AcademicController> {
  const AcademicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Kcolor.amber,
          title: const Text("Academic"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            Expanded(
                child: ListView.builder(
              itemCount: controller.acadecicList.length,
              itemBuilder: (context, index) {
                var data = controller.acadecicList[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: data.ontap,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    data.icon,
                                    size: 35,
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    data.name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.grey[600],
                              )
                            ],
                          ),
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
