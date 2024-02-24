/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AppUser extends _i1.SerializableEntity {
  AppUser._({
    this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });

  factory AppUser({
    int? id,
    required String name,
    required String phone,
    required String email,
    required String password,
  }) = _AppUserImpl;

  factory AppUser.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AppUser(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      phone:
          serializationManager.deserialize<String>(jsonSerialization['phone']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String phone;

  String email;

  String password;

  AppUser copyWith({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? password,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
    };
  }
}

class _Undefined {}

class _AppUserImpl extends AppUser {
  _AppUserImpl({
    int? id,
    required String name,
    required String phone,
    required String email,
    required String password,
  }) : super._(
          id: id,
          name: name,
          phone: phone,
          email: email,
          password: password,
        );

  @override
  AppUser copyWith({
    Object? id = _Undefined,
    String? name,
    String? phone,
    String? email,
    String? password,
  }) {
    return AppUser(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
