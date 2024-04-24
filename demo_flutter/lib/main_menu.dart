import 'package:demo_flutter/HomePage.dart';
import 'package:demo_flutter/records/select_template_for_record.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePAge()));
                  },
                  child: const Text("Create Template"))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePAge()));
                  },
                  child: const Text("Display Templates"))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const SelectTemplateForRecord();
                        });
                  },
                  child: const Text("Create Record"))),
        ],
      )),
      floatingActionButton: Container(
          width: 75,
          height: 75,
          child:FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                MaterialPageRoute(builder: (context) => MainMenu());
              },
              backgroundColor: Color(0xFF7A3E85),
              child: Icon(Icons.add),
              shape: CircleBorder(),
            ),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Container(
          height: 55,
          child: BottomAppBar(
              color: Colors.blue
          )
      ),

    );
  }
}
