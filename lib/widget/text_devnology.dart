import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDevnology extends StatelessWidget {
  final String text;
  final double? size;
  final Color? cor;
  final FontWeight? fontWeight;
  final TextAlign? align;
  const TextDevnology(
      {required this.text, this.size = 11, this.cor = Colors.black,this.fontWeight=FontWeight.normal ,super.key, this.align});
  const TextDevnology.bold(
      {required this.text, this.size = 11, this.cor = Colors.black, this.fontWeight=FontWeight.w700, super.key, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        color: cor,
        fontSize: size,
        fontWeight: fontWeight,
      
      )),
      textAlign: align,
    );
  }
}
