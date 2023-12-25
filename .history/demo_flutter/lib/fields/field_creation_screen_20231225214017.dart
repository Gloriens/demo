import 'package:demo_flutter/after_template_screen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldCreationScreen extends ConsumerStatefulWidget {
  const FieldCreationScreen({super.key});

  @override
  ConsumerState<FieldCreationScreen> createState() =>
      _FieldCreationScreenState();
}

Map<String, int> map = {'text': 1, 'bool': 2};
String dropdownValue = map.keys.first;

class _FieldCreationScreenState extends ConsumerState<FieldCreationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return AlertDialog(
      title: const Text("Create Field"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Field Creating
          const Text("Create Field"),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text(
              "Name",
            ),
          ),
          TextField(controller: nameController
              //There is an issue here. If we enter the name first, after that when we choose the type,
              //it deletes what we wrote on the name Textfield.
              ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text(
              "Type",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: DropdownMenu(
                initialSelection: map.keys.toList().first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries: map.keys
                    .toList()
                    .map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry(value: value, label: value);
                }).toList()),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton.icon(
              onPressed: () {
                ref.read(serviceProvider).createField(context,
                    type: dropdownValue, name: nameController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AfterTemplateScreen()));
              },
              icon: const Icon(Icons.save),
              label: const Text('Save'),
            ),
          )
        ],
      ),
    );
  }
}
