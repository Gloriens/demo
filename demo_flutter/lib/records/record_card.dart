import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';

class RecordCard extends StatelessWidget {
  const RecordCard(this.record, {super.key});
  final Record record;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hi");
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                record.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
