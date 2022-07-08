import 'package:flutter/material.dart';
import 'package:flutter_base/screens/my_home_page.dart';
import 'package:flutter_base/themes/theme_definitions.dart';

class MyGlobalApp extends StatelessWidget {
  const MyGlobalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: "Sample App",
      home: const MyHomePage(),
    );
  }
}
