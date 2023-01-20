import 'package:devnology_app/screens/car_screen.dart';
import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarDevnology(),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(81, 92, 111, 0)
              ])),
          child: Column(children: [
            IndexedStack(
              sizing: StackFit.expand,
              index: indiceAtual,
              // ignore: prefer_const_literals_to_create_immutables
              children: [const Home(), const CarPay()],
            ),
          ])),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 15,
          backgroundColor: corBack,
          currentIndex: indiceAtual,
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          selectedIconTheme: const IconThemeData(color: corIconSelected),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: corIconSelected,
          unselectedItemColor: corBack,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      indiceAtual = index;
    });
  }
}
