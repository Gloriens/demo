import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordImageEndpoint extends Endpoint {
  Future<RecordImage> createRecordImage(
      Session session, RecordImage recordImage) async {
    await RecordImage.db.insertRow(session, recordImage);
    return recordImage;
  }

  Future<RecordImage> getRecordImage(
      Session session, int recordId, int fieldId) async {
    final RecordImage? recordImage = await RecordImage.db.findFirstRow(session,
        where: (recImg) =>
            recImg.recordId.equals(recordId) & recImg.fieldId.equals(fieldId));
    if (recordImage == null) {
      throw Exception('RecordImage not found');
    } else {
      return recordImage;
    }
  }

  Future<void> updateRecordImage(
      Session session, RecordImage recordImage) async {
    await RecordImage.db.updateRow(session, recordImage);
  }
}
