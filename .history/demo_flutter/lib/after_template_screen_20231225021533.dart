import 'package:flutter/material.dart';

class AfterTemplateScreen extends StatefulWidget {
  const AfterTemplateScreen({super.key});

  @override
  State<AfterTemplateScreen> createState() => _AfterTemplateScreenState();
}

class _AfterTemplateScreenState extends State<AfterTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Field",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const Column(
                      children: [
                        Text("Fields as cards"),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Plus"))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Role",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const Column(
                      children: [
                        Text("Roles as cards"),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Plus"))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
