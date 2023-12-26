/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Role extends _i1.TableRow {
  Role({
    int? id,
    required this.templateId,
    required this.name,
    required this.display,
    required this.edit,
  }) : super(id);

  factory Role.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Role(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      templateId: serializationManager
          .deserialize<int>(jsonSerialization['templateId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      display:
          serializationManager.deserialize<bool>(jsonSerialization['display']),
      edit: serializationManager.deserialize<bool>(jsonSerialization['edit']),
    );
  }

  static final t = RoleTable();

  int templateId;

  String name;

  bool display;

  bool edit;

  @override
  String get tableName => 'role';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
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
      case 'display':
        display = value;
        return;
      case 'edit':
        edit = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Role>> find(
    _i1.Session session, {
    RoleExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Role>(
      where: where != null ? where(Role.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Role?> findSingleRow(
    _i1.Session session, {
    RoleExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Role>(
      where: where != null ? where(Role.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Role?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Role>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required RoleExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Role>(
      where: where(Role.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Role row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Role row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Role row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    RoleExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Role>(
      where: where != null ? where(Role.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef RoleExpressionBuilder = _i1.Expression Function(RoleTable);

class RoleTable extends _i1.Table {
  RoleTable() : super(tableName: 'role');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final templateId = _i1.ColumnInt('templateId');

  final name = _i1.ColumnString('name');

  final display = _i1.ColumnBool('display');

  final edit = _i1.ColumnBool('edit');

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        name,
        display,
        edit,
      ];
}

@Deprecated('Use RoleTable.t instead.')
RoleTable tRole = RoleTable();
