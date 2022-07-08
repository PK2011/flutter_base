import 'package:flutter/material.dart';
import 'package:flutter_base/utilities/extensions/lib_extensions.dart';

class CheckBoxWithLabel extends StatefulWidget {
  const CheckBoxWithLabel(
      {Key? key, this.onChanged, required this.value, this.label = ""})
      : super(key: key);
  final ValueChanged<bool>? onChanged;
  final bool value;
  final String label;

  @override
  State<CheckBoxWithLabel> createState() => _CheckBoxWithLabelState();
}

class _CheckBoxWithLabelState extends State<CheckBoxWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            // todo: focusnode, enable disable
            value: widget.value,
            onChanged: (value) => []),
        8.width,
        Text(widget.label.inCaps)
      ],
    );
  }
}
