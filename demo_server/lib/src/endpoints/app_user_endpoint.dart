import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndPoint extends Endpoint {
  Future<AppUser> createUser(Session session, AppUser user) async {
    await AppUser.insert(session, user);
    return user;
  }

  Future<bool> deleteUser(Session session, AppUser user) async {
    return await AppUser.deleteRow(session, user);
  }
}
