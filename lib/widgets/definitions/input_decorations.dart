import 'package:flutter/material.dart';

InputDecoration defaultInputDecoration(
    {String? hint, String? label, TextStyle? textStyle}) {
  return InputDecoration(
    labelText: label,
    hintText: hint,
    hintStyle: textStyle ?? const TextStyle(),
    labelStyle: textStyle ?? const TextStyle(),
    border: const OutlineInputBorder(),
    alignLabelWithHint: true,
  );
}