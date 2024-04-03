import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FieldEndpoint extends Endpoint {
  Future<void> createField(Session session, Field field) async {
    await Field.db.insertRow(session, field);
  }

  Future<List<Field>> getFieldsByTemplate(Session session,
      {required int templateId}) async {
    List<Field> fields = await Field.db
        .find(session, where: (f) => f.templateId.equals(templateId));
    return fields;
  }
}
