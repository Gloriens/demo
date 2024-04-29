import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/records/record_card.dart';
import 'package:flutter/material.dart';

class RecordCardList extends StatelessWidget {
  const RecordCardList({super.key, required this.records});

  final List<Record> records;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: records.length,
          itemBuilder: (context, index) => RecordCard(records[index])),
    );
  }
}
