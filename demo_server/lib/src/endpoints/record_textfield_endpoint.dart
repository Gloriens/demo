import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordTextFieldEndpoint extends Endpoint {
  Future<RecordText> createRecord(
      Session session, RecordText recordText) async {
    return await RecordText.db.insertRow(session, recordText);
  }
}
