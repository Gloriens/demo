import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/records/record_bool_item.dart';
import 'package:demo_flutter/records/record_role_dropdown.dart';
import 'package:demo_flutter/records/record_signaturepad.dart';
import 'package:demo_flutter/records/record_textfield.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordUpdateScreen extends ConsumerStatefulWidget {
  const RecordUpdateScreen({super.key, required this.record});
  final Record record;
  @override
  ConsumerState<RecordUpdateScreen> createState() => _RecordUpdateScreenState();
}

class _RecordUpdateScreenState extends ConsumerState<RecordUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    final fields = ref.watch(fieldsProvider(widget.record.templateId));
    final roles = ref.watch(roleProvider(widget.record.templateId));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: DynamicWidgetUpdateList(fields: fields, roles: roles),
      ),
    );
  }
}

class DynamicWidgetUpdateList extends StatelessWidget {
  final AsyncValue<List<Field>> fields;
  final AsyncValue<List<Role>> roles;

  const DynamicWidgetUpdateList({
    super.key,
    required this.fields,
    required this.roles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFieldWidgets(fields),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildRoleWidgets(roles),
        ),
      ],
    );
  }

  Widget _buildFieldWidgets(AsyncValue<List<Field>> fields) {
    return fields.when(
      data: (data) {
        List<Widget> widgets = [];
        for (var field in data) {
          if (field.type == 'text') {
            widgets.add(
              RecordTextField(
                fieldName: field.name,
                fieldId: field.id ?? 0,
              ),
            );
          } else if (field.type == 'bool') {
            widgets.add(
              RecordBoolItem(fieldId: field.id ?? 0, fieldName: field.name),
            );
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
        print(data.length);
        List<Widget> widgets = [];
        for (var role in data) {
          widgets.add(
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RecordRoleDropDown(
                roleName: role.name,
                roleId: role.id ?? 0,
              ),
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
