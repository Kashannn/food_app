import 'package:food_app/view/verification_otp.dart';
import 'package:get/get.dart';

import '../view/login_screen.dart';
import '../view/signup_screen.dart';
import '../view/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/login',
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: '/signup',
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: '/VerificationOTP',
      page: () =>  const VerificationOTP(),
    ),
  ];
}
