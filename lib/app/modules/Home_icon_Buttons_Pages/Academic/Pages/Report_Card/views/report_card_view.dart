import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../const/colors.dart';
import '../controllers/report_card_controller.dart';

class ReportCardView extends GetView<ReportCardController> {
  const ReportCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kcolor.amber,
        title: const Text('ReportCardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReportCardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
