import 'package:flutter/material.dart';
import 'package:flutter_base/utilities/extensions/lib_extensions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Click Here").onTap(() {}),
          10.height,
          const Text("Center").center(heightFactor: 200, widthFactor: double.infinity),
          10.height,
          Text(3.numberSuffix()).paddingAll(10)
        ],
      ).withScroll(reverse: false)
    );
  }
}
