/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demo_client/src/protocol/app_user.dart' as _i3;
import 'package:demo_client/src/protocol/field.dart' as _i4;
import 'package:demo_client/src/protocol/record_bool.dart' as _i5;
import 'package:demo_client/src/protocol/record.dart' as _i6;
import 'package:demo_client/src/protocol/record_image.dart' as _i7;
import 'package:demo_client/src/protocol/record_role.dart' as _i8;
import 'package:demo_client/src/protocol/record_text.dart' as _i9;
import 'package:demo_client/src/protocol/role.dart' as _i10;
import 'package:demo_client/src/protocol/template.dart' as _i11;
import 'package:serverpod_auth_client/module.dart' as _i12;
import 'protocol.dart' as _i13;

/// {@category Endpoint}
class EndpointUserEndPoint extends _i1.EndpointRef {
  EndpointUserEndPoint(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'userEndPoint';

  _i2.Future<_i3.AppUser> createUser(_i3.AppUser user) =>
      caller.callServerEndpoint<_i3.AppUser>(
        'userEndPoint',
        'createUser',
        {'user': user},
      );

  _i2.Future<bool> deleteUser(_i3.AppUser user) =>
      caller.callServerEndpoint<bool>(
        'userEndPoint',
        'deleteUser',
        {'user': user},
      );

  _i2.Future<_i3.AppUser?> checkIfUserExists(_i3.AppUser existingUser) =>
      caller.callServerEndpoint<_i3.AppUser?>(
        'userEndPoint',
        'checkIfUserExists',
        {'existingUser': existingUser},
      );

  _i2.Future<_i3.AppUser?> getUserByAuthUser({required int userInfoId}) =>
      caller.callServerEndpoint<_i3.AppUser?>(
        'userEndPoint',
        'getUserByAuthUser',
        {'userInfoId': userInfoId},
      );

  _i2.Future<List<_i3.AppUser>> getUsers() =>
      caller.callServerEndpoint<List<_i3.AppUser>>(
        'userEndPoint',
        'getUsers',
        {},
      );

  _i2.Future<_i3.AppUser> getUserByName(String name) =>
      caller.callServerEndpoint<_i3.AppUser>(
        'userEndPoint',
        'getUserByName',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointField extends _i1.EndpointRef {
  EndpointField(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'field';

  _i2.Future<void> createField(_i4.Field field) =>
      caller.callServerEndpoint<void>(
        'field',
        'createField',
        {'field': field},
      );

  _i2.Future<List<_i4.Field>> getFieldsByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i4.Field>>(
        'field',
        'getFieldsByTemplate',
        {'templateId': templateId},
      );
}

/// {@category Endpoint}
class EndpointFileUpload extends _i1.EndpointRef {
  EndpointFileUpload(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'fileUpload';

  _i2.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>(
        'fileUpload',
        'getUploadDescription',
        {'path': path},
      );

  _i2.Future<bool> verifyUpload(String path) => caller.callServerEndpoint<bool>(
        'fileUpload',
        'verifyUpload',
        {'path': path},
      );

  _i2.Future<String> getUrl(String path) => caller.callServerEndpoint<String>(
        'fileUpload',
        'getUrl',
        {'path': path},
      );
}

/// {@category Endpoint}
class EndpointRecordBoolItem extends _i1.EndpointRef {
  EndpointRecordBoolItem(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordBoolItem';

  _i2.Future<_i5.RecordBool> createRecord(_i5.RecordBool recordBool) =>
      caller.callServerEndpoint<_i5.RecordBool>(
        'recordBoolItem',
        'createRecord',
        {'recordBool': recordBool},
      );
}

/// {@category Endpoint}
class EndpointRecord extends _i1.EndpointRef {
  EndpointRecord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'record';

  _i2.Future<_i6.Record> createRecord(_i6.Record record) =>
      caller.callServerEndpoint<_i6.Record>(
        'record',
        'createRecord',
        {'record': record},
      );

  _i2.Future<_i6.Record?> getRecord(int recordId) =>
      caller.callServerEndpoint<_i6.Record?>(
        'record',
        'getRecord',
        {'recordId': recordId},
      );

  _i2.Future<_i6.Record?> getRecordByName(String name) =>
      caller.callServerEndpoint<_i6.Record?>(
        'record',
        'getRecordByName',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointRecordImage extends _i1.EndpointRef {
  EndpointRecordImage(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordImage';

  _i2.Future<_i7.RecordImage> createRecordImage(_i7.RecordImage recordImage) =>
      caller.callServerEndpoint<_i7.RecordImage>(
        'recordImage',
        'createRecordImage',
        {'recordImage': recordImage},
      );
}

/// {@category Endpoint}
class EndpointRecordRole extends _i1.EndpointRef {
  EndpointRecordRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordRole';

  _i2.Future<_i8.RecordRole> createRecord(_i8.RecordRole recordRole) =>
      caller.callServerEndpoint<_i8.RecordRole>(
        'recordRole',
        'createRecord',
        {'recordRole': recordRole},
      );

  _i2.Future<List<_i8.RecordRole>> getRecordRoles(int userId) =>
      caller.callServerEndpoint<List<_i8.RecordRole>>(
        'recordRole',
        'getRecordRoles',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointRecordTextField extends _i1.EndpointRef {
  EndpointRecordTextField(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordTextField';

  _i2.Future<_i9.RecordText> createRecord(_i9.RecordText recordText) =>
      caller.callServerEndpoint<_i9.RecordText>(
        'recordTextField',
        'createRecord',
        {'recordText': recordText},
      );
}

/// {@category Endpoint}
class EndpointRole extends _i1.EndpointRef {
  EndpointRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'role';

  _i2.Future<void> createRole(_i10.Role role) =>
      caller.callServerEndpoint<void>(
        'role',
        'createRole',
        {'role': role},
      );

  _i2.Future<List<_i10.Role>> getRolesByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i10.Role>>(
        'role',
        'getRolesByTemplate',
        {'templateId': templateId},
      );
}

/// {@category Endpoint}
class EndpointTemplate extends _i1.EndpointRef {
  EndpointTemplate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'template';

  _i2.Future<_i11.Template> createTemplate(_i11.Template template) =>
      caller.callServerEndpoint<_i11.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i11.Template>> getTemplates({required int userId}) =>
      caller.callServerEndpoint<List<_i11.Template>>(
        'template',
        'getTemplates',
        {'userId': userId},
      );

  _i2.Future<_i11.Template> getTemplate({required int id}) =>
      caller.callServerEndpoint<_i11.Template>(
        'template',
        'getTemplate',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i12.Caller(client);
  }

  late final _i12.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i13.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    userEndPoint = EndpointUserEndPoint(this);
    example = EndpointExample(this);
    field = EndpointField(this);
    fileUpload = EndpointFileUpload(this);
    recordBoolItem = EndpointRecordBoolItem(this);
    record = EndpointRecord(this);
    recordImage = EndpointRecordImage(this);
    recordRole = EndpointRecordRole(this);
    recordTextField = EndpointRecordTextField(this);
    role = EndpointRole(this);
    template = EndpointTemplate(this);
    modules = _Modules(this);
  }

  late final EndpointUserEndPoint userEndPoint;

  late final EndpointExample example;

  late final EndpointField field;

  late final EndpointFileUpload fileUpload;

  late final EndpointRecordBoolItem recordBoolItem;

  late final EndpointRecord record;

  late final EndpointRecordImage recordImage;

  late final EndpointRecordRole recordRole;

  late final EndpointRecordTextField recordTextField;

  late final EndpointRole role;

  late final EndpointTemplate template;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'userEndPoint': userEndPoint,
        'example': example,
        'field': field,
        'fileUpload': fileUpload,
        'recordBoolItem': recordBoolItem,
        'record': record,
        'recordImage': recordImage,
        'recordRole': recordRole,
        'recordTextField': recordTextField,
        'role': role,
        'template': template,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
