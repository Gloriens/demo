import 'package:demo_flutter/CreateTemplate.dart';
import 'package:demo_flutter/LoginScreen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class MyHomePAge extends ConsumerStatefulWidget {
  const MyHomePAge({super.key});

  @override
  ConsumerState<MyHomePAge> createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends ConsumerState<MyHomePAge> {
  TextEditingController templateName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
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
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text("Name"),
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
                          ref
                              .read(serviceProvider)
                              .createTemplate(context, name: templateName.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateTemplatePage()));
                        },
                        child: const Text("Ok"),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const BottomAppBar(
        height: 40.0,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

bool validateSignUp() {
  if (emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty &&
      nameController.text.isNotEmpty &&
      phoneNController.text.isNotEmpty &&
      passwordConfimController.text == passwordController.text) {
    return true;
  }
  return false;
}

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordConfimController = TextEditingController();

class _SignUpState extends ConsumerState<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Name-Surname",
                ),
              ),
              TextField(controller: nameController),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Text(
                  "e-mail",
                ),
              ),
              TextField(
                controller: emailController,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Text(
                  "Phone Number",
                ),
              ),
              TextField(
                controller: phoneNController,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 40,
                ),
                child: Text(
                  "Password",
                ),
              ),
              TextField(
                controller: passwordController,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 40,
                ),
                child: Text(
                  "Confirm your Password",
                ),
              ),
              TextField(
                controller: passwordConfimController,
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: ElevatedButton(
                  onPressed: () {
                    if (validateSignUp()) {
                      var createdUser = AppUser(
                        name: nameController.text,
                        email: emailController.text,
                        phone: phoneNController.text,
                        password: ref
                            .read(serviceProvider)
                            .encryptPassword(passwordController.text),
                      );
                      ref
                          .read(serviceProvider)
                          .createNewUser(createdUser, context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LoginScreen(title: "Login Screen")));
                    }
                  },
                  child: const Text("Ok"),
                ),
              ),
            ],
          ),
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
