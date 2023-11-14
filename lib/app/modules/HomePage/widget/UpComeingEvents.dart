import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/router/app_pages.dart';

class Events extends StatelessWidget {
  const Events({
    super.key,
    required this.data,
  });
  final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.EVENT_DETAILS, arguments: data);
            },
            child: Container(
              height: 60,
              width: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.bar,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.date,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 2),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.EVENT_DETAILS, arguments: data);
            },
            child: Container(
              height: 60,
              width: 240,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.history,
                          color: Colors.grey,
                          size: 15,
                        ),
                        Text(
                          " ${data.time}",
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
