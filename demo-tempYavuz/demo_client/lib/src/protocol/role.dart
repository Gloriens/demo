/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Role extends _i1.SerializableEntity {
  Role._({
    this.id,
    required this.templateId,
    required this.name,
    required this.display,
    required this.edit,
  });

  factory Role({
    int? id,
    required int templateId,
    required String name,
    required bool display,
    required bool edit,
  }) = _RoleImpl;

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int templateId;

  String name;

  bool display;

  bool edit;

  Role copyWith({
    int? id,
    int? templateId,
    String? name,
    bool? display,
    bool? edit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
      'display': display,
      'edit': edit,
    };
  }
}

class _Undefined {}

class _RoleImpl extends Role {
  _RoleImpl({
    int? id,
    required int templateId,
    required String name,
    required bool display,
    required bool edit,
  }) : super._(
          id: id,
          templateId: templateId,
          name: name,
          display: display,
          edit: edit,
        );

  @override
  Role copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? name,
    bool? display,
    bool? edit,
  }) {
    return Role(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      display: display ?? this.display,
      edit: edit ?? this.edit,
    );
  }
}
