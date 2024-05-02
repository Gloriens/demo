/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class RecordRole extends _i1.SerializableEntity {
  RecordRole._({
    this.id,
    required this.userId,
    required this.recordId,
    required this.roleId,
    required this.name,
  });

  factory RecordRole({
    int? id,
    required int userId,
    required int recordId,
    required int roleId,
    required String name,
  }) = _RecordRoleImpl;

  factory RecordRole.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordRole(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      roleId:
          serializationManager.deserialize<int>(jsonSerialization['roleId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int recordId;

  int roleId;

  String name;

  RecordRole copyWith({
    int? id,
    int? userId,
    int? recordId,
    int? roleId,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'recordId': recordId,
      'roleId': roleId,
      'name': name,
    };
  }
}

class _Undefined {}

class _RecordRoleImpl extends RecordRole {
  _RecordRoleImpl({
    int? id,
    required int userId,
    required int recordId,
    required int roleId,
    required String name,
  }) : super._(
          id: id,
          userId: userId,
          recordId: recordId,
          roleId: roleId,
          name: name,
        );

  @override
  RecordRole copyWith({
    Object? id = _Undefined,
    int? userId,
    int? recordId,
    int? roleId,
    String? name,
  }) {
    return RecordRole(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      recordId: recordId ?? this.recordId,
      roleId: roleId ?? this.roleId,
      name: name ?? this.name,
    );
  }
}
