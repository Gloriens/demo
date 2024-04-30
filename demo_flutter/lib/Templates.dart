import 'package:demo_flutter/LoginScreen.dart';
import 'package:demo_flutter/after_template_screen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:demo_flutter/templates/template_cards_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_client/demo_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

class MyHomePAge extends ConsumerStatefulWidget {
  const MyHomePAge({super.key});

  @override
  ConsumerState<MyHomePAge> createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends ConsumerState<MyHomePAge> {
  TextEditingController templateName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final templates = ref.watch(listOfTemplatesProvider);
    // Ekran düzeltilemeli
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212A3E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Geri tuşunun ikonu
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Templates',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () {
                        if (sessionManager.isSignedIn) {
                          print("signed in");
                          ref.refresh(listOfTemplatesProvider);
                        }
                      },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xFF9BA4B5),
                        width: 2,
                      ),
                    ),
                      child: const Text(
                        "Display Record",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF212A3E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                )
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Templates",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            templates.when(
                data: (data) {
                  return TemplateCardsList(templates: data);
                },
                error: ((error, stackTrace) => Text(error.toString())),
                loading: () =>
                    const Center(child: CircularProgressIndicator())),
          ],
        ),
      ) //Padding(
          //padding: EdgeInsets.only(top: 180.0),
          //),
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
                    Align(
                      alignment: Alignment.center,
                        child: Text("Name")
                    ),
                    TextField(
                      controller: templateName,
                    ),
                    Align(
                      alignment: Alignment.center,
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
                                      const AfterTemplateScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xFF9BA4B5),
                            width: 2,
                          ),
                        ),
                        child: const Text("Ok",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF212A3E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add, color: Color(0xFF212A3E),),
        backgroundColor: Color(0xFF9BA4B5),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const BottomAppBar(
        height: 40.0,
        color: Color(0xFF212A3E),
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

var userInfo = sessionManager.signedInUser!;

//var signedIn = sessionManager.isSignedIn;
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
                      // TO-DO : FIX LOGIN LOGIC FOR SIGNED IN USER !
                      var createdUser = AppUser(
                        userInfoId: userInfo.id ?? 0,
                        name: userInfo.userName,
                        email: userInfo.email ?? "",
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
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color(0xFF9BA4B5),
                      width: 2,
                    ),
                  ),
                  child: const Text(
                      "Ok",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF212A3E),
                      ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          color: Color(0xFF212A3E),
        ),
      ),
    );
  }
}
