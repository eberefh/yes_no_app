import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 130, 38, 158);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(
          selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
          'Colors must between 0 and ${_colorTheme.length}',
        );

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorTheme[selectedColor],
        brightness: Brightness.light);
  }
}

// CLASE 5 SECCION 5
