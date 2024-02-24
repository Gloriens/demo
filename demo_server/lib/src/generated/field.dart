/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Field extends _i1.TableRow {
  Field._({
    int? id,
    required this.templateId,
    required this.type,
    required this.name,
  }) : super(id);

  factory Field({
    int? id,
    required int templateId,
    required String type,
    required String name,
  }) = _FieldImpl;

  factory Field.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Field(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      templateId: serializationManager
          .deserialize<int>(jsonSerialization['templateId']),
      type: serializationManager.deserialize<String>(jsonSerialization['type']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = FieldTable();

  static const db = FieldRepository._();

  int templateId;

  String type;

  String name;

  @override
  _i1.Table get table => t;

  Field copyWith({
    int? id,
    int? templateId,
    String? type,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'type': type,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'templateId': templateId,
      'type': type,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'type': type,
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
      case 'templateId':
        templateId = value;
        return;
      case 'type':
        type = value;
        return;
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Field>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Field>(
      where: where != null ? where(Field.t) : null,
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
  static Future<Field?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Field>(
      where: where != null ? where(Field.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Field?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Field>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FieldTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Field>(
      where: where(Field.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Field row, {
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
    Field row, {
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
    Field row, {
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
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Field>(
      where: where != null ? where(Field.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FieldInclude include() {
    return FieldInclude._();
  }

  static FieldIncludeList includeList({
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FieldTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FieldTable>? orderByList,
    FieldInclude? include,
  }) {
    return FieldIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Field.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Field.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FieldImpl extends Field {
  _FieldImpl({
    int? id,
    required int templateId,
    required String type,
    required String name,
  }) : super._(
          id: id,
          templateId: templateId,
          type: type,
          name: name,
        );

  @override
  Field copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? type,
    String? name,
  }) {
    return Field(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }
}

class FieldTable extends _i1.Table {
  FieldTable({super.tableRelation}) : super(tableName: 'field') {
    templateId = _i1.ColumnInt(
      'templateId',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnInt templateId;

  late final _i1.ColumnString type;

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        type,
        name,
      ];
}

@Deprecated('Use FieldTable.t instead.')
FieldTable tField = FieldTable();

class FieldInclude extends _i1.IncludeObject {
  FieldInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Field.t;
}

class FieldIncludeList extends _i1.IncludeList {
  FieldIncludeList._({
    _i1.WhereExpressionBuilder<FieldTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Field.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Field.t;
}

class FieldRepository {
  const FieldRepository._();

  Future<List<Field>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FieldTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FieldTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Field>(
      where: where?.call(Field.t),
      orderBy: orderBy?.call(Field.t),
      orderByList: orderByList?.call(Field.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Field?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? offset,
    _i1.OrderByBuilder<FieldTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FieldTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Field>(
      where: where?.call(Field.t),
      orderBy: orderBy?.call(Field.t),
      orderByList: orderByList?.call(Field.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Field?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Field>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Field>> insert(
    _i1.Session session,
    List<Field> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Field>(
      rows,
      transaction: transaction,
    );
  }

  Future<Field> insertRow(
    _i1.Session session,
    Field row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Field>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Field>> update(
    _i1.Session session,
    List<Field> rows, {
    _i1.ColumnSelections<FieldTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Field>(
      rows,
      columns: columns?.call(Field.t),
      transaction: transaction,
    );
  }

  Future<Field> updateRow(
    _i1.Session session,
    Field row, {
    _i1.ColumnSelections<FieldTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Field>(
      row,
      columns: columns?.call(Field.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Field> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Field>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Field row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Field>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FieldTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Field>(
      where: where(Field.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FieldTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Field>(
      where: where?.call(Field.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
