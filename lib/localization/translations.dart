import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'Choose Languages :': 'اختر اللغة :',
          'Arabic': 'العربية',
          'English': 'الانجليزية',
          'ok': 'حسنا',
          'DialogTitle': 'اللغة العربية هي اللغة الحالية',
          'DialogBody': 'اختر اللغة الأخرى',
          'Welcome Back': 'مرحبًا بعودتك',
          'Sign In': 'تسجيل الدخول',
          'Sign Text':
              'قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو وسائل التواصل الاجتماعي',
          'Remember Me': 'تذكرنى',
          'Forgot Password?': 'هل نسيت كلمة السر',
          'Continue': 'استمر'
        },
        'en': {
          'Choose Languages :': 'Choose Languages :',
          'Arabic': 'Arabic',
          'English': 'English',
          'ok': 'OK',
          'DialogTitle': 'English is the current Language',
          'DialogBody': 'Choose the other Language',
          'Welcome Back': 'Welcome Back',
          'Sign In': 'Sign In',
          'Sign Text':
              'Sign In With Your Email And Password OR Continue With Social Media',
          'Remember Me': 'Remember Me',
          'Forgot Password?': 'Forgot Password?',
          'Continue': 'Continue'
        }
      };
}
