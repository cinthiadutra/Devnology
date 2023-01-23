import 'package:devnology_app/core/app_routes.dart';
import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/card_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionProduct extends StatelessWidget {
  const SectionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(right: 25, left: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CardProduct(
                image: note1,
                text: 'Lenovo - IdeaPad L340 15 Gaming',
                price: '\$ 717,80'),
            InkWell(
              child: const CardProduct(
                  image: note2,
                  text: 'Lenovo 15.6" ThinkPad P15s Gen 1',
                  price: '\$ 1,519.00'),
              onTap: () {
                Get.toNamed(AppRoutes.product);
              },
            ),
            const CardProduct(
                image: note3,
                text: 'Notebook Lenovo 2 em 1',
                price: '\$ 4,699.00')
          ],
        ),
      ),
    );
  }
}
