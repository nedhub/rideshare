import 'package:flutter/material.dart';
import 'package:rideshare/models/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/order.png', 'Cheap', 'Get Rides Fast'),
    OnboardingInfo('assets/deliver.jpeg', 'Fast', 'Unbeatable Prices'),
    OnboardingInfo('assets/final.jpeg', 'Efficient', 'Price matching'),
  ];
}
