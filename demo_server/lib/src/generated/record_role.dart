/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordRole extends _i1.TableRow {
  RecordRole._({
    int? id,
    required this.userId,
    required this.recordId,
    required this.roleId,
    required this.name,
  }) : super(id);

  factory RecordRole({
    int? id,
    required int userId,
    required int recordId,
    required int roleId,
    required String name,
  }) = _RecordRoleImpl;

  factory RecordRole.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordRole(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      roleId:
          serializationManager.deserialize<int>(jsonSerialization['roleId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = RecordRoleTable();

  static const db = RecordRoleRepository._();

  int userId;

  int recordId;

  int roleId;

  String name;

  @override
  _i1.Table get table => t;

  RecordRole copyWith({
    int? id,
    int? userId,
    int? recordId,
    int? roleId,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'recordId': recordId,
      'roleId': roleId,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'recordId': recordId,
      'roleId': roleId,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'recordId': recordId,
      'roleId': roleId,
      'name': name,
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
      case 'userId':
        userId = value;
        return;
      case 'recordId':
        recordId = value;
        return;
      case 'roleId':
        roleId = value;
        return;
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordRole>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordRole>(
      where: where != null ? where(RecordRole.t) : null,
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
  static Future<RecordRole?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordRole>(
      where: where != null ? where(RecordRole.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordRole?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordRole>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordRoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordRole>(
      where: where(RecordRole.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordRole row, {
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
    RecordRole row, {
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
    RecordRole row, {
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
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordRole>(
      where: where != null ? where(RecordRole.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordRoleInclude include() {
    return RecordRoleInclude._();
  }

  static RecordRoleIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordRoleTable>? orderByList,
    RecordRoleInclude? include,
  }) {
    return RecordRoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordRole.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordRole.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordRoleImpl extends RecordRole {
  _RecordRoleImpl({
    int? id,
    required int userId,
    required int recordId,
    required int roleId,
    required String name,
  }) : super._(
          id: id,
          userId: userId,
          recordId: recordId,
          roleId: roleId,
          name: name,
        );

  @override
  RecordRole copyWith({
    Object? id = _Undefined,
    int? userId,
    int? recordId,
    int? roleId,
    String? name,
  }) {
    return RecordRole(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      recordId: recordId ?? this.recordId,
      roleId: roleId ?? this.roleId,
      name: name ?? this.name,
    );
  }
}

class RecordRoleTable extends _i1.Table {
  RecordRoleTable({super.tableRelation}) : super(tableName: 'record_role') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    roleId = _i1.ColumnInt(
      'roleId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt roleId;

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        recordId,
        roleId,
        name,
      ];
}

@Deprecated('Use RecordRoleTable.t instead.')
RecordRoleTable tRecordRole = RecordRoleTable();

class RecordRoleInclude extends _i1.IncludeObject {
  RecordRoleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordRole.t;
}

class RecordRoleIncludeList extends _i1.IncludeList {
  RecordRoleIncludeList._({
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordRole.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordRole.t;
}

class RecordRoleRepository {
  const RecordRoleRepository._();

  Future<List<RecordRole>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordRoleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordRole>(
      where: where?.call(RecordRole.t),
      orderBy: orderBy?.call(RecordRole.t),
      orderByList: orderByList?.call(RecordRole.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordRole?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordRoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordRoleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordRole>(
      where: where?.call(RecordRole.t),
      orderBy: orderBy?.call(RecordRole.t),
      orderByList: orderByList?.call(RecordRole.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordRole?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordRole>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordRole>> insert(
    _i1.Session session,
    List<RecordRole> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordRole>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordRole> insertRow(
    _i1.Session session,
    RecordRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordRole>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordRole>> update(
    _i1.Session session,
    List<RecordRole> rows, {
    _i1.ColumnSelections<RecordRoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordRole>(
      rows,
      columns: columns?.call(RecordRole.t),
      transaction: transaction,
    );
  }

  Future<RecordRole> updateRow(
    _i1.Session session,
    RecordRole row, {
    _i1.ColumnSelections<RecordRoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordRole>(
      row,
      columns: columns?.call(RecordRole.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordRole> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordRole>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordRole row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordRole>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordRoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordRole>(
      where: where(RecordRole.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordRoleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordRole>(
      where: where?.call(RecordRole.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
