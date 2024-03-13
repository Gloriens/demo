/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordBool extends _i1.TableRow {
  RecordBool._({
    int? id,
    required this.recordId,
    required this.fieldId,
    required this.contentBool,
  }) : super(id);

  factory RecordBool({
    int? id,
    required int recordId,
    required int fieldId,
    required bool contentBool,
  }) = _RecordBoolImpl;

  factory RecordBool.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordBool(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      contentBool: serializationManager
          .deserialize<bool>(jsonSerialization['contentBool']),
    );
  }

  static final t = RecordBoolTable();

  static const db = RecordBoolRepository._();

  int recordId;

  int fieldId;

  bool contentBool;

  @override
  _i1.Table get table => t;

  RecordBool copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    bool? contentBool,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentBool': contentBool,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentBool': contentBool,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentBool': contentBool,
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
      case 'contentBool':
        contentBool = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordBool>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordBool>(
      where: where != null ? where(RecordBool.t) : null,
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
  static Future<RecordBool?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordBool>(
      where: where != null ? where(RecordBool.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordBool?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordBool>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordBoolTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordBool>(
      where: where(RecordBool.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordBool row, {
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
    RecordBool row, {
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
    RecordBool row, {
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
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordBool>(
      where: where != null ? where(RecordBool.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordBoolInclude include() {
    return RecordBoolInclude._();
  }

  static RecordBoolIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordBoolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordBoolTable>? orderByList,
    RecordBoolInclude? include,
  }) {
    return RecordBoolIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordBool.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordBool.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordBoolImpl extends RecordBool {
  _RecordBoolImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required bool contentBool,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          contentBool: contentBool,
        );

  @override
  RecordBool copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    bool? contentBool,
  }) {
    return RecordBool(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      contentBool: contentBool ?? this.contentBool,
    );
  }
}

class RecordBoolTable extends _i1.Table {
  RecordBoolTable({super.tableRelation}) : super(tableName: 'record_bool') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    contentBool = _i1.ColumnBool(
      'contentBool',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnBool contentBool;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
        fieldId,
        contentBool,
      ];
}

@Deprecated('Use RecordBoolTable.t instead.')
RecordBoolTable tRecordBool = RecordBoolTable();

class RecordBoolInclude extends _i1.IncludeObject {
  RecordBoolInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordBool.t;
}

class RecordBoolIncludeList extends _i1.IncludeList {
  RecordBoolIncludeList._({
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordBool.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordBool.t;
}

class RecordBoolRepository {
  const RecordBoolRepository._();

  Future<List<RecordBool>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordBoolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordBoolTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordBool>(
      where: where?.call(RecordBool.t),
      orderBy: orderBy?.call(RecordBool.t),
      orderByList: orderByList?.call(RecordBool.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordBool?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordBoolTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordBoolTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordBool>(
      where: where?.call(RecordBool.t),
      orderBy: orderBy?.call(RecordBool.t),
      orderByList: orderByList?.call(RecordBool.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordBool?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordBool>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordBool>> insert(
    _i1.Session session,
    List<RecordBool> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordBool>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordBool> insertRow(
    _i1.Session session,
    RecordBool row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordBool>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordBool>> update(
    _i1.Session session,
    List<RecordBool> rows, {
    _i1.ColumnSelections<RecordBoolTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordBool>(
      rows,
      columns: columns?.call(RecordBool.t),
      transaction: transaction,
    );
  }

  Future<RecordBool> updateRow(
    _i1.Session session,
    RecordBool row, {
    _i1.ColumnSelections<RecordBoolTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordBool>(
      row,
      columns: columns?.call(RecordBool.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordBool> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordBool>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordBool row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordBool>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordBoolTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordBool>(
      where: where(RecordBool.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordBoolTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordBool>(
      where: where?.call(RecordBool.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
