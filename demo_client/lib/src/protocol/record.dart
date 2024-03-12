/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Record extends _i1.SerializableEntity {
  Record._({
    this.id,
    required this.templateId,
    required this.name,
    required this.date,
  });

  factory Record({
    int? id,
    required int templateId,
    required String name,
    required DateTime date,
  }) = _RecordImpl;

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int templateId;

  String name;

  DateTime date;

  Record copyWith({
    int? id,
    int? templateId,
    String? name,
    DateTime? date,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      'name': name,
      'date': date.toJson(),
    };
  }
}

class _Undefined {}

class _RecordImpl extends Record {
  _RecordImpl({
    int? id,
    required int templateId,
    required String name,
    required DateTime date,
  }) : super._(
          id: id,
          templateId: templateId,
          name: name,
          date: date,
        );

  @override
  Record copyWith({
    Object? id = _Undefined,
    int? templateId,
    String? name,
    DateTime? date,
  }) {
    return Record(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      date: date ?? this.date,
    );
  }
}
