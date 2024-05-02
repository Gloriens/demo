import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordEndpoint extends Endpoint {
  Future<Record> createRecord(Session session, Record record) async {
    await Record.db.insertRow(session, record);
    return record;
  }

  Future<Record?> getRecord(Session session, int recordId) async {
    return await Record.db.findById(session, recordId);
  }

  Future<Record?> getRecordByName(Session session, String name) async {
    return await Record.db
        .findFirstRow(session, where: (r) => r.name.equals(name));
  }
}
