import 'package:devnology_app/controllers/regra_controller.dart';
import 'package:flutter/material.dart';

import 'package:devnology_app/widget/text_devnology.dart';

class CardCar extends StatelessWidget {
  final String image;
  final String text;
  final double price;

  const CardCar({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              scale: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  TextDevnology(text: text),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextDevnology.bold(
                      text: '$price',
                      size: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RegraController()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

const int numberCar = 0;
