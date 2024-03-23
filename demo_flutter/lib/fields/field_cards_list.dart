import 'package:demo_client/demo_client.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/fields/field_cards.dart';

class FieldCardsList extends StatelessWidget {
  const FieldCardsList({super.key, required this.fields});

  final List<Field> fields;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          //Scrollable bir ekrana eklendiğinde ikisinin axisleri çakıştığı için asla kaydıramıyoruz,
          //Ekranın scroll özelliği kaldırıldığında ise ortaya absürt görüntüler ortaya çıkıyor,
          //bu yüzden listelerin scoll özelliğini kapatın
          shrinkWrap: true,
          itemCount: fields.length,
          itemBuilder: (context, index) => FieldCards(fields[index])),
    );
  }
}
