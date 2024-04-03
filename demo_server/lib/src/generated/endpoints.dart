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
import '../endpoints/file_upload_endpoint.dart' as _i5;
import '../endpoints/record_endpoint.dart' as _i6;
import '../endpoints/record_image_endpoint.dart' as _i7;
import '../endpoints/role_endpoint.dart' as _i8;
import '../endpoints/template_endpoint.dart' as _i9;
import 'package:demo_server/src/generated/app_user.dart' as _i10;
import 'package:demo_server/src/generated/field.dart' as _i11;
import 'package:demo_server/src/generated/record.dart' as _i12;
import 'package:demo_server/src/generated/record_image.dart' as _i13;
import 'package:demo_server/src/generated/role.dart' as _i14;
import 'package:demo_server/src/generated/template.dart' as _i15;
import 'package:serverpod_auth_server/module.dart' as _i16;

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
      'fileUpload': _i5.FileUploadEndpoint()
        ..initialize(
          server,
          'fileUpload',
          null,
        ),
      'record': _i6.RecordEndpoint()
        ..initialize(
          server,
          'record',
          null,
        ),
      'recordImage': _i7.RecordImageEndpoint()
        ..initialize(
          server,
          'recordImage',
          null,
        ),
      'role': _i8.RoleEndpoint()
        ..initialize(
          server,
          'role',
          null,
        ),
      'template': _i9.TemplateEndpoint()
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
              type: _i1.getType<_i10.AppUser>(),
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
              type: _i1.getType<_i10.AppUser>(),
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
              type: _i1.getType<_i10.AppUser>(),
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
        'getUserByAuthUser': _i1.MethodConnector(
          name: 'getUserByAuthUser',
          params: {
            'userInfoId': _i1.ParameterDescription(
              name: 'userInfoId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i2.UserEndPoint).getUserByAuthUser(
            session,
            userInfoId: params['userInfoId'],
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
              type: _i1.getType<_i11.Field>(),
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
    connectors['fileUpload'] = _i1.EndpointConnector(
      name: 'fileUpload',
      endpoint: endpoints['fileUpload']!,
      methodConnectors: {
        'getUploadDescription': _i1.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileUpload'] as _i5.FileUploadEndpoint)
                  .getUploadDescription(
            session,
            params['path'],
          ),
        ),
        'verifyUpload': _i1.MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileUpload'] as _i5.FileUploadEndpoint).verifyUpload(
            session,
            params['path'],
          ),
        ),
        'getUrl': _i1.MethodConnector(
          name: 'getUrl',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['fileUpload'] as _i5.FileUploadEndpoint).getUrl(
            session,
            params['path'],
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
              type: _i1.getType<_i12.Record>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['record'] as _i6.RecordEndpoint).createRecord(
            session,
            params['record'],
          ),
        )
      },
    );
    connectors['recordImage'] = _i1.EndpointConnector(
      name: 'recordImage',
      endpoint: endpoints['recordImage']!,
      methodConnectors: {
        'createRecordImage': _i1.MethodConnector(
          name: 'createRecordImage',
          params: {
            'recordImage': _i1.ParameterDescription(
              name: 'recordImage',
              type: _i1.getType<_i13.RecordImage>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordImage'] as _i7.RecordImageEndpoint)
                  .createRecordImage(
            session,
            params['recordImage'],
          ),
        )
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
              type: _i1.getType<_i14.Role>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i8.RoleEndpoint).createRole(
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
              (endpoints['role'] as _i8.RoleEndpoint).getRolesByTemplate(
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
              type: _i1.getType<_i15.Template>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['template'] as _i9.TemplateEndpoint).createTemplate(
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
              (endpoints['template'] as _i9.TemplateEndpoint).getTemplates(
            session,
            userId: params['userId'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i16.Endpoints()..initializeEndpoints(server);
  }
}
