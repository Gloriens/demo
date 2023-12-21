/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Field extends _i1.TableRow {
  Field({
    int? id,
    required this.templateId,
    required this.type,
    required this.name,
  }) : super(id);

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

  int templateId;

  String type;

  String name;

  @override
  String get tableName => 'field';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'templateId': templateId,
      'type': type,
      'name': name,
    };
  }

  @override
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
      'id': id,
      'templateId': templateId,
      'type': type,
      'name': name,
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

  static Future<List<Field>> find(
    _i1.Session session, {
    FieldExpressionBuilder? where,
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

  static Future<Field?> findSingleRow(
    _i1.Session session, {
    FieldExpressionBuilder? where,
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

  static Future<Field?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Field>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required FieldExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Field>(
      where: where(Field.t),
      transaction: transaction,
    );
  }

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

  static Future<int> count(
    _i1.Session session, {
    FieldExpressionBuilder? where,
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
}

typedef FieldExpressionBuilder = _i1.Expression Function(FieldTable);

class FieldTable extends _i1.Table {
  FieldTable() : super(tableName: 'field');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final templateId = _i1.ColumnInt('templateId');

  final type = _i1.ColumnString('type');

  final name = _i1.ColumnString('name');

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
