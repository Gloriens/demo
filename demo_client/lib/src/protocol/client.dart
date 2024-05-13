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
import 'package:demo_client/src/protocol/record_counter.dart' as _i6;
import 'package:demo_client/src/protocol/record_date.dart' as _i7;
import 'package:demo_client/src/protocol/record.dart' as _i8;
import 'package:demo_client/src/protocol/record_image.dart' as _i9;
import 'package:demo_client/src/protocol/record_role.dart' as _i10;
import 'package:demo_client/src/protocol/record_text.dart' as _i11;
import 'package:demo_client/src/protocol/role.dart' as _i12;
import 'package:demo_client/src/protocol/template.dart' as _i13;
import 'package:serverpod_auth_client/module.dart' as _i14;
import 'protocol.dart' as _i15;

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
class EndpointRecordCounterItem extends _i1.EndpointRef {
  EndpointRecordCounterItem(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordCounterItem';

  _i2.Future<_i6.RecordCounter> createRecord(_i6.RecordCounter recordCounter) =>
      caller.callServerEndpoint<_i6.RecordCounter>(
        'recordCounterItem',
        'createRecord',
        {'recordCounter': recordCounter},
      );

  _i2.Future<_i6.RecordCounter> getRecordCounter(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i6.RecordCounter>(
        'recordCounterItem',
        'getRecordCounter',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordCounter(_i6.RecordCounter recordCounter) =>
      caller.callServerEndpoint<void>(
        'recordCounterItem',
        'updateRecordCounter',
        {'recordCounter': recordCounter},
      );
}

/// {@category Endpoint}
class EndpointRecordDate extends _i1.EndpointRef {
  EndpointRecordDate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'recordDate';

  _i2.Future<_i7.RecordDate> createRecord(_i7.RecordDate recordDate) =>
      caller.callServerEndpoint<_i7.RecordDate>(
        'recordDate',
        'createRecord',
        {'recordDate': recordDate},
      );

  _i2.Future<_i7.RecordDate> getRecordDate(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i7.RecordDate>(
        'recordDate',
        'getRecordDate',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordDate(_i7.RecordDate recordDate) =>
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

  _i2.Future<_i8.Record> createRecord(_i8.Record record) =>
      caller.callServerEndpoint<_i8.Record>(
        'record',
        'createRecord',
        {'record': record},
      );

  _i2.Future<_i8.Record?> getRecord(int recordId) =>
      caller.callServerEndpoint<_i8.Record?>(
        'record',
        'getRecord',
        {'recordId': recordId},
      );

  _i2.Future<_i8.Record?> getRecordByName(String name) =>
      caller.callServerEndpoint<_i8.Record?>(
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

  _i2.Future<_i9.RecordImage> createRecordImage(_i9.RecordImage recordImage) =>
      caller.callServerEndpoint<_i9.RecordImage>(
        'recordImage',
        'createRecordImage',
        {'recordImage': recordImage},
      );

  _i2.Future<_i9.RecordImage> getRecordImage(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i9.RecordImage>(
        'recordImage',
        'getRecordImage',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordImage(_i9.RecordImage recordImage) =>
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

  _i2.Future<_i10.RecordRole> createRecord(_i10.RecordRole recordRole) =>
      caller.callServerEndpoint<_i10.RecordRole>(
        'recordRole',
        'createRecord',
        {'recordRole': recordRole},
      );

  _i2.Future<List<_i10.RecordRole>> getRecordRoles(int userId) =>
      caller.callServerEndpoint<List<_i10.RecordRole>>(
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

  _i2.Future<_i11.RecordText> createRecord(_i11.RecordText recordText) =>
      caller.callServerEndpoint<_i11.RecordText>(
        'recordTextField',
        'createRecord',
        {'recordText': recordText},
      );

  _i2.Future<_i11.RecordText> getRecordText(
    int recordId,
    int fieldId,
  ) =>
      caller.callServerEndpoint<_i11.RecordText>(
        'recordTextField',
        'getRecordText',
        {
          'recordId': recordId,
          'fieldId': fieldId,
        },
      );

  _i2.Future<void> updateRecordText(_i11.RecordText recordText) =>
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

  _i2.Future<void> createRole(_i12.Role role) =>
      caller.callServerEndpoint<void>(
        'role',
        'createRole',
        {'role': role},
      );

  _i2.Future<List<_i12.Role>> getRolesByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i12.Role>>(
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

  _i2.Future<_i13.Template> createTemplate(_i13.Template template) =>
      caller.callServerEndpoint<_i13.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i13.Template>> getTemplates({required int userId}) =>
      caller.callServerEndpoint<List<_i13.Template>>(
        'template',
        'getTemplates',
        {'userId': userId},
      );

  _i2.Future<_i13.Template> getTemplate({required int id}) =>
      caller.callServerEndpoint<_i13.Template>(
        'template',
        'getTemplate',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i14.Caller(client);
  }

  late final _i14.Caller auth;
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
          _i15.Protocol(),
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
    recordCounterItem = EndpointRecordCounterItem(this);
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

  late final EndpointRecordCounterItem recordCounterItem;

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
        'recordCounterItem': recordCounterItem,
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
