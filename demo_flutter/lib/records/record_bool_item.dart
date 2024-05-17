import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordBoolItem extends ConsumerStatefulWidget {
  final int fieldId;
  final String fieldName;
  const RecordBoolItem(
      {super.key, required this.fieldId, required this.fieldName});

  @override
  ConsumerState<RecordBoolItem> createState() => _RecordBoolItemState();
}

class _RecordBoolItemState extends ConsumerState<RecordBoolItem> {
  @override
  Widget build(BuildContext context) {
    final isChecked = ref.watch(recordBoolProvider);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 2.0, // Border width
          ),
          borderRadius:
              BorderRadius.circular(8.0), // Optional: to round the corners
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.fieldName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Checkbox(
                  checkColor: Colors.white,
                  value: isChecked[widget.fieldId] ?? false,
                  onChanged: (bool? value) {
                    ref
                        .read(recordBoolProvider.notifier)
                        .add(widget.fieldId, value!);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

final recordBoolProvider =
    StateNotifierProvider<RecordBoolNotifier, Map<int, bool>>(
        (ref) => RecordBoolNotifier());

class RecordBoolNotifier extends StateNotifier<Map<int, bool>> {
  RecordBoolNotifier() : super({});

  void add(int fieldId, bool value) {
    Map<int, bool> newRecordBool = {fieldId: value};
    state = {...state, ...newRecordBool};
  }
}
