import 'package:flutter/material.dart';

class RecordBoolItem extends StatefulWidget {
  const RecordBoolItem({super.key});

  @override
  State<RecordBoolItem> createState() => _RecordBoolItemState();
}

bool isChecked = false;

class _RecordBoolItemState extends State<RecordBoolItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          }),
    );
  }
}
