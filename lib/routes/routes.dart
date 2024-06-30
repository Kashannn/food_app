import 'package:food_app/view/authentication_screens/location_screen.dart';
import 'package:food_app/view/authentication_screens/uselocation_screen.dart';
import 'package:food_app/view/authentication_screens/verification_otp.dart';
import 'package:food_app/view/discovery_screen/premimum_restaurants/kfc.dart';
import 'package:food_app/view/discovery_screen/premimum_restaurants/mcdonalds.dart';
import 'package:food_app/view/discovery_screen/premimum_restaurants/pizzahut.dart';
import 'package:food_app/view/dashboard_screens/profile_screen.dart';
import 'package:get/get.dart';

import '../view/authentication_screens/login_screen.dart';
import '../view/authentication_screens/name_screen.dart';
import '../view/authentication_screens/signup_screen.dart';
import '../view/authentication_screens/splash_screen.dart';
import '../view/authentication_screens/welcome_screen.dart';
import '../view/dashboard_screens/dashboard.dart';
import '../view/dashboard_screens/discovery_screen.dart';
import '../view/discovery_screen/Groceries_Screen/Alcampo_dashboard.dart';
import '../view/discovery_screen/Groceries_Screen/premimum_groceries.dart';
import '../view/discovery_screen/premimum_restaurants/premimum_restaurants.dart';
import '../view/discovery_screen/premimum_restaurants/subway.dart';

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
    GetPage(
      name: '/Dashboard',
      page: () => const Dashboard(),
    ),
    GetPage(
      name: '/Profile',
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: '/Discovery',
      page: () => const DiscoveryScreen(),
    ),
    GetPage(
      name: '/PremimumRestaurants',
      page: () => const PremimumRestaurants(),
    ),
    GetPage(
      name: '/Kfc',
      page: () => const Kfc(),
    ),
    GetPage(
      name: '/PizzaHut',
      page: () => const Pizzahut(),
    ),
    GetPage(
      name: '/McDonalds',
      page: () => const Mcdonalds(),
    ),
    GetPage(
      name: '/Subway',
      page: () => const Subway(),
    ),
    GetPage(
      name: '/PremimumGroceries',
      page: () => const PremimumGroceries(),
    ),
    GetPage(
      name: '/AlcampoDashboard',
      page: () => const AlcampoDashboard(),
    ),


  ];
}
