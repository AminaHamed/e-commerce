import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Back'.tr,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30),
    );
  }
}
