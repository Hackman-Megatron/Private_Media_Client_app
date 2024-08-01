import 'package:flutter/material.dart';


class ColorsProvider{
  static const primaryColor1 = Color.fromRGBO(224,170,108,1.000);
  static const primaryColor2 =Color.fromRGBO(  221,194,165,1.000);
  static const primaryColor3 =Color.fromRGBO(135,62,35,1.000);

  static const secondaryColor1 = Color.fromRGBO(30,30,32,1.000);
  static Color secondaryColor2=Colors.grey.shade300;

  static const whiteColor =Color(0xFFFFFFFF);
  static const black =Color(0xFF1d1617);
  static const gray =Color(0xff7b6f72);
  static const lightGray = Color(0xFFf7f8f8);

  static List<Color> get primaryGradient =>[primaryColor3,primaryColor1];
  static List<Color> get secondaryGradient =>[secondaryColor1,secondaryColor2];


}