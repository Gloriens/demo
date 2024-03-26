/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class RecordImage extends _i1.SerializableEntity {
  RecordImage._({
    this.id,
    required this.recordId,
    required this.imageURL,
  });

  factory RecordImage({
    int? id,
    required int recordId,
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
      imageURL: serializationManager
          .deserialize<String>(jsonSerialization['imageURL']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int recordId;

  String imageURL;

  RecordImage copyWith({
    int? id,
    int? recordId,
    String? imageURL,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'recordId': recordId,
      'imageURL': imageURL,
    };
  }
}

class _Undefined {}

class _RecordImageImpl extends RecordImage {
  _RecordImageImpl({
    int? id,
    required int recordId,
    required String imageURL,
  }) : super._(
          id: id,
          recordId: recordId,
          imageURL: imageURL,
        );

  @override
  RecordImage copyWith({
    Object? id = _Undefined,
    int? recordId,
    String? imageURL,
  }) {
    return RecordImage(
      id: id is int? ? id : this.id,
      recordId: recordId ?? this.recordId,
      imageURL: imageURL ?? this.imageURL,
    );
  }
}
