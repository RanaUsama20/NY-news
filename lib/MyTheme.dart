import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
  static Color greyColor = Color(0xff808080);
  static Color brownColor = Color(0xffCF7E48);
  static Color blackColor = Color(0xff303030);
  static Color creamColor = Color(0xFFE8E2D9);
  static Color whiteColor = Color(0xFFF8F6F6);




  static ThemeData lightTheme = ThemeData(
      primaryColor: brownColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: whiteColor,
            fontSize: 20,
          ),
          backgroundColor: brownColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
              )
          )
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: blackColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
        titleMedium: TextStyle(
            color: greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w400
        ),
        titleSmall: TextStyle(
            color: greyColor,
            fontSize: 12,
            fontWeight: FontWeight.w400
        ),
      )
  );
}