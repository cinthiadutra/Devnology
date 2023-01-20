import 'package:devnology_app/screens/car_screen.dart';
import 'package:devnology_app/screens/home.dart';
import 'package:devnology_app/screens/product_details.dart';
import 'package:devnology_app/screens/splash.dart';
import 'package:devnology_app/screens/sucess.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int indiceAtual = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/product': (context) => const ProductDetails(),
        '/sucess': (context) => const Sucess(),
        '/carPay': (context) => const CarPay(),
      },
      home: const Scaffold(
        body: Home(),
      ),
    );
  }
}
