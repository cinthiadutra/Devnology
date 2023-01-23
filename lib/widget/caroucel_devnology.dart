import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/circular_card.dart';
import 'package:get/get.dart';

class CaroucelDevnology extends StatefulWidget {
  const CaroucelDevnology({
    Key? key,
  }) : super(key: key);

  const CaroucelDevnology.m({
    Key? key,
  }) : super(key: key);

  @override
  State<CaroucelDevnology> createState() => _CaroucelDevnologyState();
}

class _CaroucelDevnologyState extends State<CaroucelDevnology> {
  final int _current = 0;
  final CarouselController _controller = CarouselController();
  Rx<List<String>> exampleList = Rx<List<String>>([banner1, banner2]);

  List<String> exampleList2 = [note2];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              viewportFraction: 0.94,
              enableInfiniteScroll: false,
              autoPlayCurve: Curves.linear,
              onPageChanged: (index, reason) {
                // setState(() {
                //   _current = index;
                // })
              },
            ),
            items: exampleList.value.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CircleImageView(imagePath: i, width: Get.width);
                },
              );
            }).toList(),
          );
        }),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: exampleList.value.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.previousPage(),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
