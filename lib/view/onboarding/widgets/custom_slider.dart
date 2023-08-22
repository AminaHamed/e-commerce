import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../model/dataSource/onboarding_datasource.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (i) {
        controller.onPageChanged(i);
      },
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              onBoardingList[index].title,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                onBoardingList[index].image,
                fit: BoxFit.fill,
                height: 250,
                width: double.infinity,
              ),
            ),
            Container(
              child: Text(
                onBoardingList[index].body,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      itemCount: onBoardingList.length,
    );
  }
}
