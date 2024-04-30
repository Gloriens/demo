import 'package:demo_flutter/after_template_screen.dart';
import 'package:demo_flutter/MainMenu.dart';
import 'package:flutter/material.dart';

class CreateTemplatePage extends StatefulWidget {
  const CreateTemplatePage({super.key});

  @override
  State<CreateTemplatePage> createState() => _CreateTemplatePageState();
}

Map<String, int> map = {'text': 1, 'bool': 2};
String dropdownValue = map.keys.first;

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController typelController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Geri butonu ikonu
            onPressed: () {
              //Navigator.push(context,
              //MaterialPageRoute(builder: (context) => SecondPage()),
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu()));
            },
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Field Creating
            const Text("Create Field"),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text(
                "Name",
              ),
            ),
            TextField(controller: nameController
                //Backend Part
                ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text(
                "Type",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: DropdownMenu(
                  initialSelection: map.keys.toList().first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: map.keys
                      .toList()
                      .map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry(value: value, label: value);
                  }).toList()),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AfterTemplateScreen()));
                },
                icon: const Icon(Icons.save),
                label: const Text('Save'),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
