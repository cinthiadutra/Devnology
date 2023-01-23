import 'package:devnology_app/core/app_routes.dart';
import 'package:devnology_app/screens/car_screen.dart';
import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:devnology_app/widget/button_devnology.dart';
import 'package:devnology_app/widget/carroucel_foto.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const AppbarDevnology.car(
            number: 2,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextDevnology(
                  text:
                      'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)',
                  size: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CaroucelProduct(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextDevnology.bold(
                    text: 'Price',
                    size: 15,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextDevnology.bold(
                    text: '\$ 1,519.99',
                    size: 26,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextDevnology.bold(
                    text: 'About this item:',
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextDevnology(
                    text:
                        '1.8 GHz Intel Core i7-10510U Quad-Core Processor \n16GB of DDR4 RAM | 512GB SSD \n15.6" 1920 x 1080 IPS Display \nNVIDIA Quadro P520 \nWindows 10 Pro 64-Bit Edition \n1.8 GHz Intel Core i7-10510U Quad-Core Processor \n16GB of DDR4 RAM | 512GB SSD \n15.6" 1920 x 1080 IPS Display \nNVIDIA Quadro P520',
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    color: corContainer,
                    height: Get.height * .118,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ButtonDevnology.white(text: 'SHARE THIS'),
                          ButtonDevnology(
                            text: 'ADD TO CART',
                            onPressed: () {
                              PersistentNavBarNavigator
                                  .pushNewScreenWithRouteSettings(context,
                                      screen:  const CarPay(),
                                      withNavBar: true,
                                      settings: const RouteSettings(
                                          name: AppRoutes.carPay));
                            },
                          )
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
