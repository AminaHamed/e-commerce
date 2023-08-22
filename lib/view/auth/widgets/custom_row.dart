import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (bool? val) {}),
        Text('Remember Me'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?'.tr,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ))
      ],
    );
  }
}
