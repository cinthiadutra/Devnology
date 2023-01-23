import 'package:devnology_app/thema/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleDevnology extends StatelessWidget {
  final String text;
  const TitleDevnology({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: GoogleFonts.roboto(
            textStyle: const TextStyle(
          color: corBack,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        )),
      ),
    );
  }
}
