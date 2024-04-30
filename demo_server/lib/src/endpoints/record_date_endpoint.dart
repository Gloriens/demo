import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordDateEndpoint extends Endpoint {
  Future<RecordDate> createRecord(
      Session session, RecordDate recordDate) async {
    return await RecordDate.db.insertRow(session, recordDate);
  }

  Future<RecordDate> getRecordDate(
      Session session, int recordId, int fieldId) async {
    final RecordDate? recordDate = await RecordDate.db.findFirstRow(session,
        where: (recd) =>
            recd.recordId.equals(recordId) & recd.fieldId.equals(fieldId));
    if (recordDate == null) {
      final record = await RecordDate.db.insertRow(
          session,
          RecordDate(
              recordId: recordId,
              fieldId: fieldId,
              contentDate: DateTime.now().toString()));
      return record;
    }
    return recordDate;
  }

  Future<void> updateRecordDate(Session session, RecordDate recordDate) async {
    await RecordDate.db.updateRow(session, recordDate);
  }
}
