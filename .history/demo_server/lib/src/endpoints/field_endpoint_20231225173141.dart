import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class FieldEndpoint extends Endpoint {
  Future<void> createField(Session session, Field field) async {
    return await Field.insert(session, field);
  }

  Future<List<Field>> getFieldsByTemplate(Session session,
      {required int templateId}) async {
    List<Field> fields = await Field.find(session,
        where: (f) => f.templateId.equals(templateId));
    return fields;
  }
}
