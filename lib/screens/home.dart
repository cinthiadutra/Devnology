import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:devnology_app/section/section_category%20copy.dart';
import 'package:devnology_app/section/section_latest.dart';
import 'package:devnology_app/section/section_product.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

final RegraController controller = Get.put(RegraController(), permanent: false);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppbarDevnology(),
        body: Container(
            height: Get.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(81, 92, 111, 0)
                ])),
            child: SingleChildScrollView(
              child: Column(children: const [
                SectionCategory1(),
                SectionLatest(),
                SectionProduct(),
              ]),
            )),
      ),
    );
  }
}
