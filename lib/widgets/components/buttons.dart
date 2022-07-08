import 'package:flutter/material.dart';
import 'package:flutter_base/themes/colors.dart';
import 'package:flutter_base/widgets/definitions/box_decoration_definitions.dart';
import 'package:flutter_base/utilities/extensions/lib_extensions.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton(
      {Key? key,
      required this.label,
      required this.onButtonTap,
      this.isSecondaryButton = false,
      this.isButtonEnabled = true})
      : super(key: key);
  final String label;
  final Function onButtonTap;
  final bool isSecondaryButton;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: !isSecondaryButton
          ? primaryButtonBoxDecoration()
          : secondaryButtonBoxDecoration(),
      child: Text(
        label,
        style: TextStyle(
            color: !isSecondaryButton ? Colors.white : appPrimaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16),
      ).center(),
    ).withHeight(48).withWidth(136).onTap(onButtonTap);
  }
}

class AppWidgetButton extends StatelessWidget {
  const AppWidgetButton(
      {Key? key,
      required this.child,
      required this.onButtonTap,
      required this.isSecondaryButton,
      required this.isButtonEnabled})
      : super(key: key);
  final Widget child;
  final Function onButtonTap;
  final bool isSecondaryButton;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(minHeight: 48, maxHeight: 48, minWidth: 136),
      child: Container(
        decoration: !isSecondaryButton
            ? primaryButtonBoxDecoration()
            : secondaryButtonBoxDecoration(),
        child: child.center(),
      ).onTap(onButtonTap),
    );
  }
}
