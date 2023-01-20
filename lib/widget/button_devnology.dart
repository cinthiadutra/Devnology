//height: 40px;
//width: 140px;
//left: 450px;
//top: 655px;
//border-radius: 30px;

import 'dart:async';

import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:flutter/material.dart';

class ButtonDevnology extends StatelessWidget {
  final String text;
  final Color backgroundButton;
  final Color? textColor;
  final FutureOr<void> Function()? onPressed;
  final IconData? icon;
  final String image;

  const ButtonDevnology({
    Key? key,
    this.backgroundButton = corBack,
    this.textColor = Colors.white,
    this.onPressed,
    this.icon,
    required this.text,
    this.image = arrowRight,
  }) : super(key: key);

  const ButtonDevnology.white({
    Key? key,
    required this.text,
    this.backgroundButton = Colors.white,
    this.textColor = corBack,
    this.onPressed,
    this.icon,
    this.image = arrowUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            maximumSize: const MaterialStatePropertyAll<Size?>(Size(140, 40)),
            backgroundColor: MaterialStatePropertyAll<Color>(backgroundButton),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            side: const MaterialStatePropertyAll<BorderSide>(
                BorderSide(color: corBack, width: 1))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextDevnology(
              text: text,
              size: 12,
              cor: textColor,
              fontWeight: FontWeight.w900,
            ),
            Image.asset(image)
          ],
        ));
  }
}
