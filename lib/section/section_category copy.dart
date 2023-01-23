// ignore_for_file: file_names

import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/circle.dart';
import 'package:devnology_app/widget/title_devnology.dart';
import 'package:flutter/material.dart';

class SectionCategory1 extends StatelessWidget {
  const SectionCategory1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 20, top: 25),
      child: SizedBox(
        height: 150,
        width: 600,
        child: Column(
          children: [
            const TitleDevnology(
              text: "Categories",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Circle(
                  img: circ1,
                  circle: imgCat1,
                  text: 'Apparel',
                ),
                const SizedBox(
                  width: 10,
                ),
                Circle(
                  img: circ2,
                  circle: imgCat2,
                  text: 'Beauty',
                ),
                const SizedBox(
                  width: 3,
                ),
                Circle(
                  img: circ3,
                  circle: imgCat3,
                  text: 'Shoes',
                ),
                const SizedBox(
                  width: 3,
                ),
                Circle(
                  img: circ4,
                  circle: seta,
                  text: 'See All',
                ),
                const SizedBox(
                  width: 3,
                ),
                // CircleImageView(
                //   imagePath: imgCat2,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // CircleImageView(
                //   imagePath: imgCat3,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // CircleImageView(
                //   imagePath: seta,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
