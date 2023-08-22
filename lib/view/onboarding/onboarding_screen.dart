import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_dot_list.dart';
import 'widgets/custom_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(flex: 2, child: CustomSlider()),
            CustomDotList(),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
