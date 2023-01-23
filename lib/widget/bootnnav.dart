import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:devnology_app/screens/car_screen.dart';
import 'package:devnology_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bootnnav extends StatefulWidget {
  const Bootnnav({Key? key}) : super(key: key);

  @override
  State<Bootnnav> createState() => _BootnnavState();
}

class _BootnnavState extends State<Bootnnav> {
  final RegraController controller =
      Get.put(RegraController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.indiceAtual.value,
          children: const [Home(), Home(),  CarPay(), Home()],
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 15,
          currentIndex: controller.indiceAtual.value,
          onTap: (index) {
            controller.onTabTapped(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined),
                label: 'Home',
                backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
                backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'More',
                backgroundColor: Color.fromRGBO(46, 55, 70, 1))
          ]),
    );
  }
}

// buildBottomNavigationMenu(context, RegraController controller, int index) {
//   return Obx(
//     () => SizedBox(
//       child: BottomNavigationBar(
//           iconSize: 15,
//           currentIndex: controller.indiceAtual.value,
//           unselectedIconTheme: const IconThemeData(color: Colors.white),
//           selectedIconTheme: const IconThemeData(color: corIconSelected),
//           showSelectedLabels: true,
//           showUnselectedLabels: true,
//           selectedItemColor: corIconSelected,
//           unselectedItemColor: Colors.white,
//           onTap: (index) {
//             controller.onTabTapped(index);
//           },
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.house_outlined),
//                 label: 'Home',
//                 backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.search),
//                 label: 'Search',
//                 backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_cart),
//                 label: 'Cart',
//                 backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: 'Profile',
//                 backgroundColor: Color.fromRGBO(46, 55, 70, 1)),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.menu),
//                 label: 'More',
//                 backgroundColor: Color.fromRGBO(46, 55, 70, 1))
//           ]),
//     ),
//   );
// }
