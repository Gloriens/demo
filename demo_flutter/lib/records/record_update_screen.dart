import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/records/record_role_dropdown.dart';
import 'package:demo_flutter/records/record_signaturepad.dart';
import 'package:demo_flutter/records/record_signaturepad_update.dart';
import 'package:demo_flutter/records/record_update_bool.dart';
import 'package:demo_flutter/records/record_update_textfield.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(recordBoolUpdateProvider)
              .forEach((fieldId, boolValue) async {
            RecordBool currRecordBool = await ref
                .read(serviceProvider)
                .getRecordBool(widget.record.id ?? 0, fieldId);
            currRecordBool.contentBool = boolValue;
            await ref.read(serviceProvider).updateRecordBool(currRecordBool);
          });
          ref
              .read(recordTextFieldUpdateProvider)
              .forEach((fieldId, text) async {
            RecordText currRecordText = await ref
                .read(serviceProvider)
                .getRecordTextField(widget.record.id ?? 0, fieldId);
            currRecordText.contentText = text;
            await ref
                .read(serviceProvider)
                .updateRecordTextField(currRecordText);
          });
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: DynamicWidgetUpdateList(
            fields: fields, roles: roles, recordId: widget.record.id ?? 0),
      ),
    );
  }
}

class DynamicWidgetUpdateList extends StatelessWidget {
  final AsyncValue<List<Field>> fields;
  final AsyncValue<List<Role>> roles;
  final int recordId;

  const DynamicWidgetUpdateList({
    super.key,
    required this.fields,
    required this.roles,
    required this.recordId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFieldWidgets(fields)
        /*Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildRoleWidgets(roles),
        ),*/
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
              RecordUpdateTextfield(
                  fieldId: field.id ?? 0,
                  recordId: recordId,
                  fieldName: field.name),
            );
          } else if (field.type == 'bool') {
            widgets.add(
              RecordUpdateBool(
                  fieldId: field.id ?? 0,
                  fieldName: field.name,
                  recordId: recordId),
            );
          } else if (field.type == 'signaturepad') {
            widgets.add(RecordSignaturepadUpdate(
              fieldId: field.id ?? 0,
              recordId: recordId,
            ));
          }
        }
        return Column(children: widgets);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  /*Widget _buildRoleWidgets(AsyncValue<List<Role>> roles) {
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
  }*/
}
