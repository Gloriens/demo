/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Field extends _i1.SerializableEntity {
  Field._({
    this.id,
    required this.templateId,
    required this.type,
    required this.name,
  });

  factory Field({
    int? id,
    required int templateId,
    required String type,
    required String name,
  }) = _FieldImpl;

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int templateId;

  String type;

  String name;

  Field copyWith({
    int? id,
    int? templateId,
    String? type,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'type': type,
      'name': name,
    };
  }
}

class _Undefined {}

class _FieldImpl extends Field {
  _FieldImpl({
    int? id,
    required int templateId,
    required String type,
    required String name,
  }) : super._(
          id: id,
          templateId: templateId,
          type: type,
          name: name,
        );

  @override
  Field copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? type,
    String? name,
  }) {
    return Field(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }
}
