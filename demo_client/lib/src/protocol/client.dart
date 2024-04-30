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
import 'package:demo_client/src/protocol/record_date.dart' as _i6;
import 'package:demo_client/src/protocol/record.dart' as _i7;
import 'package:demo_client/src/protocol/record_image.dart' as _i8;
import 'package:demo_client/src/protocol/record_role.dart' as _i9;
import 'package:demo_client/src/protocol/record_text.dart' as _i10;
import 'package:demo_client/src/protocol/role.dart' as _i11;
import 'package:demo_client/src/protocol/template.dart' as _i12;
import 'package:serverpod_auth_client/module.dart' as _i13;
import 'protocol.dart' as _i14;

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

  _i2.Future<_i5.RecordBool> getRecordBool(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i5.RecordBool>(
        'recordBoolItem',
        'getRecordBool',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordBool(_i5.RecordBool recordBool) =>
      caller.callServerEndpoint<void>(
        'recordBoolItem',
        'updateRecordBool',
        {'recordBool': recordBool},
      );
}

/// {@category Endpoint}
class EndpointRecordDate extends _i1.EndpointRef {
  EndpointRecordDate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordDate';

  _i2.Future<_i6.RecordDate> createRecord(_i6.RecordDate recordDate) =>
      caller.callServerEndpoint<_i6.RecordDate>(
        'recordDate',
        'createRecord',
        {'recordDate': recordDate},
      );

  _i2.Future<_i6.RecordDate> getRecordDate(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i6.RecordDate>(
        'recordDate',
        'getRecordDate',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordDate(_i6.RecordDate recordDate) =>
      caller.callServerEndpoint<void>(
        'recordDate',
        'updateRecordDate',
        {'recordDate': recordDate},
      );
}

/// {@category Endpoint}
class EndpointRecord extends _i1.EndpointRef {
  EndpointRecord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'record';

  _i2.Future<_i7.Record> createRecord(_i7.Record record) =>
      caller.callServerEndpoint<_i7.Record>(
        'record',
        'createRecord',
        {'record': record},
      );

  _i2.Future<_i7.Record?> getRecord(int recordId) =>
      caller.callServerEndpoint<_i7.Record?>(
        'record',
        'getRecord',
        {'recordId': recordId},
      );

  _i2.Future<_i7.Record?> getRecordByName(String name) =>
      caller.callServerEndpoint<_i7.Record?>(
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

  _i2.Future<_i8.RecordImage> createRecordImage(_i8.RecordImage recordImage) =>
      caller.callServerEndpoint<_i8.RecordImage>(
        'recordImage',
        'createRecordImage',
        {'recordImage': recordImage},
      );

  _i2.Future<_i8.RecordImage> getRecordImage(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i8.RecordImage>(
        'recordImage',
        'getRecordImage',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordImage(_i8.RecordImage recordImage) =>
      caller.callServerEndpoint<void>(
        'recordImage',
        'updateRecordImage',
        {'recordImage': recordImage},
      );
}

/// {@category Endpoint}
class EndpointRecordRole extends _i1.EndpointRef {
  EndpointRecordRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordRole';

  _i2.Future<_i9.RecordRole> createRecord(_i9.RecordRole recordRole) =>
      caller.callServerEndpoint<_i9.RecordRole>(
        'recordRole',
        'createRecord',
        {'recordRole': recordRole},
      );

  _i2.Future<List<_i9.RecordRole>> getRecordRoles(int userId) =>
      caller.callServerEndpoint<List<_i9.RecordRole>>(
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

  _i2.Future<_i10.RecordText> createRecord(_i10.RecordText recordText) =>
      caller.callServerEndpoint<_i10.RecordText>(
        'recordTextField',
        'createRecord',
        {'recordText': recordText},
      );

  _i2.Future<_i10.RecordText> getRecordText(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i10.RecordText>(
        'recordTextField',
        'getRecordText',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordText(_i10.RecordText recordText) =>
      caller.callServerEndpoint<void>(
        'recordTextField',
        'updateRecordText',
        {'recordText': recordText},
      );
}

/// {@category Endpoint}
class EndpointRole extends _i1.EndpointRef {
  EndpointRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'role';

  _i2.Future<void> createRole(_i11.Role role) =>
      caller.callServerEndpoint<void>(
        'role',
        'createRole',
        {'role': role},
      );

  _i2.Future<List<_i11.Role>> getRolesByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i11.Role>>(
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

  _i2.Future<_i12.Template> createTemplate(_i12.Template template) =>
      caller.callServerEndpoint<_i12.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i12.Template>> getTemplates({required int userId}) =>
      caller.callServerEndpoint<List<_i12.Template>>(
        'template',
        'getTemplates',
        {'userId': userId},
      );

  _i2.Future<_i12.Template> getTemplate({required int id}) =>
      caller.callServerEndpoint<_i12.Template>(
        'template',
        'getTemplate',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i13.Caller(client);
  }

  late final _i13.Caller auth;
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
          _i14.Protocol(),
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
    recordDate = EndpointRecordDate(this);
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

  late final EndpointRecordDate recordDate;

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
        'recordDate': recordDate,
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
