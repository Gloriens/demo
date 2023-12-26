import 'package:flutter/material.dart';

class RoleCreationScreen extends StatefulWidget {
  const RoleCreationScreen({super.key});

  @override
  State<RoleCreationScreen> createState() => _RoleCreationScreenState();
}

TextEditingController nameController = TextEditingController();
bool isDisplayed = false;
bool isEdit = false;

class _RoleCreationScreenState extends State<RoleCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Create Role"),
      content: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text(
              "Name",
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
              const Text(
                "Display",
                style: TextStyle(fontSize: 25),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
