import 'package:get/get.dart';

import '../view/login_screen.dart';
import '../view/signup_screen.dart';
import '../view/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
    ),
    GetPage(
      name: '/signup',
      page: () => SignupScreen(),
    ),
  ];
}
