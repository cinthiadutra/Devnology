import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final String text;
  final String price;

  const CardProduct(
      {Key? key, required this.image, required this.text, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: 110,
      child: Center(
        child: Stack(
          children: [
            Image.asset(
              retangle,
            ),
            Container(
              width: 120,
              height: 135,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    scale: 1.1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextDevnology(
                        text: text,
                        size: 9,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextDevnology.bold(
                        text: price,
                        size: 11,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
