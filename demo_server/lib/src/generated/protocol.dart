/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'app_user.dart' as _i3;
import 'example.dart' as _i4;
import 'field.dart' as _i5;
import 'record.dart' as _i6;
import 'role.dart' as _i7;
import 'template.dart' as _i8;
import 'package:demo_server/src/generated/field.dart' as _i9;
import 'package:demo_server/src/generated/record.dart' as _i10;
import 'package:demo_server/src/generated/role.dart' as _i11;
import 'package:demo_server/src/generated/template.dart' as _i12;
export 'app_user.dart';
export 'example.dart';
export 'field.dart';
export 'record.dart';
export 'role.dart';
export 'template.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'app_user',
      dartName: 'AppUser',
      schema: 'public',
      module: 'demo',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'app_user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'password',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'app_user_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'field',
      dartName: 'Field',
      schema: 'public',
      module: 'demo',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'field_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'templateId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'field_fk_0',
          columns: ['templateId'],
          referenceTable: 'template',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'field_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'record',
      dartName: 'Record',
      schema: 'public',
      module: 'demo',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'record_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'templateId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'record_fk_0',
          columns: ['templateId'],
          referenceTable: 'template',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'record_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'role',
      dartName: 'Role',
      schema: 'public',
      module: 'demo',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'role_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'templateId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'display',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'edit',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'role_fk_0',
          columns: ['templateId'],
          referenceTable: 'template',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'role_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'template',
      dartName: 'Template',
      schema: 'public',
      module: 'demo',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'template_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'template_fk_0',
          columns: ['userId'],
          referenceTable: 'app_user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'template_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.AppUser) {
      return _i3.AppUser.fromJson(data, this) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data, this) as T;
    }
    if (t == _i5.Field) {
      return _i5.Field.fromJson(data, this) as T;
    }
    if (t == _i6.Record) {
      return _i6.Record.fromJson(data, this) as T;
    }
    if (t == _i7.Role) {
      return _i7.Role.fromJson(data, this) as T;
    }
    if (t == _i8.Template) {
      return _i8.Template.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.AppUser?>()) {
      return (data != null ? _i3.AppUser.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Field?>()) {
      return (data != null ? _i5.Field.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Record?>()) {
      return (data != null ? _i6.Record.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Role?>()) {
      return (data != null ? _i7.Role.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Template?>()) {
      return (data != null ? _i8.Template.fromJson(data, this) : null) as T;
    }
    if (t == List<_i9.Field>) {
      return (data as List).map((e) => deserialize<_i9.Field>(e)).toList()
          as dynamic;
    }
    if (t == List<_i10.Record>) {
      return (data as List).map((e) => deserialize<_i10.Record>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.Role>) {
      return (data as List).map((e) => deserialize<_i11.Role>(e)).toList()
          as dynamic;
    }
    if (t == List<_i12.Template>) {
      return (data as List).map((e) => deserialize<_i12.Template>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.AppUser) {
      return 'AppUser';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.Field) {
      return 'Field';
    }
    if (data is _i6.Record) {
      return 'Record';
    }
    if (data is _i7.Role) {
      return 'Role';
    }
    if (data is _i8.Template) {
      return 'Template';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AppUser') {
      return deserialize<_i3.AppUser>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'Field') {
      return deserialize<_i5.Field>(data['data']);
    }
    if (data['className'] == 'Record') {
      return deserialize<_i6.Record>(data['data']);
    }
    if (data['className'] == 'Role') {
      return deserialize<_i7.Role>(data['data']);
    }
    if (data['className'] == 'Template') {
      return deserialize<_i8.Template>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.AppUser:
        return _i3.AppUser.t;
      case _i5.Field:
        return _i5.Field.t;
      case _i6.Record:
        return _i6.Record.t;
      case _i7.Role:
        return _i7.Role.t;
      case _i8.Template:
        return _i8.Template.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'demo';
}
