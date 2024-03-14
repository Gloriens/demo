/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordText extends _i1.TableRow {
  RecordText._({
    int? id,
    required this.recordId,
    required this.fieldId,
    required this.contentText,
  }) : super(id);

  factory RecordText({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentText,
  }) = _RecordTextImpl;

  factory RecordText.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordText(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      contentText: serializationManager
          .deserialize<String>(jsonSerialization['contentText']),
    );
  }

  static final t = RecordTextTable();

  static const db = RecordTextRepository._();

  int recordId;

  int fieldId;

  String contentText;

  @override
  _i1.Table get table => t;

  RecordText copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    String? contentText,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentText': contentText,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentText': contentText,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentText': contentText,
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
      case 'contentText':
        contentText = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordText>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordText>(
      where: where != null ? where(RecordText.t) : null,
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
  static Future<RecordText?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordText>(
      where: where != null ? where(RecordText.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordText?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordText>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordTextTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordText>(
      where: where(RecordText.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordText row, {
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
    RecordText row, {
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
    RecordText row, {
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
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordText>(
      where: where != null ? where(RecordText.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordTextInclude include() {
    return RecordTextInclude._();
  }

  static RecordTextIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordTextTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTextTable>? orderByList,
    RecordTextInclude? include,
  }) {
    return RecordTextIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordText.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordText.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordTextImpl extends RecordText {
  _RecordTextImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentText,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          contentText: contentText,
        );

  @override
  RecordText copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    String? contentText,
  }) {
    return RecordText(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      contentText: contentText ?? this.contentText,
    );
  }
}

class RecordTextTable extends _i1.Table {
  RecordTextTable({super.tableRelation}) : super(tableName: 'record_text') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    contentText = _i1.ColumnString(
      'contentText',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnString contentText;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
        fieldId,
        contentText,
      ];
}

@Deprecated('Use RecordTextTable.t instead.')
RecordTextTable tRecordText = RecordTextTable();

class RecordTextInclude extends _i1.IncludeObject {
  RecordTextInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordText.t;
}

class RecordTextIncludeList extends _i1.IncludeList {
  RecordTextIncludeList._({
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordText.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordText.t;
}

class RecordTextRepository {
  const RecordTextRepository._();

  Future<List<RecordText>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordTextTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTextTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordText>(
      where: where?.call(RecordText.t),
      orderBy: orderBy?.call(RecordText.t),
      orderByList: orderByList?.call(RecordText.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordText?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordTextTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordTextTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordText>(
      where: where?.call(RecordText.t),
      orderBy: orderBy?.call(RecordText.t),
      orderByList: orderByList?.call(RecordText.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordText?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordText>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordText>> insert(
    _i1.Session session,
    List<RecordText> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordText>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordText> insertRow(
    _i1.Session session,
    RecordText row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordText>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordText>> update(
    _i1.Session session,
    List<RecordText> rows, {
    _i1.ColumnSelections<RecordTextTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordText>(
      rows,
      columns: columns?.call(RecordText.t),
      transaction: transaction,
    );
  }

  Future<RecordText> updateRow(
    _i1.Session session,
    RecordText row, {
    _i1.ColumnSelections<RecordTextTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordText>(
      row,
      columns: columns?.call(RecordText.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordText> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordText>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordText row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordText>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordTextTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordText>(
      where: where(RecordText.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordTextTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordText>(
      where: where?.call(RecordText.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
