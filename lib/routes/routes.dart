import 'package:get/get.dart';
import 'package:signin_signup_widget/screens/signinScreen.dart';
import 'package:signin_signup_widget/screens/user_registerScreen.dart';

class RoutesClass {
  static String signin = "/sigin";
  static String register = "/register";

  static String SignRoute() => signin;
  static String RegisterRoute() => register;

  static List<GetPage> routes = [
    GetPage(
        name: signin,
        page: () => signinScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: register,
        page: () => userRegisterScreen(),
        transition: Transition.leftToRight,
        transitionDuration: const Duration(milliseconds: 500)),
  ];
}
