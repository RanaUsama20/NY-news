import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightColor = Color(0xff39A552);
  static Color greyColor = Color(0xff808080);
  static Color redColor = Color(0xffC91C22);
  static Color darkBlueColor = Color(0xff003E90);
  static Color pinkColor = Color(0xffED1E79);
  static Color brownColor = Color(0xffCF7E48);
  static Color blueColor = Color(0xff4882CF);
  static Color yellowColor = Color(0xffF2D352);
  static Color blackColor = Color(0xff303030);
  static Color whiteColor = Colors.white;


  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLightColor,
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
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
        titleMedium: TextStyle(
            color: greyColor,
            fontSize: 16,
            fontWeight: FontWeight.w400
        ),
        titleSmall: TextStyle(
            color: greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w400
        ),
      )
  );
}