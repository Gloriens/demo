import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';

class RoleCardPermission extends StatefulWidget {
  const RoleCardPermission(this.role, {Key? key}) : super(key: key);
  final Role role;

  @override
  _RoleCardPermissionState createState() => _RoleCardPermissionState();
}

class _RoleCardPermissionState extends State<RoleCardPermission> {
  bool rwChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: rwChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      rwChecked = value!;
                    });
                  },
                ),
                Text(
                  widget.role.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

