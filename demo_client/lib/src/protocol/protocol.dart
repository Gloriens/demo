/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'app_user.dart' as _i2;
import 'example.dart' as _i3;
import 'field.dart' as _i4;
import 'role.dart' as _i5;
import 'template.dart' as _i6;
import 'package:demo_client/src/protocol/field.dart' as _i7;
import 'package:demo_client/src/protocol/role.dart' as _i8;
import 'package:demo_client/src/protocol/template.dart' as _i9;
export 'app_user.dart';
export 'example.dart';
export 'field.dart';
export 'role.dart';
export 'template.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.AppUser) {
      return _i2.AppUser.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Field) {
      return _i4.Field.fromJson(data, this) as T;
    }
    if (t == _i5.Role) {
      return _i5.Role.fromJson(data, this) as T;
    }
    if (t == _i6.Template) {
      return _i6.Template.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.AppUser?>()) {
      return (data != null ? _i2.AppUser.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Field?>()) {
      return (data != null ? _i4.Field.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Role?>()) {
      return (data != null ? _i5.Role.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Template?>()) {
      return (data != null ? _i6.Template.fromJson(data, this) : null) as T;
    }
    if (t == List<_i7.Field>) {
      return (data as List).map((e) => deserialize<_i7.Field>(e)).toList()
          as dynamic;
    }
    if (t == List<_i8.Role>) {
      return (data as List).map((e) => deserialize<_i8.Role>(e)).toList()
          as dynamic;
    }
    if (t == List<_i9.Template>) {
      return (data as List).map((e) => deserialize<_i9.Template>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.AppUser) {
      return 'AppUser';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Field) {
      return 'Field';
    }
    if (data is _i5.Role) {
      return 'Role';
    }
    if (data is _i6.Template) {
      return 'Template';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AppUser') {
      return deserialize<_i2.AppUser>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Field') {
      return deserialize<_i4.Field>(data['data']);
    }
    if (data['className'] == 'Role') {
      return deserialize<_i5.Role>(data['data']);
    }
    if (data['className'] == 'Template') {
      return deserialize<_i6.Template>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
