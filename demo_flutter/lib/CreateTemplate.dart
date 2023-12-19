import 'package:demo_flutter/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';



class CreateTemplatePage extends StatefulWidget {
  const CreateTemplatePage({super.key});

  @override
  State<CreateTemplatePage> createState() => _CreateTemplatePageState();
}

class _CreateTemplatePageState extends State<CreateTemplatePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController typelController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 30,left: 25,right: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Field Creating
              Text("Create Field"),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 30),
                child: Text("Name-Surname",),
              ),
              TextField(
                  controller: nameController
                      //Backend Part
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 30),
                child: Text("e-mail",),
              ),
              TextField(
                controller: typelController,
                //Backend Part
              ),




            ],

          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),

      ),
    );

  }
}
