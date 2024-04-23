import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/LoginScreen.dart';
import 'package:demo_flutter/providers/template_notifier.dart';
import 'package:demo_flutter/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final serviceProvider = Provider((ref) => Service(ref));
final listOfFieldsProvider = FutureProvider<List<Field>>((ref) async {
  final listFields =
      await ref.read(serviceProvider).getListOfFieldsByTemplate();
  return listFields;
});
final listOfRolesProvider = FutureProvider<List<Role>>((ref) async {
  final listRoles = await ref.read(serviceProvider).getListOfRolesByTemplate();
  return listRoles;
});
final listOfTemplatesProvider = FutureProvider<List<Template>>((ref) async {
  final listTemplates =
      await ref.read(serviceProvider).getListOfTemplatesByUser();
  return listTemplates;
});

final listOfUsersProvider = FutureProvider<List<AppUser>>((ref) async {
  final listUsers = await ref.read(serviceProvider).getListOfUsers();
  return listUsers;
});
final listOfRecordRolesProvider = FutureProvider<List<RecordRole>>((ref) async {
  final listRecordRoles = await ref.read(serviceProvider).getListOfRecordRoles(
      ref.read(userStateNotifierProvider.notifier).user.id ?? 0);
  return listRecordRoles;
});
final listOfRecordsProvider = FutureProvider<List<Record>>((ref) async {
  final recordRoles = await ref.read(serviceProvider).getListOfRecordRoles(
      ref.read(userStateNotifierProvider.notifier).user.id ?? 0);
  final records = <Record>[];
  for (RecordRole recordRole in recordRoles) {
    final record =
        await ref.read(serviceProvider).getRecord(recordRole.recordId);
    records.add(record);
  }
  return records;
});
final fieldsProvider = FutureProvider.autoDispose
    .family<List<Field>, int>((ref, templateId) async {
  final listFields =
      await ref.read(serviceProvider).getFieldsByTemplateId(templateId);
  return listFields;
});
final roleProvider =
    FutureProvider.autoDispose.family<List<Role>, int>((ref, templateId) async {
  final listRoles =
      await ref.read(serviceProvider).getRolesByTemplateId(templateId);
  return listRoles;
});

class Service {
  final Ref ref;
  Service(this.ref);

  Future<void> createNewUser(AppUser user, BuildContext context) async {
    final userProvider = ProviderScope.containerOf(context)
        .read(userStateNotifierProvider.notifier);
    try {
      final newUser = await client.userEndPoint.createUser(user);
      if (!context.mounted) {
        return;
      }
      userProvider.user = newUser;
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> logIn(AppUser appUser, BuildContext context) async {
    final userProvider = ProviderScope.containerOf(context)
        .read(userStateNotifierProvider.notifier);
    try {
      AppUser? logInUser = await client.userEndPoint.checkIfUserExists(appUser);
      print(logInUser?.id);
      if (!context.mounted) {
        return;
      }
      if (logInUser != null) {
        userProvider.user = logInUser;
      }
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> createTemplate(
    BuildContext context, {
    required String name,
  }) async {
    final templateProvider = ProviderScope.containerOf(context)
        .read(templateStateNotifierProvider.notifier);
    final userProvider = ProviderScope.containerOf(context)
        .read(userStateNotifierProvider.notifier);
    final template = Template(userId: userProvider.user.id ?? 0, name: name);
    try {
      final addedTemplate = await client.template.createTemplate(template);
      templateProvider.template = addedTemplate;
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> createField(
    BuildContext context, {
    required String type,
    required String name,
  }) async {
    final templateProvider = ProviderScope.containerOf(context)
        .read(templateStateNotifierProvider.notifier);
    final field = Field(
      templateId: templateProvider.template.id ?? 0,
      type: type,
      name: name,
    );
    try {
      return await client.field.createField(field);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> createRole(BuildContext context,
      {required String name, required bool display, required bool edit}) async {
    final templateProvider = ProviderScope.containerOf(context)
        .read(templateStateNotifierProvider.notifier);
    final role = Role(
      templateId: templateProvider.template.id ?? 0,
      name: name,
      display: display,
      edit: edit,
    );
    try {
      return await client.role.createRole(role);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<Record> createRecord(
      {required String name, required DateTime date}) async {
    final templateProvider = ref.read(templateStateNotifierProvider.notifier);
    final record = Record(
        templateId: templateProvider.template.id ?? 0, name: name, date: date);
    try {
      final createdRecord = await client.record.createRecord(record);
      return createdRecord;
    } on Exception catch (e) {
      debugPrint('$e');
      throw Exception('Failed to create record');
    }
  }

  String encryptPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    return hash.toString();
  }

  Future<List<Field>> getListOfFieldsByTemplate() async {
    final templateProvider = ref.read(templateStateNotifierProvider.notifier);

    final List<Field> listOfFields = await client.field
        .getFieldsByTemplate(templateId: templateProvider.template.id ?? 0);

    return listOfFields;
  }

  Future<List<Role>> getListOfRolesByTemplate() async {
    final templateProvider = ref.read(templateStateNotifierProvider.notifier);

    final List<Role> listOfRoles = await client.role
        .getRolesByTemplate(templateId: templateProvider.template.id ?? 0);
    return listOfRoles;
  }

  Future<List<Field>> getFieldsByTemplateId(int templateId) async {
    final List<Field> listOfFields =
        await client.field.getFieldsByTemplate(templateId: templateId);
    return listOfFields;
  }

  Future<List<Role>> getRolesByTemplateId(int templateId) async {
    final List<Role> listOfRoles =
        await client.role.getRolesByTemplate(templateId: templateId);
    return listOfRoles;
  }

  Future<List<Template>> getListOfTemplatesByUser() async {
    final userProvider = ref.read(userStateNotifierProvider.notifier);

    final List<Template> listOfTemplates =
        await client.template.getTemplates(userId: userProvider.user.id ?? 0);
    return listOfTemplates;
  }

  List<String> getListOfTemplatesName(List<Template> templates) {
    if (templates.isNotEmpty) {
      final List<String> listOfTemplatesName =
          templates.map((e) => e.name).toList();
      return listOfTemplatesName;
    } else {
      return List.empty();
    }
  }

  List<String> getListOfUsersName(List<AppUser> users) {
    if (users.isNotEmpty) {
      final List<String> listOfUsersName = users.map((e) => e.name).toList();
      return listOfUsersName;
    } else {
      return List.empty();
    }
  }

  checkIfAuthUserExits(int userInfoId) async {
    final userProvider = ref.read(userStateNotifierProvider.notifier);
    AppUser? appUser =
        await client.userEndPoint.getUserByAuthUser(userInfoId: userInfoId);
    if (appUser != null) {
      userProvider.user = appUser;
      return true;
    } else {
      return false;
    }
  }

  String generateRandomString(int len) {
    var r = Random();
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
  }

  Future<String?> uploadImage(XFile image, [String? path]) async {
    path = path ?? "test.jpg";

    final uploadDescription =
        await client.fileUpload.getUploadDescription(path);
    if (uploadDescription != null) {
      final uploader = FileUploader(uploadDescription);
      //final length = (await image.readAsBytes()).length;
      final uint8List = await image.readAsBytes();
      final byteData = uint8List.buffer.asByteData();
      //final stream = image.openRead();
      await uploader.uploadByteData(byteData);
      //await uploader.uploadByteData(byteData);
      final success = await client.fileUpload.verifyUpload(path);

      if (!success) {
        print("Upload verification failed for path: $path");
        return null;
      }
      var url = await client.fileUpload.getUrl(path);
      return url;
    }

    return null;
  }

  Future<Record> getRecordByName(String name) async {
    final record = await client.record.getRecordByName(name);
    if (record != null) {
      return record;
    } else {
      throw Exception("Record not found");
    }
  }

  Future<AppUser> getUserByUName(String name) async {
    final user = await client.userEndPoint.getUserByName(name);
    return user;
  }

  Future<List<AppUser>> getListOfUsers() async {
    final List<AppUser> listOfUsers = await client.userEndPoint.getUsers();
    return listOfUsers;
  }

  Future<RecordRole> createRecordRole(RecordRole recordRole) async {
    final createdRecordRole = await client.recordRole.createRecord(recordRole);
    return createdRecordRole;
  }

  Future<RecordBool> createRecordBool(RecordBool recordBool) async {
    final createdRecordBool =
        await client.recordBoolItem.createRecord(recordBool);
    return createdRecordBool;
  }

  Future<RecordText> createRecordTextField(RecordText recordText) async {
    final createdRecordText =
        await client.recordTextField.createRecord(recordText);
    return createdRecordText;
  }

  Future<List<RecordRole>> getListOfRecordRoles(int userId) async {
    final List<RecordRole> listOfRecordRoles =
        await client.recordRole.getRecordRoles(userId);
    return listOfRecordRoles;
  }

  Future<Record> getRecord(int recordId) async {
    final record = await client.record.getRecord(recordId);
    if (record != null) {
      return record;
    } else {
      throw Exception("Record not found");
    }
  }
}
