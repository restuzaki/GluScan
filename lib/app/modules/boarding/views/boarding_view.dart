import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_sehat/app/common/data/on_boarding_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:project_sehat/app/modules/boarding/controllers/boarding_controller.dart';

class BoardingView extends GetView<BoardingController> {
  const BoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              itemCount: onboarding.length,
              itemBuilder: (context, index) {
                final item = onboarding[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        item.image,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: onboarding.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20),
                Obx(() => ElevatedButton(
                      onPressed: () {
                        if (controller.currentPage.value ==
                            onboarding.length - 1) {
                          controller.completeOnboarding();
                        } else {
                          controller.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                          controller.currentPage.value == onboarding.length - 1
                              ? "Mulai"
                              : "Lanjut"),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
