import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBody extends StatelessWidget {
  const CustomTextBody({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Text(
        text.tr,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
