import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordCounterItem extends ConsumerStatefulWidget {
  const RecordCounterItem(
      {super.key, required this.fieldId, required this.fieldName});
  final int fieldId;
  final String fieldName;

  @override
  ConsumerState<RecordCounterItem> createState() => _RecordCounterState();
}

class _RecordCounterState extends ConsumerState<RecordCounterItem> {
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
        child: Center(
          child: CustomizableCounter(
            buttonText: widget.fieldName,
            onCountChange: (c) {
              ref
                  .read(recordCounterProvider.notifier)
                  .add(widget.fieldId, c.toInt());
            },
          ),
        ),
      ),
    );
  }
}

final recordCounterProvider =
    StateNotifierProvider<RecordCounterNotifier, Map<int, int>>(
        (ref) => RecordCounterNotifier());

class RecordCounterNotifier extends StateNotifier<Map<int, int>> {
  RecordCounterNotifier() : super({});

  void add(int fieldId, int value) {
    Map<int, int> newRecordCounter = {fieldId: value};
    state = {...state, ...newRecordCounter};
  }
}
