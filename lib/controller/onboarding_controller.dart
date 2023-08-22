import 'package:commerce_app/core/constant/app_routes.dart';
import 'package:commerce_app/model/dataSource/onboarding_datasource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();

  onPageChanged(int i);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;

  @override
  next() {
    currentPage++;
    if (currentPage >= onBoardingList.length) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int i) {
    currentPage = i;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
