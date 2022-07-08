import 'package:flutter/material.dart';
import 'package:flutter_base/widgets/definitions/box_decoration_definitions.dart';

class LayoutContainerCard extends StatelessWidget {
  const LayoutContainerCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: containerBoxDecoration(),
        child: child,
      ),
    );
  }
}
