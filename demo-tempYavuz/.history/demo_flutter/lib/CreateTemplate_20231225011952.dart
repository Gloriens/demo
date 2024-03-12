import 'package:demo_flutter/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class CreateTemplatePage extends StatefulWidget {
  const CreateTemplatePage({super.key});

  @override
  State<CreateTemplatePage> createState() => _CreateTemplatePageState();
}

Map<String, int> map = {'text': 1};
String dropdownValue = map.keys.first;

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController typelController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 45),
          child: Column(
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
                  //Backend Part
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
                        print(map[dropdownValue]);
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
                    // Add your save logic here
                    // For demonstration purposes, it prints a message to the console.
                    print('Save button pressed!');
                  },
                  icon: const Icon(Icons.save), // Add the save icon
                  label: const Text('Save'),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
