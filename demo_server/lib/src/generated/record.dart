/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Record extends _i1.TableRow {
  Record({
    int? id,
    required this.templateId,
    required this.name,
    required this.date,
  }) : super(id);

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

  int templateId;

  String name;

  DateTime date;

  @override
  String get tableName => 'record';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'date': date,
    };
  }

  @override
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
      'id': id,
      'templateId': templateId,
      'name': name,
      'date': date,
    };
  }

  @override
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

  static Future<List<Record>> find(
    _i1.Session session, {
    RecordExpressionBuilder? where,
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

  static Future<Record?> findSingleRow(
    _i1.Session session, {
    RecordExpressionBuilder? where,
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

  static Future<Record?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Record>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required RecordExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Record>(
      where: where(Record.t),
      transaction: transaction,
    );
  }

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

  static Future<int> count(
    _i1.Session session, {
    RecordExpressionBuilder? where,
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
}

typedef RecordExpressionBuilder = _i1.Expression Function(RecordTable);

class RecordTable extends _i1.Table {
  RecordTable() : super(tableName: 'record');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final templateId = _i1.ColumnInt('templateId');

  final name = _i1.ColumnString('name');

  final date = _i1.ColumnDateTime('date');

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
