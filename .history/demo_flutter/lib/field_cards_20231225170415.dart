import 'package:flutter/material.dart';

class FieldCards extends StatelessWidget {
  const FieldCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text("Role as cards"),
          ],
        ),
      ),
    );
  }
}
