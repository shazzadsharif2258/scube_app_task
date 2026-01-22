import 'package:get/get.dart';
import 'package:scube_app_task/features/auth/controller/login_controller.dart';
import 'package:scube_app_task/features/auth/controller/splash_controller.dart';
import 'package:scube_app_task/features/auth/view/login_screen.dart';
import 'package:scube_app_task/features/auth/view/splash_screen.dart';
import 'package:scube_app_task/features/home/controller/home_controller.dart';
import 'package:scube_app_task/features/home/view/home_screen.dart';
import 'package:scube_app_task/features/second_page/view/second_screen.dart';

import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: BindingsBuilder(() {
        Get.put(LoginController());
      }),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),
    GetPage(
      name: AppRoutes.secondPage,
      page: () => const SecondScreen(),
    ),
  ];
}
