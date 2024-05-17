import 'dart:ui' as ui;

import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class RecordSignaturePad extends ConsumerStatefulWidget {
  const RecordSignaturePad(
      {super.key, required this.recordId, required this.fieldId});
  final int recordId;
  final int fieldId;

  @override
  ConsumerState<RecordSignaturePad> createState() => _RecordSignaturePadState();
}

class _RecordSignaturePadState extends ConsumerState<RecordSignaturePad> {
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
              borderRadius:
                  BorderRadius.circular(8.0), // Optional: to round the corners
            ),
            child: SizedBox(
              height: 200,
              width: 300,
              child: SfSignaturePad(
                key: _signaturePadKey,
                backgroundColor: Colors.grey[200],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: ElevatedButton(
                  child: const Text("Save as image"),
                  onPressed: () async {
                    ui.Image image = await _signaturePadKey.currentState!
                        .toImage(pixelRatio: 0.5);
                    final path =
                        'signature/${ref.read(serviceProvider).generateRandomString(6)}.png';
                    final byteData =
                        await image.toByteData(format: ui.ImageByteFormat.png);
                    final url = await ref
                        .read(serviceProvider)
                        .uploadSignature(byteData!, path);
                    RecordImage recordImage = RecordImage(
                        recordId: widget.recordId,
                        fieldId: widget.fieldId,
                        imageURL: url ?? "");
                    ref.read(serviceProvider).createRecordImage(recordImage);
                    // Save the signature as image
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
