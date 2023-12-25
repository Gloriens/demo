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
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Field",
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Plus"),
                    ),
                  ],
                ),
              ),
              const Spacer(), // Adds space between the columns
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Role",
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Plus"),
                    ),
                  ],
                ),
              ),
              const Spacer(), // Adds space between the columns
            ],
          ),
        ],
      )),
    );
  }
}
