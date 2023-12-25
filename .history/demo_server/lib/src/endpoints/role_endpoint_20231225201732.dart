import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RoleEndpoint extends Endpoint {
  Future<void> createRole(Session session, Role role) async {
    return await Role.insert(session, role);
  }
}
