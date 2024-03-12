/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Template extends _i1.TableRow {
  Template._({
    int? id,
    required this.userId,
    required this.name,
  }) : super(id);

  factory Template({
    int? id,
    required int userId,
    required String name,
  }) = _TemplateImpl;

  factory Template.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Template(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = TemplateTable();

  static const db = TemplateRepository._();

  int userId;

  String name;

  @override
  _i1.Table get table => t;

  Template copyWith({
    int? id,
    int? userId,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
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
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Template>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Template>(
      where: where != null ? where(Template.t) : null,
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
  static Future<Template?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Template>(
      where: where != null ? where(Template.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Template?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Template>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TemplateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Template>(
      where: where(Template.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Template row, {
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
    Template row, {
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
    Template row, {
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
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Template>(
      where: where != null ? where(Template.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TemplateInclude include() {
    return TemplateInclude._();
  }

  static TemplateIncludeList includeList({
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TemplateTable>? orderByList,
    TemplateInclude? include,
  }) {
    return TemplateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Template.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Template.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TemplateImpl extends Template {
  _TemplateImpl({
    int? id,
    required int userId,
    required String name,
  }) : super._(
          id: id,
          userId: userId,
          name: name,
        );

  @override
  Template copyWith({
    Object? id = _Undefined,
    int? userId,
    String? name,
  }) {
    return Template(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
    );
  }
}

class TemplateTable extends _i1.Table {
  TemplateTable({super.tableRelation}) : super(tableName: 'template') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        name,
      ];
}

@Deprecated('Use TemplateTable.t instead.')
TemplateTable tTemplate = TemplateTable();

class TemplateInclude extends _i1.IncludeObject {
  TemplateInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Template.t;
}

class TemplateIncludeList extends _i1.IncludeList {
  TemplateIncludeList._({
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Template.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Template.t;
}

class TemplateRepository {
  const TemplateRepository._();

  Future<List<Template>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TemplateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Template>(
      where: where?.call(Template.t),
      orderBy: orderBy?.call(Template.t),
      orderByList: orderByList?.call(Template.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Template?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? offset,
    _i1.OrderByBuilder<TemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TemplateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Template>(
      where: where?.call(Template.t),
      orderBy: orderBy?.call(Template.t),
      orderByList: orderByList?.call(Template.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Template?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Template>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Template>> insert(
    _i1.Session session,
    List<Template> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Template>(
      rows,
      transaction: transaction,
    );
  }

  Future<Template> insertRow(
    _i1.Session session,
    Template row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Template>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Template>> update(
    _i1.Session session,
    List<Template> rows, {
    _i1.ColumnSelections<TemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Template>(
      rows,
      columns: columns?.call(Template.t),
      transaction: transaction,
    );
  }

  Future<Template> updateRow(
    _i1.Session session,
    Template row, {
    _i1.ColumnSelections<TemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Template>(
      row,
      columns: columns?.call(Template.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Template> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Template>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Template row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Template>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TemplateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Template>(
      where: where(Template.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TemplateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Template>(
      where: where?.call(Template.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
