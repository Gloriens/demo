import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/HomePage.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://10.0.2.2:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(title: 'Login Screen'),
    );
  }
}

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  String? _resultMessage;
  String? _errorMessage;

  final _textEditingController = TextEditingController();

  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneN = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: TextField(
              controller: phoneN,
              decoration: const InputDecoration(
                hintText: 'Enter your phone number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              onPressed: () {
                //Login Butonu
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePAge()));
                //Backend Part
                var service = ref.read(serviceProvider);
                var logInUser = AppUser(
                    name: "",
                    phone: phoneN.text,
                    email: "",
                    password: service.encryptPassword(password.text));
                service.logIn(logInUser, context);
              },
              child: const Text('Login'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Sign Up Butonu
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
              //Navigator

              //Backend Part
            },
            child: const Text('Sign Up'),
          ),
          _ResultDisplay(
            resultMessage: _resultMessage,
            errorMessage: _errorMessage,
          ),
        ],
      ),
    );
  }
}

class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
