import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordTextField extends ConsumerStatefulWidget {
  const RecordTextField(
      {super.key, required this.fieldName, required this.fieldId});
  final String fieldName;
  final int fieldId;

  @override
  ConsumerState<RecordTextField> createState() => _RecordTextFieldState();
}

class _RecordTextFieldState extends ConsumerState<RecordTextField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 2.0, // Border width
          ),
          borderRadius:
              BorderRadius.circular(8.0), // Optional: to round the corners
        ),
        child: TextField(
          controller: controller,
          onChanged: (value) {
            ref
                .read(recordTextFieldProvider.notifier)
                .add(widget.fieldId, value);
          },
          decoration: InputDecoration(
            labelText: widget.fieldName,
            border: InputBorder.none, // Optional: remove the TextField border
          ),
        ),
      ),
    );
  }
}

final recordTextFieldProvider =
    StateNotifierProvider<RecordTextFieldNotifier, Map<int, String>>(
        (ref) => RecordTextFieldNotifier());

class RecordTextFieldNotifier extends StateNotifier<Map<int, String>> {
  RecordTextFieldNotifier() : super({});

  void add(int fieldId, String value) {
    Map<int, String> newRecordTextField = {fieldId: value};
    state = {...state, ...newRecordTextField};
  }
}
