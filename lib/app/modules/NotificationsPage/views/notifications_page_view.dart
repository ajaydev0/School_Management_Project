import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';

import '../../NavPage/widget/ExitBox.dart';
import '../controllers/notifications_page_controller.dart';

class NotificationsPageView extends GetView<NotificationsPageController> {
  const NotificationsPageView({Key? key}) : super(key: key);
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
                Expanded(
                  child: ListView.separated(
                    itemCount: 9,
                    separatorBuilder: (context, index) {
                      return index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Material(
                                elevation: 3,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[200]),
                                  child: const Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.circle,
                                        size: 18,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          "Notification for your Online School Management Application Payment Issue .",
                                          softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.red),
                                        ),
                                      ),
                                      Text(
                                        "04.55PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox();
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[200]),
                            child: const Row(
                              children: [
                                SizedBox(width: 20),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "Notification for your Online School Management Application Payment Issue .",
                                    softWrap: false,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Text(
                                  "04.55PM",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )));
  }
}
