import 'package:demo_flutter/after_template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoleCreationScreen extends ConsumerStatefulWidget {
  const RoleCreationScreen({super.key});

  @override
  ConsumerState<RoleCreationScreen> createState() => _RoleCreationScreenState();
}

TextEditingController nameController = TextEditingController();
bool isDisplayed = false;
bool isEdit = false;

class _RoleCreationScreenState extends ConsumerState<RoleCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Create Role"),
      content: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text(
                "Name",
              ),
            ),
          ),
          TextField(controller: nameController),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Checkbox(
                    checkColor: Colors.white,
                    value: isDisplayed,
                    onChanged: (bool? value) {
                      setState(() {
                        isDisplayed = value!;
                      });
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: Text(
                  "Display",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Checkbox(
                    checkColor: Colors.white,
                    value: isEdit,
                    onChanged: (bool? value) {
                      setState(() {
                        isEdit = value!;
                      });
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Edit",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton.icon(
              onPressed: () {
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
