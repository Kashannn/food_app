import 'package:food_app/view/authentication_screens/location_screen.dart';
import 'package:food_app/view/authentication_screens/uselocation_screen.dart';
import 'package:food_app/view/authentication_screens/verification_otp.dart';
import 'package:get/get.dart';

import '../view/authentication_screens/login_screen.dart';
import '../view/authentication_screens/name_screen.dart';
import '../view/authentication_screens/signup_screen.dart';
import '../view/authentication_screens/splash_screen.dart';
import '../view/authentication_screens/welcome_screen.dart';

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
    GetPage(
      name: '/NameScreen',
      page: () =>  const NameScreen(),
    ),
    GetPage(
      name: '/LocationScreen',
      page: () =>  const LocationScreen(),
    ),
    GetPage(
      name: '/WelcomeScreen',
      page: () =>  const WelcomeScreen(),
    ),
    GetPage(
      name: '/UseLocationScreen',
      page: () =>  const UseLocationScreen(),
    ),
  ];
}
