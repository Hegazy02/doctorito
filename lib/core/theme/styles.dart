import 'package:doctorito/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle style32PrimaryColorBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: MyColors.primaryColor,
  );
  static TextStyle style24PrimaryColorBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: MyColors.primaryColor,
  );
  static TextStyle style12dGreyBold = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
      color: Colors.grey.withOpacity(0.5));
  static TextStyle style12rGreyRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.grey.withOpacity(0.5),
  );
  static TextStyle style14rGreyRegular = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey.withOpacity(0.5),
  );
  static TextStyle style16WihteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
