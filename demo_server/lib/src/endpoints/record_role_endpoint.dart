import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RecordRoleEndpoint extends Endpoint {
  Future<RecordRole> createRecord(
      Session session, RecordRole recordRole) async {
    return await RecordRole.db.insertRow(session, recordRole);
  }

  Future<List<RecordRole>> getRecordRoles(Session session, int userId) async {
    return await RecordRole.db
        .find(session, where: (recs) => recs.userId.equals(userId));
  }
}
