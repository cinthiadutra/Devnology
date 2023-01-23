import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/circular_card.dart';

class CaroucelProduct extends StatefulWidget {
  const CaroucelProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<CaroucelProduct> createState() => _CaroucelProductState();
}

class _CaroucelProductState extends State<CaroucelProduct> {
  final int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> exampleList = [noteLarge, retangle, noteLarge];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.6,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              // setState(() {
              //   _current = index;
              // })
            },
          ),
          items: exampleList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CircleImageView(
                    imagePath: i, width: MediaQuery.of(context).size.width);
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: exampleList.asMap().entries.map((entry) {
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
