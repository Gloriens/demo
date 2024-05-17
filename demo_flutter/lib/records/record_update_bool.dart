import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordUpdateBool extends ConsumerStatefulWidget {
  const RecordUpdateBool(
      {super.key,
      required this.fieldId,
      required this.fieldName,
      required this.recordId});
  final int fieldId;
  final String fieldName;
  final int recordId;

  @override
  ConsumerState<RecordUpdateBool> createState() => _RecordUpdateBoolState();
}

class _RecordUpdateBoolState extends ConsumerState<RecordUpdateBool> {
  late Future<RecordBool> _recordBoolFuture;

  @override
  void initState() {
    super.initState();
    _recordBoolFuture = ref
        .read(serviceProvider)
        .getRecordBool(widget.recordId, widget.fieldId);
  }

  @override
  Widget build(BuildContext context) {
    final isChecked = ref.watch(recordBoolUpdateProvider);
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
            FutureBuilder(
              future: _recordBoolFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked[widget.fieldId] ??
                          snapshot.data!.contentBool,
                      onChanged: (bool? value) {
                        ref
                            .read(recordBoolUpdateProvider.notifier)
                            .add(widget.fieldId, value!);
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

final recordBoolUpdateProvider =
    StateNotifierProvider<RecordBoolUpdateNotifier, Map<int, bool>>(
        (ref) => RecordBoolUpdateNotifier());

class RecordBoolUpdateNotifier extends StateNotifier<Map<int, bool>> {
  RecordBoolUpdateNotifier() : super({});

  void add(int fieldId, bool value) {
    Map<int, bool> newRecordBool = {fieldId: value};
    state = {...state, ...newRecordBool};
  }
}
