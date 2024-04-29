import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/Templates.dart';
import 'package:demo_flutter/fields/field_cards_list.dart';
import 'package:demo_flutter/fields/field_creation_screen.dart';
import 'package:demo_flutter/roles/role_cards_list.dart';
import 'package:demo_flutter/roles/role_creation_screen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AfterTemplateScreen extends ConsumerStatefulWidget {
  const AfterTemplateScreen({super.key});

  @override
  ConsumerState<AfterTemplateScreen> createState() =>
      _AfterTemplateScreenState();
}

class _AfterTemplateScreenState extends ConsumerState<AfterTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    final service = ref.watch(serviceProvider);
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Field",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //This is the part that the data comes from the server through service.
                            FutureBuilder<List<Field>>(
                              future:
                                  service.getListOfFieldsByTemplate(context),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  List<Field> snapshotList = snapshot.data!;
                                  return FieldCardsList(fields: snapshotList);
                                } else {
                                  const Text("No data");
                                }
                                return const Text(
                                  "No Data",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const FieldCreationScreen();
                                    });
                              },
                              child: const Text("Add"))),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Role",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //This is the part that the data comes from the server through service.
                            FutureBuilder<List<Role>>(
                              future: service.getListOfRolesByTemplate(context),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  List<Role> snapshotList = snapshot.data!;
                                  return RoleCardsList(roles: snapshotList);
                                } else {
                                  const Text("No data");
                                }
                                return const Text(
                                  "No Data",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const RoleCreationScreen();
                                    });
                              },
                              child: const Text("Add"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyHomePAge()));
                              },
                              child: const Text("Save All"))),
                    ),
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
