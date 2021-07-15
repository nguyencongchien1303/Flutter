import 'package:flutter/material.dart';

const Color primary = Color(0xFFe0c600);
const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF000000);
const Color darkGrey = Color(0xFF6e717b);
const Color purple = Color(0xFFab67c3);
const Color blue = Color(0xFF0daff5);
const Color green = Color(0xFF5eb592);

// const Color colorsGradient = (colors: [
//   Color(0xFFfeda75),
//   Color(0xFFfa7e1e),
//   Color(0xFFd62976),
//   Color(0xFF962fbf),
//   Color(0xFF4f5bd5),
// ]);

Map<String, Color> btnColorMap = {
  "a": Color(0xFFfeda75),
  "b": Color(0xFFfa7e1e),
  "c": Color(0xFFd62976),
  "d": Color(0xFF962fbf),
  "e": Color(0xFF4f5bd5),
};

var colorsGradient = List<Map>.filled(20, btnColorMap);
