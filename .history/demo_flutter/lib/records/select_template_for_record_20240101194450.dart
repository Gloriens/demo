import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';

class SelectTemplateForRecord extends StatefulWidget {
  const SelectTemplateForRecord({super.key});

  @override
  State<SelectTemplateForRecord> createState() =>
      _SelectTemplateForRecordState();
}

List<String> listOfTemplates = ["template1"];
String dropdownValue = listOfTemplates.first;

class _SelectTemplateForRecordState extends State<SelectTemplateForRecord> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select a template"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Select a template to create record:"),
          DropdownMenu<String>(
            initialSelection: listOfTemplates.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries:
                listOfTemplates.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          )
        ],
      ),
    );
  }
}
