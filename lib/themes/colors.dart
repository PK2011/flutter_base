import 'package:flutter/material.dart';

// Light Theme Colors
const appPrimaryColor = Colors.blue;
const appSecondaryColor = Colors.blueAccent;

const appTextColorPrimary = Color(0xFF212121);
const appTextColorSecondary = Color(0xFF5A5C5E);

const iconColorPrimary = appPrimaryColor;
const iconColorSecondary = appSecondaryColor;

const appLayoutBackground = Colors.white60;
const appWhite = Color(0xFFFFFFFF);
const appShadowColor = Color(0xFF000000);
const appColorPrimaryLight = Color(0xFFF9FAFF);
const appSecondaryBackgroundColor = Color(0xFF131d25);
const appLineColor = Color(0Xffc4c4c4);
const appDividerColor = Color(0xFFDADADA);

const appPrimaryButtonColor = appPrimaryColor;
const appPrimaryButtonGradientColor = appSecondaryColor;
const appSecondaryButtonColor = Color(0xffF4F4F4);
const appSecondaryButtonGradientColor = Color(0xffF9F9F9);

final appHoverColor = appPrimaryColor.withOpacity(0.07);
final appContainerShadowColor = appShadowColor.withOpacity(0.08);
final appSecondaryButtonShadowColor = const Color(0Xffc4c4c4).withOpacity(0.13);

// Primary as Material Color
const Map<int, Color> primaryMatColorDefs = {
  50: Color.fromRGBO(0, 150, 214, .1),
  100: Color.fromRGBO(0, 150, 214, .2),
  200: Color.fromRGBO(0, 150, 214, .3),
  300: Color.fromRGBO(0, 150, 214, .4),
  400: Color.fromRGBO(0, 150, 214, .5),
  500: Color.fromRGBO(0, 150, 214, .6),
  600: Color.fromRGBO(0, 150, 214, .7),
  700: Color.fromRGBO(0, 150, 214, .8),
  800: Color.fromRGBO(0, 150, 214, .9),
  900: Color.fromRGBO(0, 150, 214, 1),
};

MaterialColor primaryMatColor = const MaterialColor(900, primaryMatColorDefs);





