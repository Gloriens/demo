/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordCounter extends _i1.TableRow {
  RecordCounter._({
    int? id,
    required this.recordId,
    required this.fieldId,
    required this.counterValue,
  }) : super(id);

  factory RecordCounter({
    int? id,
    required int recordId,
    required int fieldId,
    required int counterValue,
  }) = _RecordCounterImpl;

  factory RecordCounter.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordCounter(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      counterValue: serializationManager
          .deserialize<int>(jsonSerialization['counterValue']),
    );
  }

  static final t = RecordCounterTable();

  static const db = RecordCounterRepository._();

  int recordId;

  int fieldId;

  int counterValue;

  @override
  _i1.Table get table => t;

  RecordCounter copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    int? counterValue,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'counterValue': counterValue,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'counterValue': counterValue,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'counterValue': counterValue,
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
      case 'recordId':
        recordId = value;
        return;
      case 'fieldId':
        fieldId = value;
        return;
      case 'counterValue':
        counterValue = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordCounter>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordCounter>(
      where: where != null ? where(RecordCounter.t) : null,
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
  static Future<RecordCounter?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordCounter>(
      where: where != null ? where(RecordCounter.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordCounter?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordCounter>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordCounterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordCounter>(
      where: where(RecordCounter.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordCounter row, {
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
    RecordCounter row, {
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
    RecordCounter row, {
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
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordCounter>(
      where: where != null ? where(RecordCounter.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordCounterInclude include() {
    return RecordCounterInclude._();
  }

  static RecordCounterIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordCounterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordCounterTable>? orderByList,
    RecordCounterInclude? include,
  }) {
    return RecordCounterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordCounter.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordCounter.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordCounterImpl extends RecordCounter {
  _RecordCounterImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required int counterValue,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          counterValue: counterValue,
        );

  @override
  RecordCounter copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    int? counterValue,
  }) {
    return RecordCounter(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      counterValue: counterValue ?? this.counterValue,
    );
  }
}

class RecordCounterTable extends _i1.Table {
  RecordCounterTable({super.tableRelation})
      : super(tableName: 'record_counter') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    counterValue = _i1.ColumnInt(
      'counterValue',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnInt counterValue;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
        fieldId,
        counterValue,
      ];
}

@Deprecated('Use RecordCounterTable.t instead.')
RecordCounterTable tRecordCounter = RecordCounterTable();

class RecordCounterInclude extends _i1.IncludeObject {
  RecordCounterInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordCounter.t;
}

class RecordCounterIncludeList extends _i1.IncludeList {
  RecordCounterIncludeList._({
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordCounter.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordCounter.t;
}

class RecordCounterRepository {
  const RecordCounterRepository._();

  Future<List<RecordCounter>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordCounterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordCounterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordCounter>(
      where: where?.call(RecordCounter.t),
      orderBy: orderBy?.call(RecordCounter.t),
      orderByList: orderByList?.call(RecordCounter.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordCounter?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordCounterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordCounterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordCounter>(
      where: where?.call(RecordCounter.t),
      orderBy: orderBy?.call(RecordCounter.t),
      orderByList: orderByList?.call(RecordCounter.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordCounter?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordCounter>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordCounter>> insert(
    _i1.Session session,
    List<RecordCounter> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordCounter>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordCounter> insertRow(
    _i1.Session session,
    RecordCounter row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordCounter>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordCounter>> update(
    _i1.Session session,
    List<RecordCounter> rows, {
    _i1.ColumnSelections<RecordCounterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordCounter>(
      rows,
      columns: columns?.call(RecordCounter.t),
      transaction: transaction,
    );
  }

  Future<RecordCounter> updateRow(
    _i1.Session session,
    RecordCounter row, {
    _i1.ColumnSelections<RecordCounterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordCounter>(
      row,
      columns: columns?.call(RecordCounter.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordCounter> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordCounter>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordCounter row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordCounter>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordCounterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordCounter>(
      where: where(RecordCounter.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordCounterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordCounter>(
      where: where?.call(RecordCounter.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
