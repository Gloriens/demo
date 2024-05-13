/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class RecordDate extends _i1.SerializableEntity {
  RecordDate._({
    this.id,
    required this.recordId,
    required this.fieldId,
    required this.contentDate,
  });

  factory RecordDate({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentDate,
  }) = _RecordDateImpl;

  factory RecordDate.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordDate(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      recordId:
          serializationManager.deserialize<int>(jsonSerialization['recordId']),
      fieldId:
          serializationManager.deserialize<int>(jsonSerialization['fieldId']),
      contentDate: serializationManager
          .deserialize<String>(jsonSerialization['contentDate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int recordId;

  int fieldId;

  String contentDate;

  RecordDate copyWith({
    int? id,
    int? recordId,
    int? fieldId,
    String? contentDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'fieldId': fieldId,
      'contentDate': contentDate,
    };
  }
}

class _Undefined {}

class _RecordDateImpl extends RecordDate {
  _RecordDateImpl({
    int? id,
    required int recordId,
    required int fieldId,
    required String contentDate,
  }) : super._(
          id: id,
          recordId: recordId,
          fieldId: fieldId,
          contentDate: contentDate,
        );

  @override
  RecordDate copyWith({
    Object? id = _Undefined,
    int? recordId,
    int? fieldId,
    String? contentDate,
  }) {
    return RecordDate(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      fieldId: fieldId ?? this.fieldId,
      contentDate: contentDate ?? this.contentDate,
    );
  }
}
