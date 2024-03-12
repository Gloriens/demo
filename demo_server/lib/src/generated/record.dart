/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Record extends _i1.TableRow {
  Record._({
    int? id,
    required this.templateId,
    required this.name,
    required this.date,
  }) : super(id);

  factory Record({
    int? id,
    required int templateId,
    required String name,
    required DateTime date,
  }) = _RecordImpl;

  factory Record.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Record(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      templateId: serializationManager
          .deserialize<int>(jsonSerialization['templateId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
    );
  }

  static final t = RecordTable();

  static const db = RecordRepository._();

  int templateId;

  String name;

  DateTime date;

  @override
  _i1.Table get table => t;

  Record copyWith({
    int? id,
    int? templateId,
    String? name,
    DateTime? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
      'date': date.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'date': date,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
      'date': date.toJson(),
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
      case 'date':
        date = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Record>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Record>(
      where: where != null ? where(Record.t) : null,
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
  static Future<Record?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Record>(
      where: where != null ? where(Record.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Record?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Record>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Record>(
      where: where(Record.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Record row, {
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
    Record row, {
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
    Record row, {
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
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Record>(
      where: where != null ? where(Record.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordInclude include() {
    return RecordInclude._();
  }

  static RecordIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTable>? orderByList,
    RecordInclude? include,
  }) {
    return RecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Record.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Record.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordImpl extends Record {
  _RecordImpl({
    int? id,
    required int templateId,
    required String name,
    required DateTime date,
  }) : super._(
          id: id,
          templateId: templateId,
          name: name,
          date: date,
        );

  @override
  Record copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? name,
    DateTime? date,
  }) {
    return Record(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      date: date ?? this.date,
    );
  }
}

class RecordTable extends _i1.Table {
  RecordTable({super.tableRelation}) : super(tableName: 'record') {
    templateId = _i1.ColumnInt(
      'templateId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
  }

  late final _i1.ColumnInt templateId;

  late final _i1.ColumnString name;

  late final _i1.ColumnDateTime date;

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        name,
        date,
      ];
}

@Deprecated('Use RecordTable.t instead.')
RecordTable tRecord = RecordTable();

class RecordInclude extends _i1.IncludeObject {
  RecordInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Record.t;
}

class RecordIncludeList extends _i1.IncludeList {
  RecordIncludeList._({
    _i1.WhereExpressionBuilder<RecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Record.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Record.t;
}

class RecordRepository {
  const RecordRepository._();

  Future<List<Record>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Record>(
      where: where?.call(Record.t),
      orderBy: orderBy?.call(Record.t),
      orderByList: orderByList?.call(Record.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Record?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Record>(
      where: where?.call(Record.t),
      orderBy: orderBy?.call(Record.t),
      orderByList: orderByList?.call(Record.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Record?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Record>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Record>> insert(
    _i1.Session session,
    List<Record> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Record>(
      rows,
      transaction: transaction,
    );
  }

  Future<Record> insertRow(
    _i1.Session session,
    Record row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Record>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Record>> update(
    _i1.Session session,
    List<Record> rows, {
    _i1.ColumnSelections<RecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Record>(
      rows,
      columns: columns?.call(Record.t),
      transaction: transaction,
    );
  }

  Future<Record> updateRow(
    _i1.Session session,
    Record row, {
    _i1.ColumnSelections<RecordTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Record>(
      row,
      columns: columns?.call(Record.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Record> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Record>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Record row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Record>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Record>(
      where: where(Record.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Record>(
      where: where?.call(Record.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
