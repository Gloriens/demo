import 'package:customizable_counter/customizable_counter.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordUpdateCounter extends ConsumerStatefulWidget {
  const RecordUpdateCounter(
      {super.key,
      required this.fieldId,
      required this.fieldName,
      required this.recordId});
  final int fieldId;
  final String fieldName;
  final int recordId;

  @override
  ConsumerState<RecordUpdateCounter> createState() => _RecordCounterState();
}

class _RecordCounterState extends ConsumerState<RecordUpdateCounter> {
  @override
  Widget build(BuildContext context) {
    final initialCount = ref
        .watch(recordCounterFutureProvider((widget.recordId, widget.fieldId)));
    return initialCount.when(data: (data) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: CustomizableCounter(
          buttonText: widget.fieldName,
          onCountChange: (c) {
            ref
                .read(recordUpdateCounterProvider.notifier)
                .add(widget.fieldId, c.toInt());
          },
          count: data.counterValue.toDouble(),
        )),
      );
    }, error: (error, _) {
      return Text('Error: $error');
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}

final recordUpdateCounterProvider =
    StateNotifierProvider<RecordUpdateCounterNotifier, Map<int, int>>(
        (ref) => RecordUpdateCounterNotifier());

class RecordUpdateCounterNotifier extends StateNotifier<Map<int, int>> {
  RecordUpdateCounterNotifier() : super({});

  void add(int fieldId, int value) {
    Map<int, int> newRecordCounter = {fieldId: value};
    state = {...state, ...newRecordCounter};
  }
}
