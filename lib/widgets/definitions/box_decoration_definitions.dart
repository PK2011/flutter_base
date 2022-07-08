import 'package:flutter_base/themes/colors.dart';
import 'package:flutter_base/themes/theme_constants.dart';
import 'package:flutter/material.dart';

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor ?? Colors.white,
    boxShadow: showShadow
        ? [
            BoxShadow(
              color: appShadowColor,
              blurRadius: defaultBlurRadius,
              spreadRadius: defaultSpreadRadius,
              offset: const Offset(0, 1),
            )
          ]
        : [const BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

BoxDecoration containerBoxDecoration({Color bgColor = Colors.white}) {
  return BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.05), width: 1),
      borderRadius:
          const BorderRadius.all(Radius.circular(appContainerBorderRadius)),
      color: const Color(0xffffffff),
      boxShadow: [
        BoxShadow(
            color: appContainerShadowColor,
            spreadRadius: 0,
            blurRadius: 24,
            offset: const Offset(0, 13))
      ]);
}

BoxDecoration primaryButtonBoxDecoration() {
  return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(appButtonBorderRadius)),
      gradient: LinearGradient(
        colors: [appPrimaryButtonColor, appPrimaryButtonGradientColor],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ));
}

BoxDecoration secondaryButtonBoxDecoration() {
  return BoxDecoration(
      borderRadius:
          const BorderRadius.all(Radius.circular(appButtonBorderRadius)),
      boxShadow: [
        BoxShadow(
            color: appSecondaryButtonShadowColor,
            spreadRadius: 1.18,
            blurStyle: BlurStyle.inner)
      ],
      gradient: const LinearGradient(
        colors: [appSecondaryButtonColor, appSecondaryButtonGradientColor],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ));
}

BoxDecoration outlineButtonBoxDecoration() {
  return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(appButtonBorderRadius)),
      color: appWhite,
      border: Border.all(color: appPrimaryColor, width: 1)
  );
}

