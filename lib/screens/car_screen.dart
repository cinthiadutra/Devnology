import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:devnology_app/core/app_routes.dart';
import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:devnology_app/widget/button_devnology.dart';
import 'package:devnology_app/widget/card_car.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:devnology_app/widget/title_devnology.dart';

class CarPay extends StatefulWidget {
  const CarPay({
    Key? key,
  }) : super(key: key);

  @override
  State<CarPay> createState() => _CarPayState();
}

class _CarPayState extends State<CarPay> {
  final RegraController controller =
      Get.put(RegraController(), permanent: false);
  Rx<int> num1 = Rx(0);
  Rx<int> num2 = Rx(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const AppbarDevnology(),
          body: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 30, bottom: 20),
                  child: TitleDevnology(text: 'Cart'),
                ),
                CardCar(
                  image: foto1,
                  price: 1519.99,
                  text:
                      'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB',
                  ontap: controller.remove1,
                  number: num1.value.obs,
                ),
                CardCar(
                    image: foto2,
                    price: 717.18,
                    text:
                        'Lenovo - IdeaPad L340 15 Gaming Laptop - Intel Core i5 - 8GB Memory - NVIDIA GeForce GTX 1650 - 256GB Solid State',
                    ontap: controller.add1,
                    number: num1.value.obs),
                const SizedBox(
                  height: 110,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      color: corContainer,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 25),
                                  child: TextDevnology(
                                    text: 'Total',
                                    size: 16,
                                    cor: Colors.white,
                                  ),
                                ),
                                TextDevnology.bold(
                                  text: '\$${controller.pricetotal.obs}',
                                  size: 24,
                                  cor: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                            ButtonDevnology(
                              text: 'CHECKOUT',
                              onPressed: () {
                                Get.toNamed(
                                  AppRoutes.sucess,
                                );
                              },
                            )
                          ],
                        ),
                      )),
                )
              ],
            );
          })
          // bottomNavigationBar: buildBottomNavigationMenu(context, controller, 2),
          ),
    );
  }
}
