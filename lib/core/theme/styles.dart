import 'package:doctorito/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static const TextStyle style30PrimaryColorBold = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: MyColors.primaryColor,
  );
  static TextStyle style12dGreyBold = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.grey.withOpacity(0.5));
  static TextStyle style12rGreyRegular =
      TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.5));
  static const TextStyle style16WihteBold =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
}
