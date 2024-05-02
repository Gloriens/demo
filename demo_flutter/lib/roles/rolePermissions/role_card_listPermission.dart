import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/roles/roleDisplay/role_cards.dart';
import 'package:demo_flutter/roles/rolePermissions/role_cardPermission.dart';
import 'package:flutter/material.dart';

class RoleCardsListPermissions extends StatelessWidget {
  const RoleCardsListPermissions({super.key, required this.roles});

  final List<Role> roles;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          //Scrollable bir ekrana eklendiğinde ikisinin axisleri çakıştığı için asla kaydıramıyoruz,
          //Ekranın scroll özelliği kaldırıldığında ise ortaya absürt görüntüler ortaya çıkıyor,
          //bu yüzden listelerin scoll özelliğini kapatın
          shrinkWrap: true,
          itemCount: roles.length,
          itemBuilder: (context, index) => RoleCardPermission(roles[index])),
    );
  }
}
