import 'package:flutter/material.dart';

// Network Image Placeholder
Function(BuildContext, String) placeholderWidgetFn() => (_, s) => placeholderWidget();

Widget placeholderWidget() => Image.asset('images/path/a.jpg', fit: BoxFit.cover);
