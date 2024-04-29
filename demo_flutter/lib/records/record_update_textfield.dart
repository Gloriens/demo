import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordUpdateTextfield extends ConsumerStatefulWidget {
  const RecordUpdateTextfield(
      {super.key,
      required this.fieldId,
      required this.recordId,
      required this.fieldName});
  final int fieldId;
  final int recordId;
  final String fieldName;
  @override
  ConsumerState<RecordUpdateTextfield> createState() =>
      _RecordUpdateTextfieldState();
}

class _RecordUpdateTextfieldState extends ConsumerState<RecordUpdateTextfield> {
  late Future<RecordText> _recordTextFuture;

  @override
  void initState() {
    super.initState();
    _recordTextFuture = ref
        .read(serviceProvider)
        .getRecordTextField(widget.recordId, widget.fieldId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _recordTextFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            TextEditingController controller =
                TextEditingController(text: snapshot.data!.contentText);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                onChanged: (value) {
                  ref
                      .read(recordTextFieldUpdateProvider.notifier)
                      .add(widget.fieldId, value);
                },
                decoration: InputDecoration(hintText: widget.fieldName),
              ),
            );
          }
        });
  }
}

final recordTextFieldUpdateProvider =
    StateNotifierProvider<RecordTextFieldUpdateNotifier, Map<int, String>>(
        (ref) => RecordTextFieldUpdateNotifier());

class RecordTextFieldUpdateNotifier extends StateNotifier<Map<int, String>> {
  RecordTextFieldUpdateNotifier() : super({});

  void add(int fieldId, String value) {
    Map<int, String> newRecordTextField = {fieldId: value};
    state = {...state, ...newRecordTextField};
  }
}
