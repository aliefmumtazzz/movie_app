import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get screenHeight => size.height;

  double get screenWidth => size.width;
}
