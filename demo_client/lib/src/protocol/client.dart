/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demo_client/src/protocol/template.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointTemplate extends _i1.EndpointRef {
  _EndpointTemplate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'template';

  _i2.Future<_i3.Template> createTemplate(_i3.Template template) =>
      caller.callServerEndpoint<_i3.Template>(
        'template',
        'createTemplate',
        {'template': template},
      );

  _i2.Future<List<_i3.Template>> getTemplate() =>
      caller.callServerEndpoint<List<_i3.Template>>(
        'template',
        'getTemplate',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    template = _EndpointTemplate(this);
  }

  late final _EndpointExample example;

  late final _EndpointTemplate template;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'template': template,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
