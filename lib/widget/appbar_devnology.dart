import 'package:devnology_app/thema/constantes.dart';
import 'package:devnology_app/widget/text_devnology.dart';
import 'package:flutter/material.dart';

class AppbarDevnology extends StatelessWidget implements PreferredSizeWidget {
  final bool visible1;
  final bool visible2;
  final bool backPage;
  final int? number;
  final AlignmentGeometry? aligment;

  const AppbarDevnology(
      {super.key,
      this.number,
      this.visible1 = true,
      this.backPage = false,
      this.visible2 = false,
      this.aligment});

  const AppbarDevnology.car(
      {super.key,
      this.backPage = true,
      this.visible1 = false,
      this.visible2 = true,
      required this.number,
      this.aligment});

  const AppbarDevnology.end(
      {super.key,
      this.visible1 = false,
      this.visible2 = false,
      this.backPage = true,
      this.number,
      this.aligment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: corBack,
      leading: Visibility(
          visible: backPage,
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 40,
            ),
          )),
      title: Image.asset(
        logo,
        scale: 1.5,
        alignment: aligment ?? Alignment.bottomLeft,
      ),
      actions: [
        Visibility(
          visible: visible1,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              chat,
              scale: 4,
            ),
          ),
        ),
        Visibility(
          visible: visible1,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ),
        Visibility(
          visible: visible2,
          child: IconButton(
            onPressed: () {},
            icon: Stack(alignment: Alignment.bottomRight, children: [
              const Icon(Icons.shopping_cart_outlined),
              Image.asset(
                circ1,
                scale: 5.0,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextDevnology(
                  text: '$number',
                  size: 12,
                  cor: Colors.white,
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
