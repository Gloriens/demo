import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/records/record_bool_item.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordCreateScreen extends ConsumerStatefulWidget {
  const RecordCreateScreen({super.key});

  @override
  ConsumerState<RecordCreateScreen> createState() => _RecordCreateScreenState();
}

class _RecordCreateScreenState extends ConsumerState<RecordCreateScreen> {
  @override
  Widget build(BuildContext context) {
    final listOfFields = ref.watch(listOfFieldsProvider);
    final listOfRoles = ref.watch(listOfRolesProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      // This is the part where we dynamically create the widgets based on fields and roles
      //of the related template.
      body: Center(
          child: Column(
        children: listOfDynamicWidgets(listOfFields, listOfRoles),
      )),
    );
  }

  //TO-DO this should be fixed.
  List<Widget> listOfDynamicWidgets(
      AsyncValue<List<Field>> fields, AsyncValue<List<Role>> roles) {
    List<Widget> widgets = [];
    fields.when(
        data: (data) {
          for (var field in data) {
            if (field.type == 'text') {
              widgets.add(TextField(
                decoration: InputDecoration(hintText: field.name),
              ));
            } else if (field.type == 'bool') {
              widgets.add(const RecordBoolItem());
            }
          }
        },
        error: ((error, stackTrace) => Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()));
    roles.when(
        data: (data) {
          for (var role in data) {
            widgets.add(Text(
              role.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ));
          }
        },
        error: ((error, stackTrace) => Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()));
    return widgets;
  }
}
