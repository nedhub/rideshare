import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rideshare/controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  // const OnboardingPage({Key? key}) : super(key: key);

  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          PageView.builder(
              onPageChanged: controller.selectedPageIndex,
              itemCount: controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.onboardingPages[index].imageAsset),
                    SizedBox(height: 32),
                    Text(controller.onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: Text(controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ));
              }),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                controller.onboardingPages.length,
                (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: controller.selectedPageIndex.value == index
                          ? Colors.black
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              // color: Colors.black,
              elevation: 0,
              onPressed: () {},
              child: Text('Next'),
            ),
          )
        ],
      ),
    ));
  }
}
