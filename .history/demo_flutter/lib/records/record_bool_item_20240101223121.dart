import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordBoolItem extends ConsumerStatefulWidget {
  const RecordBoolItem({super.key});

  @override
  ConsumerState<RecordBoolItem> createState() => _RecordBoolItemState();
}

bool isChecked = false;

class _RecordBoolItemState extends ConsumerState<RecordBoolItem> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
