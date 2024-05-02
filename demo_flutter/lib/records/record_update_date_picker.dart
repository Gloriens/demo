import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class RecordUpdateDatePicker extends ConsumerStatefulWidget {
  const RecordUpdateDatePicker(
      {super.key, required this.fieldId, required this.recordId});
  final int fieldId;
  final int recordId;

  @override
  ConsumerState<RecordUpdateDatePicker> createState() =>
      _RecordDatePickerState();
}

class _RecordDatePickerState extends ConsumerState<RecordUpdateDatePicker> {
  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final initialDate =
        ref.watch(recordDateProvider((widget.recordId, widget.fieldId)));
    return initialDate.when(data: (data) {
      dateController.text = data.contentDate;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            controller: dateController,
            decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), labelText: "Enter Date"),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                setState(() {
                  dateController.text = formattedDate;
                });
                ref
                    .read(recordUpdateDatePickerProvider.notifier)
                    .add(widget.fieldId, formattedDate);
              } else {
                print("Date is not selected");
              }
            }),
      );
    }, error: (error, _) {
      return Text('Error: $error');
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}

final recordUpdateDatePickerProvider =
    StateNotifierProvider<RecordUpdateDatePickerNotifier, Map<int, String>>(
        (ref) => RecordUpdateDatePickerNotifier());

class RecordUpdateDatePickerNotifier extends StateNotifier<Map<int, String>> {
  RecordUpdateDatePickerNotifier() : super({});

  void add(int fieldId, String value) {
    Map<int, String> newRecordDatePicker = {fieldId: value};
    state = {...state, ...newRecordDatePicker};
  }
}
