import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordEndpoint extends Endpoint {
  Future<void> createRecord(Session session, Record record) async {
    return await Record.insert(session, record);
  }

  Future<List<Record>> getFieldsByTemplate(Session session,
      {required int templateId}) async {
    List<Record> records = await Record.find(session,
        where: (r) => r.templateId.equals(templateId));
    return records;
  }
}
