/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Role extends _i1.TableRow {
  Role._({
    int? id,
    required this.templateId,
    required this.name,
    required this.display,
    required this.edit,
  }) : super(id);

  factory Role({
    int? id,
    required int templateId,
    required String name,
    required bool display,
    required bool edit,
  }) = _RoleImpl;

  factory Role.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Role(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      templateId: serializationManager
          .deserialize<int>(jsonSerialization['templateId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      display:
          serializationManager.deserialize<bool>(jsonSerialization['display']),
      edit: serializationManager.deserialize<bool>(jsonSerialization['edit']),
    );
  }

  static final t = RoleTable();

  static const db = RoleRepository._();

  int templateId;

  String name;

  bool display;

  bool edit;

  @override
  _i1.Table get table => t;

  Role copyWith({
    int? id,
    int? templateId,
    String? name,
    bool? display,
    bool? edit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
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
      case 'templateId':
        templateId = value;
        return;
      case 'name':
        name = value;
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
  static Future<List<Role>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Role>(
      where: where != null ? where(Role.t) : null,
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
  static Future<Role?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Role>(
      where: where != null ? where(Role.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Role?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Role>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Role>(
      where: where(Role.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Role row, {
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
    Role row, {
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
    Role row, {
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
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Role>(
      where: where != null ? where(Role.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RoleInclude include() {
    return RoleInclude._();
  }

  static RoleIncludeList includeList({
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoleTable>? orderByList,
    RoleInclude? include,
  }) {
    return RoleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Role.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Role.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RoleImpl extends Role {
  _RoleImpl({
    int? id,
    required int templateId,
    required String name,
    required bool display,
    required bool edit,
  }) : super._(
          id: id,
          templateId: templateId,
          name: name,
          display: display,
          edit: edit,
        );

  @override
  Role copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? name,
    bool? display,
    bool? edit,
  }) {
    return Role(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      display: display ?? this.display,
      edit: edit ?? this.edit,
    );
  }
}

class RoleTable extends _i1.Table {
  RoleTable({super.tableRelation}) : super(tableName: 'role') {
    templateId = _i1.ColumnInt(
      'templateId',
      this,
    );
    name = _i1.ColumnString(
      'name',
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

  late final _i1.ColumnInt templateId;

  late final _i1.ColumnString name;

  late final _i1.ColumnBool display;

  late final _i1.ColumnBool edit;

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        name,
        display,
        edit,
      ];
}

@Deprecated('Use RoleTable.t instead.')
RoleTable tRole = RoleTable();

class RoleInclude extends _i1.IncludeObject {
  RoleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Role.t;
}

class RoleIncludeList extends _i1.IncludeList {
  RoleIncludeList._({
    _i1.WhereExpressionBuilder<RoleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Role.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Role.t;
}

class RoleRepository {
  const RoleRepository._();

  Future<List<Role>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Role>(
      where: where?.call(Role.t),
      orderBy: orderBy?.call(Role.t),
      orderByList: orderByList?.call(Role.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Role?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? offset,
    _i1.OrderByBuilder<RoleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Role>(
      where: where?.call(Role.t),
      orderBy: orderBy?.call(Role.t),
      orderByList: orderByList?.call(Role.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Role?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Role>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Role>> insert(
    _i1.Session session,
    List<Role> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Role>(
      rows,
      transaction: transaction,
    );
  }

  Future<Role> insertRow(
    _i1.Session session,
    Role row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Role>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Role>> update(
    _i1.Session session,
    List<Role> rows, {
    _i1.ColumnSelections<RoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Role>(
      rows,
      columns: columns?.call(Role.t),
      transaction: transaction,
    );
  }

  Future<Role> updateRow(
    _i1.Session session,
    Role row, {
    _i1.ColumnSelections<RoleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Role>(
      row,
      columns: columns?.call(Role.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Role> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Role>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Role row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Role>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RoleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Role>(
      where: where(Role.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Role>(
      where: where?.call(Role.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
