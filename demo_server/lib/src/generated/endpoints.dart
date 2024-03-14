/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/app_user_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/field_endpoint.dart' as _i4;
import '../endpoints/record_endpoint.dart' as _i5;
import '../endpoints/role_endpoint.dart' as _i6;
import '../endpoints/template_endpoint.dart' as _i7;
import 'package:demo_server/src/generated/app_user.dart' as _i8;
import 'package:demo_server/src/generated/field.dart' as _i9;
import 'package:demo_server/src/generated/record.dart' as _i10;
import 'package:demo_server/src/generated/role.dart' as _i11;
import 'package:demo_server/src/generated/template.dart' as _i12;
import 'package:serverpod_auth_server/module.dart' as _i13;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'userEndPoint': _i2.UserEndPoint()
        ..initialize(
          server,
          'userEndPoint',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'field': _i4.FieldEndpoint()
        ..initialize(
          server,
          'field',
          null,
        ),
      'record': _i5.RecordEndpoint()
        ..initialize(
          server,
          'record',
          null,
        ),
      'role': _i6.RoleEndpoint()
        ..initialize(
          server,
          'role',
          null,
        ),
      'template': _i7.TemplateEndpoint()
        ..initialize(
          server,
          'template',
          null,
        ),
    };
    connectors['userEndPoint'] = _i1.EndpointConnector(
      name: 'userEndPoint',
      endpoint: endpoints['userEndPoint']!,
      methodConnectors: {
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.AppUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i2.UserEndPoint).createUser(
            session,
            params['user'],
          ),
        ),
        'deleteUser': _i1.MethodConnector(
          name: 'deleteUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.AppUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i2.UserEndPoint).deleteUser(
            session,
            params['user'],
          ),
        ),
        'checkIfUserExists': _i1.MethodConnector(
          name: 'checkIfUserExists',
          params: {
            'existingUser': _i1.ParameterDescription(
              name: 'existingUser',
              type: _i1.getType<_i8.AppUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i2.UserEndPoint).checkIfUserExists(
            session,
            params['existingUser'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['field'] = _i1.EndpointConnector(
      name: 'field',
      endpoint: endpoints['field']!,
      methodConnectors: {
        'createField': _i1.MethodConnector(
          name: 'createField',
          params: {
            'field': _i1.ParameterDescription(
              name: 'field',
              type: _i1.getType<_i9.Field>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['field'] as _i4.FieldEndpoint).createField(
            session,
            params['field'],
          ),
        ),
        'getFieldsByTemplate': _i1.MethodConnector(
          name: 'getFieldsByTemplate',
          params: {
            'templateId': _i1.ParameterDescription(
              name: 'templateId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['field'] as _i4.FieldEndpoint).getFieldsByTemplate(
            session,
            templateId: params['templateId'],
          ),
        ),
      },
    );
    connectors['record'] = _i1.EndpointConnector(
      name: 'record',
      endpoint: endpoints['record']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'record': _i1.ParameterDescription(
              name: 'record',
              type: _i1.getType<_i10.Record>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['record'] as _i5.RecordEndpoint).createRecord(
            session,
            params['record'],
          ),
        ),
        'getFieldsByTemplate': _i1.MethodConnector(
          name: 'getFieldsByTemplate',
          params: {
            'templateId': _i1.ParameterDescription(
              name: 'templateId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['record'] as _i5.RecordEndpoint).getFieldsByTemplate(
            session,
            templateId: params['templateId'],
          ),
        ),
      },
    );
    connectors['role'] = _i1.EndpointConnector(
      name: 'role',
      endpoint: endpoints['role']!,
      methodConnectors: {
        'createRole': _i1.MethodConnector(
          name: 'createRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i11.Role>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i6.RoleEndpoint).createRole(
            session,
            params['role'],
          ),
        ),
        'getRolesByTemplate': _i1.MethodConnector(
          name: 'getRolesByTemplate',
          params: {
            'templateId': _i1.ParameterDescription(
              name: 'templateId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i6.RoleEndpoint).getRolesByTemplate(
            session,
            templateId: params['templateId'],
          ),
        ),
      },
    );
    connectors['template'] = _i1.EndpointConnector(
      name: 'template',
      endpoint: endpoints['template']!,
      methodConnectors: {
        'createTemplate': _i1.MethodConnector(
          name: 'createTemplate',
          params: {
            'template': _i1.ParameterDescription(
              name: 'template',
              type: _i1.getType<_i12.Template>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['template'] as _i7.TemplateEndpoint).createTemplate(
            session,
            params['template'],
          ),
        ),
        'getTemplates': _i1.MethodConnector(
          name: 'getTemplates',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['template'] as _i7.TemplateEndpoint).getTemplates(
            session,
            userId: params['userId'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i13.Endpoints()..initializeEndpoints(server);
  }
}
