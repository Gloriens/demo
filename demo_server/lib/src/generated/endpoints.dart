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
import '../endpoints/record_bool_endpoint.dart' as _i6;
import '../endpoints/record_counter_endpoint.dart' as _i7;
import '../endpoints/record_date_endpoint.dart' as _i8;
import '../endpoints/record_endpoint.dart' as _i9;
import '../endpoints/record_image_endpoint.dart' as _i10;
import '../endpoints/record_role_endpoint.dart' as _i11;
import '../endpoints/record_textfield_endpoint.dart' as _i12;
import '../endpoints/role_endpoint.dart' as _i13;
import '../endpoints/template_endpoint.dart' as _i14;
import 'package:demo_server/src/generated/app_user.dart' as _i15;
import 'package:demo_server/src/generated/field.dart' as _i16;
import 'package:demo_server/src/generated/record_bool.dart' as _i17;
import 'package:demo_server/src/generated/record_counter.dart' as _i18;
import 'package:demo_server/src/generated/record_date.dart' as _i19;
import 'package:demo_server/src/generated/record.dart' as _i20;
import 'package:demo_server/src/generated/record_image.dart' as _i21;
import 'package:demo_server/src/generated/record_role.dart' as _i22;
import 'package:demo_server/src/generated/record_text.dart' as _i23;
import 'package:demo_server/src/generated/role.dart' as _i24;
import 'package:demo_server/src/generated/template.dart' as _i25;
import 'package:serverpod_auth_server/module.dart' as _i26;

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
      'recordBoolItem': _i6.RecordBoolItemEndpoint()
        ..initialize(
          server,
          'recordBoolItem',
          null,
        ),
      'recordCounterItem': _i7.RecordCounterItemEndpoint()
        ..initialize(
          server,
          'recordCounterItem',
          null,
        ),
      'recordDate': _i8.RecordDateEndpoint()
        ..initialize(
          server,
          'recordDate',
          null,
        ),
      'record': _i9.RecordEndpoint()
        ..initialize(
          server,
          'record',
          null,
        ),
      'recordImage': _i10.RecordImageEndpoint()
        ..initialize(
          server,
          'recordImage',
          null,
        ),
      'recordRole': _i11.RecordRoleEndpoint()
        ..initialize(
          server,
          'recordRole',
          null,
        ),
      'recordTextField': _i12.RecordTextFieldEndpoint()
        ..initialize(
          server,
          'recordTextField',
          null,
        ),
      'role': _i13.RoleEndpoint()
        ..initialize(
          server,
          'role',
          null,
        ),
      'template': _i14.TemplateEndpoint()
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
              type: _i1.getType<_i15.AppUser>(),
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
              type: _i1.getType<_i15.AppUser>(),
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
              type: _i1.getType<_i15.AppUser>(),
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
        'getUsers': _i1.MethodConnector(
          name: 'getUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i2.UserEndPoint).getUsers(session),
        ),
        'getUserByName': _i1.MethodConnector(
          name: 'getUserByName',
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
              (endpoints['userEndPoint'] as _i2.UserEndPoint).getUserByName(
            session,
            params['name'],
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
              type: _i1.getType<_i16.Field>(),
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
    connectors['recordBoolItem'] = _i1.EndpointConnector(
      name: 'recordBoolItem',
      endpoint: endpoints['recordBoolItem']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'recordBool': _i1.ParameterDescription(
              name: 'recordBool',
              type: _i1.getType<_i17.RecordBool>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordBoolItem'] as _i6.RecordBoolItemEndpoint)
                  .createRecord(
            session,
            params['recordBool'],
          ),
        ),
        'getRecordBool': _i1.MethodConnector(
          name: 'getRecordBool',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'fieldId': _i1.ParameterDescription(
              name: 'fieldId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordBoolItem'] as _i6.RecordBoolItemEndpoint)
                  .getRecordBool(
            session,
            params['recordId'],
            params['fieldId'],
          ),
        ),
        'updateRecordBool': _i1.MethodConnector(
          name: 'updateRecordBool',
          params: {
            'recordBool': _i1.ParameterDescription(
              name: 'recordBool',
              type: _i1.getType<_i17.RecordBool>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordBoolItem'] as _i6.RecordBoolItemEndpoint)
                  .updateRecordBool(
            session,
            params['recordBool'],
          ),
        ),
      },
    );
    connectors['recordCounterItem'] = _i1.EndpointConnector(
      name: 'recordCounterItem',
      endpoint: endpoints['recordCounterItem']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'recordCounter': _i1.ParameterDescription(
              name: 'recordCounter',
              type: _i1.getType<_i18.RecordCounter>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordCounterItem'] as _i7.RecordCounterItemEndpoint)
                  .createRecord(
            session,
            params['recordCounter'],
          ),
        ),
        'getRecordCounter': _i1.MethodConnector(
          name: 'getRecordCounter',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'fieldId': _i1.ParameterDescription(
              name: 'fieldId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordCounterItem'] as _i7.RecordCounterItemEndpoint)
                  .getRecordCounter(
            session,
            params['recordId'],
            params['fieldId'],
          ),
        ),
        'updateRecordCounter': _i1.MethodConnector(
          name: 'updateRecordCounter',
          params: {
            'recordCounter': _i1.ParameterDescription(
              name: 'recordCounter',
              type: _i1.getType<_i18.RecordCounter>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordCounterItem'] as _i7.RecordCounterItemEndpoint)
                  .updateRecordCounter(
            session,
            params['recordCounter'],
          ),
        ),
      },
    );
    connectors['recordDate'] = _i1.EndpointConnector(
      name: 'recordDate',
      endpoint: endpoints['recordDate']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'recordDate': _i1.ParameterDescription(
              name: 'recordDate',
              type: _i1.getType<_i19.RecordDate>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordDate'] as _i8.RecordDateEndpoint).createRecord(
            session,
            params['recordDate'],
          ),
        ),
        'getRecordDate': _i1.MethodConnector(
          name: 'getRecordDate',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'fieldId': _i1.ParameterDescription(
              name: 'fieldId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordDate'] as _i8.RecordDateEndpoint).getRecordDate(
            session,
            params['recordId'],
            params['fieldId'],
          ),
        ),
        'updateRecordDate': _i1.MethodConnector(
          name: 'updateRecordDate',
          params: {
            'recordDate': _i1.ParameterDescription(
              name: 'recordDate',
              type: _i1.getType<_i19.RecordDate>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordDate'] as _i8.RecordDateEndpoint)
                  .updateRecordDate(
            session,
            params['recordDate'],
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
              type: _i1.getType<_i20.Record>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['record'] as _i9.RecordEndpoint).createRecord(
            session,
            params['record'],
          ),
        ),
        'getRecord': _i1.MethodConnector(
          name: 'getRecord',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['record'] as _i9.RecordEndpoint).getRecord(
            session,
            params['recordId'],
          ),
        ),
        'getRecordByName': _i1.MethodConnector(
          name: 'getRecordByName',
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
              (endpoints['record'] as _i9.RecordEndpoint).getRecordByName(
            session,
            params['name'],
          ),
        ),
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
              type: _i1.getType<_i21.RecordImage>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordImage'] as _i10.RecordImageEndpoint)
                  .createRecordImage(
            session,
            params['recordImage'],
          ),
        ),
        'getRecordImage': _i1.MethodConnector(
          name: 'getRecordImage',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'fieldId': _i1.ParameterDescription(
              name: 'fieldId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordImage'] as _i10.RecordImageEndpoint)
                  .getRecordImage(
            session,
            params['recordId'],
            params['fieldId'],
          ),
        ),
        'updateRecordImage': _i1.MethodConnector(
          name: 'updateRecordImage',
          params: {
            'recordImage': _i1.ParameterDescription(
              name: 'recordImage',
              type: _i1.getType<_i21.RecordImage>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordImage'] as _i10.RecordImageEndpoint)
                  .updateRecordImage(
            session,
            params['recordImage'],
          ),
        ),
      },
    );
    connectors['recordRole'] = _i1.EndpointConnector(
      name: 'recordRole',
      endpoint: endpoints['recordRole']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'recordRole': _i1.ParameterDescription(
              name: 'recordRole',
              type: _i1.getType<_i22.RecordRole>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordRole'] as _i11.RecordRoleEndpoint).createRecord(
            session,
            params['recordRole'],
          ),
        ),
        'getRecordRoles': _i1.MethodConnector(
          name: 'getRecordRoles',
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
              (endpoints['recordRole'] as _i11.RecordRoleEndpoint)
                  .getRecordRoles(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['recordTextField'] = _i1.EndpointConnector(
      name: 'recordTextField',
      endpoint: endpoints['recordTextField']!,
      methodConnectors: {
        'createRecord': _i1.MethodConnector(
          name: 'createRecord',
          params: {
            'recordText': _i1.ParameterDescription(
              name: 'recordText',
              type: _i1.getType<_i23.RecordText>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordTextField'] as _i12.RecordTextFieldEndpoint)
                  .createRecord(
            session,
            params['recordText'],
          ),
        ),
        'getRecordText': _i1.MethodConnector(
          name: 'getRecordText',
          params: {
            'recordId': _i1.ParameterDescription(
              name: 'recordId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'fieldId': _i1.ParameterDescription(
              name: 'fieldId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordTextField'] as _i12.RecordTextFieldEndpoint)
                  .getRecordText(
            session,
            params['recordId'],
            params['fieldId'],
          ),
        ),
        'updateRecordText': _i1.MethodConnector(
          name: 'updateRecordText',
          params: {
            'recordText': _i1.ParameterDescription(
              name: 'recordText',
              type: _i1.getType<_i23.RecordText>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['recordTextField'] as _i12.RecordTextFieldEndpoint)
                  .updateRecordText(
            session,
            params['recordText'],
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
              type: _i1.getType<_i24.Role>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i13.RoleEndpoint).createRole(
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
              (endpoints['role'] as _i13.RoleEndpoint).getRolesByTemplate(
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
              type: _i1.getType<_i25.Template>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['template'] as _i14.TemplateEndpoint).createTemplate(
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
              (endpoints['template'] as _i14.TemplateEndpoint).getTemplates(
            session,
            userId: params['userId'],
          ),
        ),
        'getTemplate': _i1.MethodConnector(
          name: 'getTemplate',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['template'] as _i14.TemplateEndpoint).getTemplate(
            session,
            id: params['id'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i26.Endpoints()..initializeEndpoints(server);
  }
}
