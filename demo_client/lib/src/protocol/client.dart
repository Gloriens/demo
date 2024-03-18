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
import 'package:demo_client/src/protocol/record.dart' as _i5;
import 'package:demo_client/src/protocol/role.dart' as _i6;
import 'package:demo_client/src/protocol/template.dart' as _i7;
import 'package:serverpod_auth_client/module.dart' as _i8;
import 'protocol.dart' as _i9;

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
class EndpointRecord extends _i1.EndpointRef {
  EndpointRecord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'record';

  _i2.Future<void> createRecord(_i5.Record record) =>
      caller.callServerEndpoint<void>(
        'record',
        'createRecord',
        {'record': record},
      );

  _i2.Future<List<_i5.Record>> getFieldsByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i5.Record>>(
        'record',
        'getFieldsByTemplate',
        {'templateId': templateId},
      );
}

/// {@category Endpoint}
class EndpointRole extends _i1.EndpointRef {
  EndpointRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'role';

  _i2.Future<void> createRole(_i6.Role role) => caller.callServerEndpoint<void>(
        'role',
        'createRole',
        {'role': role},
      );

  _i2.Future<List<_i6.Role>> getRolesByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i6.Role>>(
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

  _i2.Future<_i7.Template> createTemplate(_i7.Template template) =>
      caller.callServerEndpoint<_i7.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i7.Template>> getTemplates({required int userId}) =>
      caller.callServerEndpoint<List<_i7.Template>>(
        'template',
        'getTemplates',
        {'userId': userId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i8.Caller(client);
  }

  late final _i8.Caller auth;
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
          _i9.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    userEndPoint = EndpointUserEndPoint(this);
    example = EndpointExample(this);
    field = EndpointField(this);
    record = EndpointRecord(this);
    role = EndpointRole(this);
    template = EndpointTemplate(this);
    modules = _Modules(this);
  }

  late final EndpointUserEndPoint userEndPoint;

  late final EndpointExample example;

  late final EndpointField field;

  late final EndpointRecord record;

  late final EndpointRole role;

  late final EndpointTemplate template;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'userEndPoint': userEndPoint,
        'example': example,
        'field': field,
        'record': record,
        'role': role,
        'template': template,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
