import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordBoolItemEndpoint extends Endpoint {
  Future<RecordBool> createRecord(
      Session session, RecordBool recordBool) async {
    return await RecordBool.db.insertRow(session, recordBool);
  }
}
