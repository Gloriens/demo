import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TemplateEndpoint extends Endpoint {
  Future<Template> createTemplate(Session session, Template template) async {
    await Template.insert(session, template);
    return template;
  }

  Future<List<Template>> getTemplates(Session session,
      {required int userId}) async {
    List<Template> templates = await Template.find(
      session,
      where: (u) => u.userId.equals(userId),
    );
    return templates;
  }

  Future<Template> getTemplate(Session session, {required int id}) async {
    Template? template = await Template.db.findById(session, id);
    if (template == null) {
      throw Exception('Template not found');
    }
    return template;
  }
}
