import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/records/record_bool_item.dart';
import 'package:demo_flutter/records/record_signaturepad.dart';
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
        child: DynamicWidgetList(fields: listOfFields, roles: listOfRoles),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TO-DO: This is the part where we will send the data to the server.
          //For now, we will just print the data to the console for test.
          //this one is for the recordBool.
          ref.read(recordBoolProvider).forEach((key, value) {
            print('Field ID: $key, Value: $value');
          });
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

class DynamicWidgetList extends StatelessWidget {
  final AsyncValue<List<Field>> fields;
  final AsyncValue<List<Role>> roles;

  const DynamicWidgetList({
    super.key,
    required this.fields,
    required this.roles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFieldWidgets(fields),
        _buildRoleWidgets(roles),
      ],
    );
  }

  Widget _buildFieldWidgets(AsyncValue<List<Field>> fields) {
    return fields.when(
      data: (data) {
        List<Widget> widgets = [];
        for (var field in data) {
          if (field.type == 'text') {
            widgets.add(TextField(
              decoration: InputDecoration(hintText: field.name),
            ));
          } else if (field.type == 'bool') {
            widgets.add(RecordBoolItem(fieldId: field.id ?? 0));
          } else if (field.type == 'signaturepad') {
            widgets.add(const RecordSignaturePad());
          }
        }
        return Column(children: widgets);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildRoleWidgets(AsyncValue<List<Role>> roles) {
    return roles.when(
      data: (data) {
        List<Widget> widgets = [];
        for (var role in data) {
          widgets.add(
            Text(
              role.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          );
        }
        return Column(children: widgets);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}


/* List<Widget> listOfDynamicWidgets(
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
            } else if (field.type == 'signaturepad') {
              widgets.add(const RecordSignaturePad());
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
  }*/
