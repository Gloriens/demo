import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';

class SelectTemplateForRecord extends StatefulWidget {
  const SelectTemplateForRecord({super.key});

  @override
  State<SelectTemplateForRecord> createState() =>
      _SelectTemplateForRecordState();
}

List<String> listOfTemplates = ["template1", "template2"];
String dropdownValue = listOfTemplates.first;

class _SelectTemplateForRecordState extends State<SelectTemplateForRecord> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select a template"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Select a template to create record:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: DropdownMenu<String>(
                initialSelection: listOfTemplates.first,
                onSelected: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries: listOfTemplates
                    .map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Ok")))),
        ],
      ),
    );
  }
}
