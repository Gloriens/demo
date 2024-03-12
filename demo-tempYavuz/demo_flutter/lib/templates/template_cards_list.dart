import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/templates/template_cards.dart';
import 'package:flutter/material.dart';

class TemplateCardsList extends StatelessWidget {
  const TemplateCardsList({super.key, required this.templates});

  final List<Template> templates;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: templates.length,
          itemBuilder: (context, index) => TemplateCards(templates[index])),
    );
  }
}
