import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordTextFieldEndpoint extends Endpoint {
  Future<RecordText> createRecord(
      Session session, RecordText recordText) async {
    return await RecordText.db.insertRow(session, recordText);
  }

  Future<RecordText> getRecordText(
      Session session, int recordId, int fieldId) async {
    final RecordText? recordText = await RecordText.db.findFirstRow(session,
        where: (rect) =>
            rect.recordId.equals(recordId) & rect.fieldId.equals(fieldId));
    if (recordText == null) {
      final record = await RecordText.db.insertRow(
          session,
          RecordText(
              recordId: recordId,
              fieldId: fieldId,
              contentText: 'enter text here'));
      return record;
    }
    return recordText;
  }

  Future<void> updateRecordText(Session session, RecordText recordText) async {
    await RecordText.db.updateRow(session, recordText);
  }
}
