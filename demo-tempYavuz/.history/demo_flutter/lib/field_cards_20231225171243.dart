import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';

class FieldCards extends StatelessWidget {
  const FieldCards(this.field, {super.key});
  final Field field;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(field.name),
          ],
        ),
      ),
    );
  }
}
