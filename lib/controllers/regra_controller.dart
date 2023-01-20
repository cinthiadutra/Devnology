import 'package:devnology_app/widget/text_devnology.dart';
import 'package:flutter/material.dart';

class RegraController extends StatefulWidget {
  const RegraController({Key? key}) : super(key: key);

  @override
  State<RegraController> createState() => _RegraControllerState();
}

class _RegraControllerState extends State<RegraController> {
  String image = '';
  final double _price = 0.0;
  double _pricetotal = 0.0;
  String? text = '';

  int number = 0;

  void add() {
    setState(() {
      number++;
    });
  }

  void remove() {
    setState(() {
      number--;
    });
  }

  double priceUnit() {
    setState(() {
      _pricetotal = 0;
      _pricetotal = number * _price;
    });
    return _pricetotal;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            child: const Icon(Icons.remove_circle),
            onTap: () {
              remove();
            }),
        const SizedBox(
          width: 10,
        ),
        TextDevnology.bold(
          text: '$number',
          size: 14,
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          child: const Icon(Icons.add_circle_sharp),
          onTap: () {
            add();
          },
        ),
      ],
    );
  }
}
