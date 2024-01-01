/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Record extends _i1.SerializableEntity {
  Record({
    this.id,
    required this.templateId,
    required this.name,
    required this.date,
  });

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'templateId': templateId,
      'name': name,
      'date': date,
    };
  }
}
