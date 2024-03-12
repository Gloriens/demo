import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/providers/template_notifier.dart';
import 'package:demo_flutter/records/record_create_screen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectTemplateForRecord extends ConsumerStatefulWidget {
  const SelectTemplateForRecord({super.key});

  @override
  ConsumerState<SelectTemplateForRecord> createState() =>
      _SelectTemplateForRecordState();
}

List<String> list = ["template1", "template2"];
List<Template> templates = [];
late Template template;
String dropdownValue = list.first;
TextEditingController nameController = TextEditingController();

class _SelectTemplateForRecordState
    extends ConsumerState<SelectTemplateForRecord> {
  @override
  Widget build(BuildContext context) {
    final listOfTemplates = ref.watch(listOfTemplatesProvider);
    listOfTemplates.when(
        data: (data) {
          list = ref.read(serviceProvider).getListOfTemplatesName(data);
          templates = data;
        },
        error: ((error, stackTrace) => Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()));
    return AlertDialog(
      title: const Text("Select a template"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Name:"),
          TextField(
            controller: nameController,
          ),
          const Text(
            "Select a template to create record:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: DropdownMenu<String>(
                initialSelection: list.first,
                onSelected: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                dropdownMenuEntries:
                    list.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {
                        template = templates.firstWhere(
                          (template) => template.name == dropdownValue,
                        );
                        ref
                            .read(templateStateNotifierProvider.notifier)
                            .template = template;
                        ref.read(serviceProvider).createRecord(
                            name: nameController.text, date: DateTime.now());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RecordCreateScreen()));
                      },
                      child: const Text("Ok")))),
        ],
      ),
    );
  }
}
