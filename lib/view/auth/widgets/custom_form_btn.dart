import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class CustomFormButton extends StatelessWidget {
  CustomFormButton({Key? key, this.onPressed}) : super(key: key);
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 10,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: AppColor.primaryColor),
          onPressed: onPressed,
          child: Text(
            'Continue'.tr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
