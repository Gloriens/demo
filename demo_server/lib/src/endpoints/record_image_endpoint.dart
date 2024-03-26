import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordImageEndpoint extends Endpoint {
  Future<RecordImage> createRecordImage(
      Session session, RecordImage recordImage) async {
    await RecordImage.db.insertRow(session, recordImage);
    return recordImage;
  }
}
