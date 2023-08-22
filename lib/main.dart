import 'package:commerce_app/core/constant/app_theme.dart';
import 'package:commerce_app/localization/change-local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/app_routes.dart';
import 'localization/translations.dart';
import 'services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  LocalController localController = Get.put(LocalController());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Commerce',
      theme: AppTheme.myTheme,
      routes: routes,
      initialRoute: AppRoutes.login,
      locale: localController.language,
      translations: AppTranslation(),
    );
  }
}
