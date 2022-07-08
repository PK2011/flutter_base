import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/app.dart';
import 'package:flutter_base/themes/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setStatusBarAndNavBarColor();
  runApp(const MyGlobalApp());
}

setStatusBarAndNavBarColor() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: true,
      systemNavigationBarColor: appWhite,
      systemNavigationBarDividerColor: appWhite,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: appPrimaryColor));
}
