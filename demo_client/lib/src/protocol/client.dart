/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demo_client/src/protocol/app_user.dart' as _i3;
import 'package:demo_client/src/protocol/field.dart' as _i4;
import 'package:demo_client/src/protocol/role.dart' as _i5;
import 'package:demo_client/src/protocol/template.dart' as _i6;
import 'dart:io' as _i7;
import 'protocol.dart' as _i8;

class _EndpointUserEndPoint extends _i1.EndpointRef {
  _EndpointUserEndPoint(_i1.EndpointCaller caller) : super(caller);

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

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointField extends _i1.EndpointRef {
  _EndpointField(_i1.EndpointCaller caller) : super(caller);

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

class _EndpointRole extends _i1.EndpointRef {
  _EndpointRole(_i1.EndpointCaller caller) : super(caller);

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

class _EndpointTemplate extends _i1.EndpointRef {
  _EndpointTemplate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'template';

  _i2.Future<_i6.Template> createTemplate(_i6.Template template) =>
      caller.callServerEndpoint<_i6.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i6.Template>> getTemplate() =>
      caller.callServerEndpoint<List<_i6.Template>>(
        'template',
        'getTemplate',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i7.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i8.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    userEndPoint = _EndpointUserEndPoint(this);
    example = _EndpointExample(this);
    field = _EndpointField(this);
    role = _EndpointRole(this);
    template = _EndpointTemplate(this);
  }

  late final _EndpointUserEndPoint userEndPoint;

  late final _EndpointExample example;

  late final _EndpointField field;

  late final _EndpointRole role;

  late final _EndpointTemplate template;

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
