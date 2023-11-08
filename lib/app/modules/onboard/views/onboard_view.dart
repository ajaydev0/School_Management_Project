import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
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
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "${controller.selectedIndex.value + 1}/3",
                style: const TextStyle(color: Colors.black),
              ),
            ),
            actions: [
              controller.selectedIndex.value == 2
                  ? Container()
                  : TextButton(
                      onPressed: () {
                        controller.pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(color: Colors.black),
                      )),
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
                        Padding(
                            padding: const EdgeInsets.only(left: 1, right: 1),
                            child: Image.asset(data.imageUrl)),
                        Text(
                          data.title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 20),
                          child: Text(data.description),
                        ),
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
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )),
              ),

              // Obx(
              //   () => SizedBox(
              //     height: 20,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Indigator(
              //             color: Colors.blue,
              //             width: controller.selectedIndex.value == 0 ? 20 : 10),
              //         const SizedBox(width: 5),
              //         Indigator(
              //             color: Colors.blue,
              //             width: controller.selectedIndex.value == 1 ? 20 : 10),
              //         const SizedBox(width: 5),
              //         Indigator(
              //             color: Colors.blue,
              //             width: controller.selectedIndex.value == 2 ? 20 : 10),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(height: 30),
              controller.selectedIndex.value == 2
                  ? SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: Colors.blue.withOpacity(.8),
                          ),
                          onPressed: () {
                            print("Go to Sign In Page");
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          )))
                  : SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: Colors.blue.withOpacity(.8),
                          ),
                          onPressed: () {
                            controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ))),
            ],
          )),
    );
  }
}
