import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key, required this.label, required this.hint, required this.icon})
      : super(key: key);
  String label;
  String hint;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        suffixIcon: IconButton(onPressed: () {}, icon: icon),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(label)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColor.primaryColor, width: 2.0),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
