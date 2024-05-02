/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Permission extends _i1.TableRow {
  Permission._({
    int? id,
    required this.fieldId,
    required this.roleId,
    required this.display,
    required this.edit,
  }) : super(id);

  factory Permission({
    int? id,
    required int fieldId,
    required int roleId,
    required bool display,
    required bool edit,
  }) = _PermissionImpl;

  factory Permission.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Permission(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      roleId:
          serializationManager.deserialize<int>(jsonSerialization['roleId']),
      display:
          serializationManager.deserialize<bool>(jsonSerialization['display']),
      edit: serializationManager.deserialize<bool>(jsonSerialization['edit']),
    );
  }

  static final t = PermissionTable();

  static const db = PermissionRepository._();

  int fieldId;

  int roleId;

  bool display;

  bool edit;

  @override
  _i1.Table get table => t;

  Permission copyWith({
    int? id,
    int? fieldId,
    int? roleId,
    bool? display,
    bool? edit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fieldId': fieldId,
      'roleId': roleId,
      'display': display,
      'edit': edit,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'fieldId': fieldId,
      'roleId': roleId,
      'display': display,
      'edit': edit,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'fieldId': fieldId,
      'roleId': roleId,
      'display': display,
      'edit': edit,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'fieldId':
        fieldId = value;
        return;
      case 'roleId':
        roleId = value;
        return;
      case 'display':
        display = value;
        return;
      case 'edit':
        edit = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Permission>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Permission>(
      where: where != null ? where(Permission.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Permission?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Permission>(
      where: where != null ? where(Permission.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Permission?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Permission>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PermissionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Permission>(
      where: where(Permission.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Permission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Permission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Permission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Permission>(
      where: where != null ? where(Permission.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PermissionInclude include() {
    return PermissionInclude._();
  }

  static PermissionIncludeList includeList({
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermissionTable>? orderByList,
    PermissionInclude? include,
  }) {
    return PermissionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Permission.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Permission.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PermissionImpl extends Permission {
  _PermissionImpl({
    int? id,
    required int fieldId,
    required int roleId,
    required bool display,
    required bool edit,
  }) : super._(
          id: id,
          fieldId: fieldId,
          roleId: roleId,
          display: display,
          edit: edit,
        );

  @override
  Permission copyWith({
    Object? id = _Undefined,
    int? fieldId,
    int? roleId,
    bool? display,
    bool? edit,
  }) {
    return Permission(
      id: id is int? ? id : this.id,
      fieldId: fieldId ?? this.fieldId,
      roleId: roleId ?? this.roleId,
      display: display ?? this.display,
      edit: edit ?? this.edit,
    );
  }
}

class PermissionTable extends _i1.Table {
  PermissionTable({super.tableRelation}) : super(tableName: 'permission') {
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    roleId = _i1.ColumnInt(
      'roleId',
      this,
    );
    display = _i1.ColumnBool(
      'display',
      this,
    );
    edit = _i1.ColumnBool(
      'edit',
      this,
    );
  }

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnInt roleId;

  late final _i1.ColumnBool display;

  late final _i1.ColumnBool edit;

  @override
  List<_i1.Column> get columns => [
        id,
        fieldId,
        roleId,
        display,
        edit,
      ];
}

@Deprecated('Use PermissionTable.t instead.')
PermissionTable tPermission = PermissionTable();

class PermissionInclude extends _i1.IncludeObject {
  PermissionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Permission.t;
}

class PermissionIncludeList extends _i1.IncludeList {
  PermissionIncludeList._({
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Permission.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Permission.t;
}

class PermissionRepository {
  const PermissionRepository._();

  Future<List<Permission>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermissionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Permission>(
      where: where?.call(Permission.t),
      orderBy: orderBy?.call(Permission.t),
      orderByList: orderByList?.call(Permission.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Permission?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? offset,
    _i1.OrderByBuilder<PermissionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PermissionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Permission>(
      where: where?.call(Permission.t),
      orderBy: orderBy?.call(Permission.t),
      orderByList: orderByList?.call(Permission.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Permission?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Permission>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Permission>> insert(
    _i1.Session session,
    List<Permission> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Permission>(
      rows,
      transaction: transaction,
    );
  }

  Future<Permission> insertRow(
    _i1.Session session,
    Permission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Permission>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Permission>> update(
    _i1.Session session,
    List<Permission> rows, {
    _i1.ColumnSelections<PermissionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Permission>(
      rows,
      columns: columns?.call(Permission.t),
      transaction: transaction,
    );
  }

  Future<Permission> updateRow(
    _i1.Session session,
    Permission row, {
    _i1.ColumnSelections<PermissionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Permission>(
      row,
      columns: columns?.call(Permission.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Permission> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Permission>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Permission row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Permission>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PermissionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Permission>(
      where: where(Permission.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PermissionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Permission>(
      where: where?.call(Permission.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
