import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/fields/field_cards.dart';

class FieldCardsList extends StatelessWidget {
  const FieldCardsList({super.key, required this.fields});

  final List<Field> fields;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: fields.length,
            itemBuilder: (context, index) => FieldCards(fields[index])),
      ),
    );
  }
}
