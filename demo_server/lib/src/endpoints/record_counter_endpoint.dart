import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordCounterItemEndpoint extends Endpoint {
  Future<RecordCounter> createRecord(
      Session session, RecordCounter recordCounter) async {
    return await RecordCounter.db.insertRow(session, recordCounter);
  }

  Future<RecordCounter> getRecordCounter(
      Session session, int recordId, int fieldId) async {
    final RecordCounter? recordCounter = await RecordCounter.db.findFirstRow(
        session,
        where: (recc) =>
            recc.recordId.equals(recordId) & recc.fieldId.equals(fieldId));
    if (recordCounter == null) {
      final record = await RecordCounter.db.insertRow(session,
          RecordCounter(recordId: recordId, fieldId: fieldId, counterValue: 0));
      return record;
    }
    return recordCounter;
  }

  Future<void> updateRecordCounter(
      Session session, RecordCounter recordCounter) async {
    await RecordCounter.db.updateRow(session, recordCounter);
  }
}
