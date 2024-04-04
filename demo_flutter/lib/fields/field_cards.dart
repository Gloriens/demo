import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/roles/rolePermissions/role_card_listPermission.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/DisplayTemplate.dart';
import 'package:demo_flutter/fields/field_cards_list.dart';
import 'package:demo_flutter/fields/field_creation_screen.dart';
import 'package:demo_flutter/roles/roleDisplay/role_cards_list.dart';
import 'package:demo_flutter/roles/role_creation_screen.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldCards extends ConsumerStatefulWidget {
  const FieldCards(this.field, {Key? key}) : super(key: key);

  final Field field;

  @override
  ConsumerState<FieldCards> createState() => _FieldCardsState();
}

class _FieldCardsState extends ConsumerState<FieldCards> {


  @override
  Widget build(BuildContext context) {
    final roles = ref.watch(listOfRolesProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.field.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.field.type,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Title'),
                              content: roles.when(
                                  data: (data) {
                                    return SizedBox(
                                      height: 300,
                                      width: 300,
                                      child: SingleChildScrollView(
                                        child: RoleCardsListPermissions(roles: data),
                                      ),
                                    );
                                  },
                                  error: ((error, stackTrace) =>
                                      Text(error.toString())),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator())),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Read Permissions'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Title'),
                              content: roles.when(
                                  data: (data) {
                                    return SizedBox(
                                      height: 300,
                                      width: 300,
                                      child: SingleChildScrollView(
                                        child: RoleCardsListPermissions(roles: data),
                                      ),
                                    );
                                  },
                                  error: ((error, stackTrace) =>
                                      Text(error.toString())),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator())),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Read & Write Permissions'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
