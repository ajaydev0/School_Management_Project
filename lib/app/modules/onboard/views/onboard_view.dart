import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';
import 'package:school_management_app/app/router/app_pages.dart';
import '../controllers/onboard_controller.dart';
import '../model/onBoardModel.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardController());
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${controller.selectedIndex.value + 1}",
                    style: TextStyle(
                        color: Kcolor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/${onBoardList.length}',
                    style: TextStyle(color: Kcolor.black, fontSize: 15),
                  )
                ],
              ),
            ),
            actions: [
              controller.selectedIndex.value == 2
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10),
                      child: TextButton(
                          onPressed: () {
                            controller.pageController.animateToPage(2,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Kcolor.black),
                          )),
                    ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 530,
                child: PageView.builder(
                  onPageChanged: (value) {
                    controller.selectedIndex.value = value;
                  },
                  itemCount: onBoardList.length,
                  controller: controller.pageController,
                  itemBuilder: (context, index) {
                    var data = onBoardList[index];
                    return Column(
                      children: [
                        Container(
                          height: 380,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(data.imageUrl))),
                        ),
                        Text(
                          data.title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 15),
                            child: Text(data.description)),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 2, right: 2),
                          child: AnimatedContainer(
                            height: 15,
                            width: controller.selectedIndex.value == index
                                ? 30
                                : 15,
                            duration: const Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                                color: Kcolor.amber,
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(children: [
                              Center(
                                child: AnimatedContainer(
                                  height: 8,
                                  width: controller.selectedIndex.value == index
                                      ? 23
                                      : 8,
                                  duration: const Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                      color: Kcolor.black.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Center(
                                child: AnimatedContainer(
                                  height: 5,
                                  width: controller.selectedIndex.value == index
                                      ? 20
                                      : 5,
                                  duration: const Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                      color: Kcolor.amber,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ]),
                          ),
                        )),
              ),
              const SizedBox(height: 30),
              controller.selectedIndex.value == 2
                  ? SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Kcolor.amber,
                              foregroundColor: Kcolor.black),
                          onPressed: () {
                            Get.toNamed(Routes.selectUserPage);
                          },
                          child: const Text("Get Started",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16))))
                  : SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Kcolor.amber,
                              foregroundColor: Kcolor.black),
                          onPressed: () {
                            controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                          },
                          child: const Text("Next",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)))),
            ],
          )),
    );
  }
}
