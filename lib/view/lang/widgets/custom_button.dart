import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomLoginButton extends StatelessWidget {
  String text;
  void Function()? onPressed;

  CustomLoginButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          foregroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 10),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onPressed,
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white)),
    );
  }
}
