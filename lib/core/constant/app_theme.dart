import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static final ThemeData myTheme = ThemeData(
      fontFamily: 'PlayfairDisplay',
      textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
              color: AppColor.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.5)),
      scaffoldBackgroundColor: Colors.white);
}
