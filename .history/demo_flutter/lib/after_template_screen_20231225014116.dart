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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Field",
                  textAlign: TextAlign.left,
                ),
                const Column(),
                ElevatedButton(onPressed: () {}, child: const Text("Plus")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Role"),
                const Column(),
                ElevatedButton(onPressed: () {}, child: const Text("Plus")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
