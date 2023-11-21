import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../const/colors.dart';
import '../controllers/home_work_controller.dart';

class HomeWorkView extends GetView<HomeWorkController> {
  const HomeWorkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kcolor.amber,
        title: const Text("HomeWorkView"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeWorkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
