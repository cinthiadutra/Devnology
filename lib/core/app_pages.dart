// ignore_for_file: non_constant_identifier_names

import 'package:devnology_app/controllers/app_binding.dart';
import 'package:devnology_app/core/app_routes.dart';
import 'package:devnology_app/screens/car_screen.dart';
import 'package:devnology_app/screens/home.dart';
import 'package:devnology_app/screens/product_details.dart';
import 'package:devnology_app/screens/splash.dart';
import 'package:devnology_app/widget/bootnnav.dart';
import 'package:get/get.dart';

import '../screens/sucess.dart';

List<GetPage> AppPages = [
  GetPage(
      name: AppRoutes.home, page: () => const Home(), binding: AppBinding()),
  GetPage(
      name: AppRoutes.splash,
      page: () => const Splash(),
      binding: AppBinding()),
  GetPage(name: AppRoutes.carPay, page: () => const CarPay(), binding: AppBinding()),
  GetPage(
      name: AppRoutes.product,
      page: () => const ProductDetails(),
      binding: AppBinding()),
  GetPage(
      name: AppRoutes.sucess,
      page: () => const Sucess(),
      binding: AppBinding()),
  GetPage(
      name: AppRoutes.nav, page: () => const Bootnnav(), binding: AppBinding()),
];

class AppPage {
  static final routes = <GetPage<dynamic>>[
    ...AppPages,
  ];
}
