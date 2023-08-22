import 'package:commerce_app/localization/change-local.dart';
import 'package:commerce_app/view/lang/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagesScreen extends GetView<LocalController> {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose Languages :'.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomLoginButton(
                text: "Arabic".tr,
                onPressed: () {
                  controller.changeToAr();
                }),
            const SizedBox(
              height: 15,
            ),
            CustomLoginButton(
              text: "English".tr,
              onPressed: () {
                controller.changeToEn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
