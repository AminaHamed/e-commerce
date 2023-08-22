import 'package:commerce_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  AppServices appServices = Get.find();
  late Locale language;

  changLang(String langeCode) {
    appServices.sharedPreferences.setString('lang', langeCode);
    Locale locale = Locale(langeCode);
    Get.updateLocale(locale);
  }

  showLangDialog() {
    Get.defaultDialog(
        title: 'DialogTitle'.tr,
        middleText: 'DialogBody'.tr,
        onConfirm: () {
          Get.back(canPop: false);
        },
        textConfirm: 'ok'.tr);
  }

  changeToAr() {
    if (language.languageCode == 'ar') {
      showLangDialog();
    } else {
      changLang('ar');
      language = const Locale('ar');
    }
  }

  changeToEn() {
    if (language.languageCode == 'en') {
      showLangDialog();
    } else {
      changLang('en');
      language = const Locale('en');
    }
  }

  @override
  void onInit() {
    String? appLangCode = appServices.sharedPreferences.getString('lang');
    if (appLangCode == 'ar') {
      language = const Locale('ar');
    } else if (appLangCode == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
