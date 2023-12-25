import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/roles/role_cards.dart';
import 'package:flutter/material.dart';

class RoleCardsList extends StatelessWidget {
  const RoleCardsList({super.key, required this.roles});

  final List<Role> roles;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: roles.length,
          itemBuilder: (context, index) => RoleCards(roles[index])),
    );
  }
}
