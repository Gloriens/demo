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
import 'permission.dart' as _i5;
import 'record.dart' as _i6;
import 'record_bool.dart' as _i7;
import 'record_date.dart' as _i8;
import 'record_image.dart' as _i9;
import 'record_role.dart' as _i10;
import 'record_text.dart' as _i11;
import 'role.dart' as _i12;
import 'template.dart' as _i13;
import 'package:demo_client/src/protocol/app_user.dart' as _i14;
import 'package:demo_client/src/protocol/field.dart' as _i15;
import 'package:demo_client/src/protocol/record_role.dart' as _i16;
import 'package:demo_client/src/protocol/role.dart' as _i17;
import 'package:demo_client/src/protocol/template.dart' as _i18;
import 'package:serverpod_auth_client/module.dart' as _i19;
export 'app_user.dart';
export 'example.dart';
export 'field.dart';
export 'permission.dart';
export 'record.dart';
export 'record_bool.dart';
export 'record_date.dart';
export 'record_image.dart';
export 'record_role.dart';
export 'record_text.dart';
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
    if (t == _i5.Permission) {
      return _i5.Permission.fromJson(data, this) as T;
    }
    if (t == _i6.Record) {
      return _i6.Record.fromJson(data, this) as T;
    }
    if (t == _i7.RecordBool) {
      return _i7.RecordBool.fromJson(data, this) as T;
    }
    if (t == _i8.RecordDate) {
      return _i8.RecordDate.fromJson(data, this) as T;
    }
    if (t == _i9.RecordImage) {
      return _i9.RecordImage.fromJson(data, this) as T;
    }
    if (t == _i10.RecordRole) {
      return _i10.RecordRole.fromJson(data, this) as T;
    }
    if (t == _i11.RecordText) {
      return _i11.RecordText.fromJson(data, this) as T;
    }
    if (t == _i12.Role) {
      return _i12.Role.fromJson(data, this) as T;
    }
    if (t == _i13.Template) {
      return _i13.Template.fromJson(data, this) as T;
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
    if (t == _i1.getType<_i5.Permission?>()) {
      return (data != null ? _i5.Permission.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Record?>()) {
      return (data != null ? _i6.Record.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.RecordBool?>()) {
      return (data != null ? _i7.RecordBool.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.RecordDate?>()) {
      return (data != null ? _i8.RecordDate.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.RecordImage?>()) {
      return (data != null ? _i9.RecordImage.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.RecordRole?>()) {
      return (data != null ? _i10.RecordRole.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.RecordText?>()) {
      return (data != null ? _i11.RecordText.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Role?>()) {
      return (data != null ? _i12.Role.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Template?>()) {
      return (data != null ? _i13.Template.fromJson(data, this) : null) as T;
    }
    if (t == List<_i14.AppUser>) {
      return (data as List).map((e) => deserialize<_i14.AppUser>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.Field>) {
      return (data as List).map((e) => deserialize<_i15.Field>(e)).toList()
          as dynamic;
    }
    if (t == List<_i16.RecordRole>) {
      return (data as List).map((e) => deserialize<_i16.RecordRole>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.Role>) {
      return (data as List).map((e) => deserialize<_i17.Role>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Template>) {
      return (data as List).map((e) => deserialize<_i18.Template>(e)).toList()
          as dynamic;
    }
    try {
      return _i19.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i19.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.AppUser) {
      return 'AppUser';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Field) {
      return 'Field';
    }
    if (data is _i5.Permission) {
      return 'Permission';
    }
    if (data is _i6.Record) {
      return 'Record';
    }
    if (data is _i7.RecordBool) {
      return 'RecordBool';
    }
    if (data is _i8.RecordDate) {
      return 'RecordDate';
    }
    if (data is _i9.RecordImage) {
      return 'RecordImage';
    }
    if (data is _i10.RecordRole) {
      return 'RecordRole';
    }
    if (data is _i11.RecordText) {
      return 'RecordText';
    }
    if (data is _i12.Role) {
      return 'Role';
    }
    if (data is _i13.Template) {
      return 'Template';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i19.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'AppUser') {
      return deserialize<_i2.AppUser>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Field') {
      return deserialize<_i4.Field>(data['data']);
    }
    if (data['className'] == 'Permission') {
      return deserialize<_i5.Permission>(data['data']);
    }
    if (data['className'] == 'Record') {
      return deserialize<_i6.Record>(data['data']);
    }
    if (data['className'] == 'RecordBool') {
      return deserialize<_i7.RecordBool>(data['data']);
    }
    if (data['className'] == 'RecordDate') {
      return deserialize<_i8.RecordDate>(data['data']);
    }
    if (data['className'] == 'RecordImage') {
      return deserialize<_i9.RecordImage>(data['data']);
    }
    if (data['className'] == 'RecordRole') {
      return deserialize<_i10.RecordRole>(data['data']);
    }
    if (data['className'] == 'RecordText') {
      return deserialize<_i11.RecordText>(data['data']);
    }
    if (data['className'] == 'Role') {
      return deserialize<_i12.Role>(data['data']);
    }
    if (data['className'] == 'Template') {
      return deserialize<_i13.Template>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
