import 'package:demo_flutter/CreateTemplate.dart';
import 'package:demo_flutter/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class MyHomePAge extends StatefulWidget {
  const MyHomePAge({super.key});

  @override
  State<MyHomePAge> createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends State<MyHomePAge> {
  TextEditingController templateName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 180.0),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Create new Template'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text("Name-Surname"),
                    ),
                    TextField(
                      controller: templateName,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          // Template ismi aldığımız yer
                          // Backend Part
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateTemplatePage()));
                        },
                        child: Text("Ok"),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },

        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),

      ),
    );

  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneNController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfimController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 30,left: 25,right: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15),
                child: Text("Name-Surname",),
              ),
              TextField(
                controller: nameController

              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 30),
                child: Text("e-mail",),
              ),
              TextField(
                controller: emailController,

              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 30),
                child: Text("Phone Number",),
              ),
              TextField(
                controller: phoneNController,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 40,),
                child: Text("Password",),
              ),
              TextField(
                controller: passwordController,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 40,),
                child: Text("Confirm your Password",),
              ),
              TextField(
                  controller: passwordConfimController,
              ),
              
              Padding(
                  padding: EdgeInsets.only(),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(title: "Login Screen")));
                  }, child: Text("Ok"),
                    
                  ),
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
