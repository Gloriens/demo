import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class RecordSignaturePad extends StatefulWidget {
  const RecordSignaturePad({super.key});

  @override
  State<RecordSignaturePad> createState() => _RecordSignaturePadState();
}

class _RecordSignaturePadState extends State<RecordSignaturePad> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 200,
        width: 300,
        child: SfSignaturePad(
          backgroundColor: Colors.grey[200],
        ),
      ),
    );
  }
}
