// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:devnology_app/widget/text_devnology.dart';

class Circle extends StatelessWidget {
  String img;
  String circle;
  String text;
  Circle({
    Key? key,
    required this.img,
    required this.circle,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            Image.asset(
              img,
              scale: 0.9,
              fit: BoxFit.contain,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                circle,
                scale: 1,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        TextDevnology(
          text: text,
          size: 15,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}
