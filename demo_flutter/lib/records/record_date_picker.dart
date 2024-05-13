import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class RecordDatePicker extends ConsumerStatefulWidget {
  const RecordDatePicker({super.key, required this.fieldId});
  final int fieldId;

  @override
  ConsumerState<RecordDatePicker> createState() => _RecordDatePickerState();
}

class _RecordDatePickerState extends ConsumerState<RecordDatePicker> {
  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                lastDate: DateTime(2101));
            if (pickedDate != null) {
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              setState(() {
                dateController.text = formattedDate;
              });
              ref
                  .read(recordDatePickerProvider.notifier)
                  .add(widget.fieldId, formattedDate);
            } else {
              print("Date is not selected");
            }
          }),
    );
  }
}

final recordDatePickerProvider =
    StateNotifierProvider<RecordDatePickerNotifier, Map<int, String>>(
        (ref) => RecordDatePickerNotifier());

class RecordDatePickerNotifier extends StateNotifier<Map<int, String>> {
  RecordDatePickerNotifier() : super({});

  void add(int fieldId, String value) {
    Map<int, String> newRecordDatePicker = {fieldId: value};
    state = {...state, ...newRecordDatePicker};
  }
}
