import 'dart:ui' as ui;

import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class RecordSignaturepadUpdate extends ConsumerStatefulWidget {
  const RecordSignaturepadUpdate(
      {super.key, required this.recordId, required this.fieldId});
  final int recordId;
  final int fieldId;
  @override
  ConsumerState<RecordSignaturepadUpdate> createState() =>
      _RecordSignaturepadUpdateState();
}

class _RecordSignaturepadUpdateState
    extends ConsumerState<RecordSignaturepadUpdate> {
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final imageProv =
        ref.watch(recordImageProvider((widget.recordId, widget.fieldId)));
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: SfSignaturePad(
              key: _signaturePadKey,
              backgroundColor: Colors.grey[200],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
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
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: ElevatedButton(
                  onPressed: () async {
                    ui.Image image = await _signaturePadKey.currentState!
                        .toImage(pixelRatio: 1);
                    final path =
                        'signature/${ref.read(serviceProvider).generateRandomString(6)}.png';
                    final byteData =
                        await image.toByteData(format: ui.ImageByteFormat.png);
                    final url = await ref
                        .read(serviceProvider)
                        .uploadSignature(byteData!, path);
                    RecordImage recordImage = await ref
                        .read(serviceProvider)
                        .getRecordImage(widget.recordId, widget.fieldId);
                    recordImage.imageURL = url ?? "";
                    ref.read(serviceProvider).updateRecordImage(recordImage);
                  },
                  child: const Text("Update Signature"),
                ),
              ),
            ],
          ),
          imageProv.when(data: (data) {
            return Image.network(data.imageURL);
          }, loading: () {
            return const CircularProgressIndicator();
          }, error: (error, _) {
            return Text("Error: $error");
          }),
        ],
      ),
    );
  }
}
