
import 'package:flutter/material.dart';

import 'package:devnology_app/widget/text_devnology.dart';
import 'package:get/get.dart';

class CardCar extends StatelessWidget {
  final String image;
  final String text;
  final double price;
  final Function ontap;
  final Rx<int> number;

  const CardCar({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
    required this.ontap,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SizedBox(
        height: 200,
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                image,
                scale: 1,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Row(
                    children: [
                      IconButton(
                          onPressed: ontap(), icon: const Icon(Icons.add_circle)),
                      Text('{$number.value}'),
                      IconButton(
                        onPressed: ontap(),
                        icon: const Icon(Icons.remove_circle),
                      )
                    ],
                  )
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
