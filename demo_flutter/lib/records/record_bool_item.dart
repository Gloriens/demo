import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordBoolItem extends ConsumerStatefulWidget {
  final int fieldId;
  const RecordBoolItem({super.key, required this.fieldId});

  @override
  ConsumerState<RecordBoolItem> createState() => _RecordBoolItemState();
}

class _RecordBoolItemState extends ConsumerState<RecordBoolItem> {
  @override
  Widget build(BuildContext context) {
    final isChecked = ref.watch(recordBoolProvider);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Checkbox(
          checkColor: Colors.white,
          value: isChecked[widget.fieldId] ?? false,
          onChanged: (bool? value) {
            ref.read(recordBoolProvider.notifier).add(widget.fieldId, value!);
          }),
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
