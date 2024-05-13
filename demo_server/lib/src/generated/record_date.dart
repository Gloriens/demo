/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordDate extends _i1.TableRow {
  RecordDate._({
    int? id,
    required this.recordId,
    required this.fieldId,
    required this.contentDate,
  }) : super(id);

  factory RecordDate({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentDate,
  }) = _RecordDateImpl;

  factory RecordDate.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordDate(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      contentDate: serializationManager
          .deserialize<String>(jsonSerialization['contentDate']),
    );
  }

  static final t = RecordDateTable();

  static const db = RecordDateRepository._();

  int recordId;

  int fieldId;

  String contentDate;

  @override
  _i1.Table get table => t;

  RecordDate copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    String? contentDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentDate': contentDate,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentDate': contentDate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentDate': contentDate,
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
      case 'contentDate':
        contentDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordDate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordDate>(
      where: where != null ? where(RecordDate.t) : null,
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
  static Future<RecordDate?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordDate>(
      where: where != null ? where(RecordDate.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordDate?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordDate>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordDateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordDate>(
      where: where(RecordDate.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordDate row, {
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
    RecordDate row, {
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
    RecordDate row, {
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
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordDate>(
      where: where != null ? where(RecordDate.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordDateInclude include() {
    return RecordDateInclude._();
  }

  static RecordDateIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordDateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordDateTable>? orderByList,
    RecordDateInclude? include,
  }) {
    return RecordDateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordDate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordDate.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordDateImpl extends RecordDate {
  _RecordDateImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentDate,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          contentDate: contentDate,
        );

  @override
  RecordDate copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    String? contentDate,
  }) {
    return RecordDate(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      contentDate: contentDate ?? this.contentDate,
    );
  }
}

class RecordDateTable extends _i1.Table {
  RecordDateTable({super.tableRelation}) : super(tableName: 'record_date') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    contentDate = _i1.ColumnString(
      'contentDate',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnString contentDate;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
        fieldId,
        contentDate,
      ];
}

@Deprecated('Use RecordDateTable.t instead.')
RecordDateTable tRecordDate = RecordDateTable();

class RecordDateInclude extends _i1.IncludeObject {
  RecordDateInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordDate.t;
}

class RecordDateIncludeList extends _i1.IncludeList {
  RecordDateIncludeList._({
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordDate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordDate.t;
}

class RecordDateRepository {
  const RecordDateRepository._();

  Future<List<RecordDate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordDateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordDateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordDate>(
      where: where?.call(RecordDate.t),
      orderBy: orderBy?.call(RecordDate.t),
      orderByList: orderByList?.call(RecordDate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordDate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordDateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordDateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordDate>(
      where: where?.call(RecordDate.t),
      orderBy: orderBy?.call(RecordDate.t),
      orderByList: orderByList?.call(RecordDate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordDate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordDate>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordDate>> insert(
    _i1.Session session,
    List<RecordDate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordDate>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordDate> insertRow(
    _i1.Session session,
    RecordDate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordDate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordDate>> update(
    _i1.Session session,
    List<RecordDate> rows, {
    _i1.ColumnSelections<RecordDateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordDate>(
      rows,
      columns: columns?.call(RecordDate.t),
      transaction: transaction,
    );
  }

  Future<RecordDate> updateRow(
    _i1.Session session,
    RecordDate row, {
    _i1.ColumnSelections<RecordDateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordDate>(
      row,
      columns: columns?.call(RecordDate.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordDate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordDate>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordDate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordDate>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordDateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordDate>(
      where: where(RecordDate.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordDateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordDate>(
      where: where?.call(RecordDate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
