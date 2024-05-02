/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Permission extends _i1.SerializableEntity {
  Permission._({
    this.id,
    required this.fieldId,
    required this.roleId,
    required this.display,
    required this.edit,
  });

  factory Permission({
    int? id,
    required int fieldId,
    required int roleId,
    required bool display,
    required bool edit,
  }) = _PermissionImpl;

  factory Permission.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Permission(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      roleId:
          serializationManager.deserialize<int>(jsonSerialization['roleId']),
      display:
          serializationManager.deserialize<bool>(jsonSerialization['display']),
      edit: serializationManager.deserialize<bool>(jsonSerialization['edit']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int fieldId;

  int roleId;

  bool display;

  bool edit;

  Permission copyWith({
    int? id,
    int? fieldId,
    int? roleId,
    bool? display,
    bool? edit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fieldId': fieldId,
      'roleId': roleId,
      'display': display,
      'edit': edit,
    };
  }
}

class _Undefined {}

class _PermissionImpl extends Permission {
  _PermissionImpl({
    int? id,
    required int fieldId,
    required int roleId,
    required bool display,
    required bool edit,
  }) : super._(
          id: id,
          fieldId: fieldId,
          roleId: roleId,
          display: display,
          edit: edit,
        );

  @override
  Permission copyWith({
    Object? id = _Undefined,
    int? fieldId,
    int? roleId,
    bool? display,
    bool? edit,
  }) {
    return Permission(
      id: id is int? ? id : this.id,
      fieldId: fieldId ?? this.fieldId,
      roleId: roleId ?? this.roleId,
      display: display ?? this.display,
      edit: edit ?? this.edit,
    );
  }
}
