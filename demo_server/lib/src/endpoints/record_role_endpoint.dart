import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordRoleEndpoint extends Endpoint {
  Future<RecordRole> createRecord(
      Session session, RecordRole recordRole) async {
    return await RecordRole.db.insertRow(session, recordRole);
  }
}
