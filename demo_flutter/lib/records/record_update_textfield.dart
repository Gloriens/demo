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
  @override
  Widget build(BuildContext context) {
    final txtfield =
        ref.watch(recordTextUpdateProvider((widget.recordId, widget.fieldId)));
    return txtfield.when(data: (data) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: TextEditingController(text: data.contentText),
          onChanged: (value) {
            ref
                .read(recordTextFieldUpdateProvider.notifier)
                .add(widget.fieldId, value);
          },
          decoration: InputDecoration(hintText: widget.fieldName),
        ),
      );
    }, error: (error, _) {
      return Text('Error: $error');
    }, loading: () {
      return const CircularProgressIndicator();
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
/*FutureBuilder(
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
        });*/
