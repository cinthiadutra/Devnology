import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:devnology_app/core/app_pages.dart';
import 'package:devnology_app/core/app_routes.dart';
import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:devnology_app/widget/bootnnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final RegraController controller = Get.put(RegraController(), permanent: false);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: corBack),
            secondaryHeaderColor: corBack,
            primaryColor: corBack,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: corBack,
              unselectedIconTheme: IconThemeData(color: Colors.white),
              selectedIconTheme: IconThemeData(color: corIconSelected),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: corIconSelected,
              unselectedItemColor: Colors.white,
            )),
        debugShowCheckedModeBanner: false,
        title: 'Devnology',
        initialRoute: AppRoutes.splash,
        getPages: AppPage.routes,
        home: const SafeArea(
            child: Scaffold(appBar: AppbarDevnology(), body: Bootnnav())));
  }
}
