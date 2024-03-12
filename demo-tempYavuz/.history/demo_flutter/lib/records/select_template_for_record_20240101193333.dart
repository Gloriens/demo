import 'package:flutter/material.dart';

class SelectTemplateForRecord extends StatefulWidget {
  const SelectTemplateForRecord({super.key});

  @override
  State<SelectTemplateForRecord> createState() =>
      _SelectTemplateForRecordState();
}

class _SelectTemplateForRecordState extends State<SelectTemplateForRecord> {
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Select a template"),
      content: Column(
        children: [
          Row(
            children: [
              Text("Select a template to create record:"),
              Text("Combobox")
            ],
          )
        ],
      ),
    );
  }
}
