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
import 'package:demo_client/src/protocol/role.dart' as _i5;
import 'package:demo_client/src/protocol/template.dart' as _i6;
import 'protocol.dart' as _i7;

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
class EndpointRole extends _i1.EndpointRef {
  EndpointRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'role';

  _i2.Future<void> createRole(_i5.Role role) => caller.callServerEndpoint<void>(
        'role',
        'createRole',
        {'role': role},
      );

  _i2.Future<List<_i5.Role>> getRolesByTemplate({required int templateId}) =>
      caller.callServerEndpoint<List<_i5.Role>>(
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

  _i2.Future<_i6.Template> createTemplate(_i6.Template template) =>
      caller.callServerEndpoint<_i6.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i6.Template>> getTemplates({required int userId}) =>
      caller.callServerEndpoint<List<_i6.Template>>(
        'template',
        'getTemplates',
        {'userId': userId},
      );
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
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    userEndPoint = EndpointUserEndPoint(this);
    example = EndpointExample(this);
    field = EndpointField(this);
    role = EndpointRole(this);
    template = EndpointTemplate(this);
  }

  late final EndpointUserEndPoint userEndPoint;

  late final EndpointExample example;

  late final EndpointField field;

  late final EndpointRole role;

  late final EndpointTemplate template;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'userEndPoint': userEndPoint,
        'example': example,
        'field': field,
        'role': role,
        'template': template,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
