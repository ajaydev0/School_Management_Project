import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';

import '../../HomePage/controllers/home_page_controller.dart';
import '../../HomePage/widget/UpComeingEvents.dart';
import '../controllers/all_events_controller.dart';

class AllEventsView extends GetView<AllEventsController> {
  const AllEventsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomePageController());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Kcolor.amber,
        title: const Text('All Events'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
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
        ],
      ),
    );
  }
}
