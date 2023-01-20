import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/appbar_devnology.dart';
import 'package:devnology_app/widget/button_devnology.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:devnology_app/widget/title_devnology.dart';
import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  const Sucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarDevnology.end(),
      body: ListView(
        padding: const EdgeInsets.all(25),
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 121,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(circleSucess),
              Image.asset(arrowOk),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Align(
              alignment: Alignment.center,
              child: TitleDevnology(text: '              Order Placed!')),
          const SizedBox(
            height: 26,
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextDevnology(
                text:
                    'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                size: 14,
                align: TextAlign.justify,
              ),
            ),
          ),
          const SizedBox(
            height: 93,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 110),
            child: ButtonDevnology(text: 'MY ORDERS'),
          )
        ],
      ),
    );
  }
}
