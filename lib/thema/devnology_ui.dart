import 'package:devnology_app/thema/constantes.dart';
import 'package:flutter/material.dart';

class DevnologyUi {
  DevnologyUi._();

  static final ThemeData theme = ThemeData(
    primaryColor: corBack,
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   selectedIconTheme: IconThemeData(color: Colors.black),
    //  selectedItemColor: corIconSelected,
    //   selectedLabelStyle: textBold,
//      //   unselectedItemColor: corIcon,
  );
  static const TextStyle textBold = TextStyle(fontWeight: FontWeight.bold);
}
