import 'package:flutter/material.dart';

class RoleCreationScreen extends StatefulWidget {
  const RoleCreationScreen({super.key});

  @override
  State<RoleCreationScreen> createState() => _RoleCreationScreenState();
}

class _RoleCreationScreenState extends State<RoleCreationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    bool isDisplayed = false;
    bool isEdit = false;
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Checkbox(
                    checkColor: Colors.black,
                    value: isDisplayed,
                    onChanged: (bool? value) {
                      setState(() {
                        isDisplayed = value!;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Checkbox(
                    checkColor: Colors.black,
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
