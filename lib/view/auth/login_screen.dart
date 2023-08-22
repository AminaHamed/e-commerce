import 'package:commerce_app/core/constant/app_images.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import 'widgets/custom_appBar.dart';
import 'widgets/custom_form_btn.dart';
import 'widgets/custom_row.dart';
import 'widgets/custom_textBody.dart';
import 'widgets/custom_textFormField.dart';
import 'widgets/custom_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'Sign In',
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImageAssets.logo,
                width: 100,
                height: 100,
              ),
              const CustomTitle(text: 'Welcome Back'),
              const CustomTextBody(text: 'Sign Text'),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                label: 'Email',
                hint: 'Enter Your Mail',
                icon: const Icon(Icons.mail_outline),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                label: 'Password',
                hint: 'Enter Your Password',
                icon: const Icon(Icons.lock_outline),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomRow(),
              const SizedBox(
                height: 10,
              ),
              CustomFormButton(onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const InkWell(
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
