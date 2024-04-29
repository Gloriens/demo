/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RecordImage extends _i1.TableRow {
  RecordImage._({
    int? id,
    required this.recordId,
    required this.fieldId,
    required this.imageURL,
  }) : super(id);

  factory RecordImage({
    int? id,
    required int recordId,
    required int fieldId,
    required String imageURL,
  }) = _RecordImageImpl;

  factory RecordImage.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordImage(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      imageURL: serializationManager
          .deserialize<String>(jsonSerialization['imageURL']),
    );
  }

  static final t = RecordImageTable();

  static const db = RecordImageRepository._();

  int recordId;

  int fieldId;

  String imageURL;

  @override
  _i1.Table get table => t;

  RecordImage copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    String? imageURL,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'imageURL': imageURL,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'imageURL': imageURL,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'imageURL': imageURL,
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
      case 'imageURL':
        imageURL = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<RecordImage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<RecordImage>(
      where: where != null ? where(RecordImage.t) : null,
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
  static Future<RecordImage?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<RecordImage>(
      where: where != null ? where(RecordImage.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<RecordImage?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<RecordImage>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordImageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RecordImage>(
      where: where(RecordImage.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    RecordImage row, {
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
    RecordImage row, {
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
    RecordImage row, {
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
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RecordImage>(
      where: where != null ? where(RecordImage.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static RecordImageInclude include() {
    return RecordImageInclude._();
  }

  static RecordImageIncludeList includeList({
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordImageTable>? orderByList,
    RecordImageInclude? include,
  }) {
    return RecordImageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RecordImage.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RecordImage.t),
      include: include,
    );
  }
}

class _Undefined {}

class _RecordImageImpl extends RecordImage {
  _RecordImageImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required String imageURL,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          imageURL: imageURL,
        );

  @override
  RecordImage copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    String? imageURL,
  }) {
    return RecordImage(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      imageURL: imageURL ?? this.imageURL,
    );
  }
}

class RecordImageTable extends _i1.Table {
  RecordImageTable({super.tableRelation}) : super(tableName: 'record_image') {
    recordId = _i1.ColumnInt(
      'recordId',
      this,
    );
    fieldId = _i1.ColumnInt(
      'fieldId',
      this,
    );
    imageURL = _i1.ColumnString(
      'imageURL',
      this,
    );
  }

  late final _i1.ColumnInt recordId;

  late final _i1.ColumnInt fieldId;

  late final _i1.ColumnString imageURL;

  @override
  List<_i1.Column> get columns => [
        id,
        recordId,
        fieldId,
        imageURL,
      ];
}

@Deprecated('Use RecordImageTable.t instead.')
RecordImageTable tRecordImage = RecordImageTable();

class RecordImageInclude extends _i1.IncludeObject {
  RecordImageInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => RecordImage.t;
}

class RecordImageIncludeList extends _i1.IncludeList {
  RecordImageIncludeList._({
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RecordImage.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RecordImage.t;
}

class RecordImageRepository {
  const RecordImageRepository._();

  Future<List<RecordImage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecordImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordImageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<RecordImage>(
      where: where?.call(RecordImage.t),
      orderBy: orderBy?.call(RecordImage.t),
      orderByList: orderByList?.call(RecordImage.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordImage?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecordImageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecordImageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<RecordImage>(
      where: where?.call(RecordImage.t),
      orderBy: orderBy?.call(RecordImage.t),
      orderByList: orderByList?.call(RecordImage.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<RecordImage?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<RecordImage>(
      id,
      transaction: transaction,
    );
  }

  Future<List<RecordImage>> insert(
    _i1.Session session,
    List<RecordImage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<RecordImage>(
      rows,
      transaction: transaction,
    );
  }

  Future<RecordImage> insertRow(
    _i1.Session session,
    RecordImage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<RecordImage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RecordImage>> update(
    _i1.Session session,
    List<RecordImage> rows, {
    _i1.ColumnSelections<RecordImageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<RecordImage>(
      rows,
      columns: columns?.call(RecordImage.t),
      transaction: transaction,
    );
  }

  Future<RecordImage> updateRow(
    _i1.Session session,
    RecordImage row, {
    _i1.ColumnSelections<RecordImageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<RecordImage>(
      row,
      columns: columns?.call(RecordImage.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<RecordImage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<RecordImage>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    RecordImage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<RecordImage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecordImageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<RecordImage>(
      where: where(RecordImage.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecordImageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<RecordImage>(
      where: where?.call(RecordImage.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
