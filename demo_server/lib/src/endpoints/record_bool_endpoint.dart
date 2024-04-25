import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordBoolItemEndpoint extends Endpoint {
  Future<RecordBool> createRecord(
      Session session, RecordBool recordBool) async {
    return await RecordBool.db.insertRow(session, recordBool);
  }

  Future<RecordBool> getRecordBool(
      Session session, int recordId, int fieldId) async {
    final RecordBool? recordBool = await RecordBool.db.findFirstRow(session,
        where: (recb) =>
            recb.recordId.equals(recordId) & recb.fieldId.equals(fieldId));
    if (recordBool == null) {
      throw Exception('RecordBool not found');
    }
    return recordBool;
  }

  Future<void> updateRecordBool(Session session, RecordBool recordBool) async {
    await RecordBool.db.updateRow(session, recordBool);
  }
}
