import 'package:commerce_app/view/auth/login_screen.dart';
import 'package:commerce_app/view/lang/lang_screen.dart';
import 'package:commerce_app/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = '/loginScreen';
  static const String onBoarding = '/';
  static const String language = '/languagesScreen';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (_) => const LoginScreen(),
  AppRoutes.onBoarding: (_) => const OnBoardingScreen(),
  AppRoutes.language: (_) => const LanguagesScreen(),
};
