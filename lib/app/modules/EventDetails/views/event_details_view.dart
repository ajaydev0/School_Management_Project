import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';

import '../controllers/event_details_controller.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Kcolor.amber,
          title: Text(data.title),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              data.url == null
                  ? Container()
                  : Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(data.url))),
                    ),
              Text(
                "We are Celebrate ${data.title} in our School. It's very important for every Student So That's Why All Student Must be Attend This Fuction.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Date : ${data.bar} ${data.date}",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Time : ${data.time}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
