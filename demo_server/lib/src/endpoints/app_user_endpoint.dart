import 'package:demo_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserEndPoint extends Endpoint {
  Future<AppUser> createUser(Session session, AppUser user) async {
    await AppUser.db.insertRow(session, user);
    return user;
  }

  Future<bool> deleteUser(Session session, AppUser user) async {
    return await AppUser.deleteRow(session, user);
  }

  Future<AppUser?> checkIfUserExists(
      Session session, AppUser existingUser) async {
    AppUser? appUser = await AppUser.db.findFirstRow(
      session,
      where: (au) =>
          au.phone.equals(existingUser.phone) &
          au.password.equals(existingUser.password),
    );
    return appUser;
  }

  Future<AppUser?> getUserByAuthUser(Session session,
      {required int userInfoId}) async {
    AppUser? appUser = await AppUser.db
        .findFirstRow(session, where: (au) => au.userInfoId.equals(userInfoId));
    return appUser;
  }

  Future<List<AppUser>> getUsers(Session session) async {
    return await AppUser.db.find(session);
  }

  Future<AppUser> getUserByName(Session session, String name) async {
    AppUser? user = await AppUser.db.findFirstRow(
      session,
      where: (au) => au.name.equals(name),
    );
    if (user == null) {
      throw Exception('User not found');
    }
    return user;
  }
}
