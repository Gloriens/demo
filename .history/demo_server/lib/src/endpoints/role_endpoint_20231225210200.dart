import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RoleEndpoint extends Endpoint {
  Future<void> createRole(Session session, Role role) async {
    return await Role.insert(session, role);
  }

  Future<List<Role>> getRolesByTemplate(Session session,
      {required int templateId}) async {
    List<Role> roles =
        await Role.find(session, where: (r) => r.templateId.equals(templateId));
    return roles;
  }
}
