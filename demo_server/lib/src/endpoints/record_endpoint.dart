import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordEndpoint extends Endpoint {
  Future<void> createRecord(Session session, Record record) async {
    return await Record.insert(session, record);
  }
}
