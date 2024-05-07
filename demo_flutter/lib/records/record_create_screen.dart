import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/MainMenu.dart';
import 'package:demo_flutter/records/record_bool_item.dart';
import 'package:demo_flutter/records/record_role_dropdown.dart';
import 'package:demo_flutter/records/record_signaturepad.dart';
import 'package:demo_flutter/records/record_textfield.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordCreateScreen extends ConsumerStatefulWidget {
  const RecordCreateScreen({super.key, required this.recordId});
  final int recordId;
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
        backgroundColor: Color(0xFF212A3E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Geri tuşunun ikonu
          onPressed: () {
            //Navigator.push(context,
            //MaterialPageRoute(builder: (context) => SecondPage()),
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu()));
          },
        ),
        title: Text(
          'Create Record',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      // This is the part where we dynamically create the widgets based on fields and roles
      //of the related template.
      body: Center(
        child: DynamicWidgetList(
            fields: listOfFields,
            roles: listOfRoles,
            recordId: widget.recordId),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(recordBoolProvider).forEach((fieldId, boolValue) {
            //this one is for the recordBool.
            RecordBool newRecordBool = RecordBool(
                recordId: widget.recordId,
                fieldId: fieldId,
                contentBool: boolValue);
            ref.read(serviceProvider).createRecordBool(newRecordBool);
          });
          ref.read(recordRoleProvider).forEach((roleId, roleUserName) async {
            //this one is for the recordRole.
            final user =
                await ref.read(serviceProvider).getUserByUName(roleUserName);
            RecordRole newRecordRole = RecordRole(
                name: roleUserName,
                roleId: roleId,
                userId: user.id ?? 0,
                recordId: widget.recordId);
            await ref.read(serviceProvider).createRecordRole(newRecordRole);
          });
          ref.read(recordTextFieldProvider).forEach((fieldId, text) {
            //this one is for the recordTextField.
            RecordText newRecordText = RecordText(
                recordId: widget.recordId, fieldId: fieldId, contentText: text);
            ref.read(serviceProvider).createRecordTextField(newRecordText);
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainMenu()));
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

class DynamicWidgetList extends StatelessWidget {
  final AsyncValue<List<Field>> fields;
  final AsyncValue<List<Role>> roles;
  final int recordId;
  const DynamicWidgetList({
    super.key,
    required this.fields,
    required this.roles,
    required this.recordId,
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
            widgets.add(RecordSignaturePad(
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

  Widget _buildRoleWidgets(AsyncValue<List<Role>> roles) {
    return roles.when(
      data: (data) {
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
