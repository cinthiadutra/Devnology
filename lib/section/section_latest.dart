import 'package:devnology_app/widget/caroucel_devnology.dart';
import 'package:devnology_app/widget/title_devnology.dart';
import 'package:flutter/material.dart';

class SectionLatest extends StatelessWidget {
  const SectionLatest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 10, bottom: 10, top: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        TitleDevnology(
          text: 'Lastest',
        ),
        SizedBox(
          height: 20,
        ),
        CaroucelDevnology(),
      ]),
    );
  }
}
