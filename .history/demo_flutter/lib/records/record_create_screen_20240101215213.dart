import 'package:flutter/material.dart';

class RecordCreateScreen extends StatefulWidget {
  const RecordCreateScreen({super.key});

  @override
  State<RecordCreateScreen> createState() => _RecordCreateScreenState();
}

class _RecordCreateScreenState extends State<RecordCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      // This is the part where we dynamically create the widgets based on fields and roles
      //of the related template.
      body: const Center(
          child: Column(
        children: [],
      )),
    );
  }
}
