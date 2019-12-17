///
//  Generated code. Do not modify.
//  source: mess.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'mess.pb.dart';
export 'mess.pb.dart';

class MessServiceClient extends $grpc.Client {
  static final _$sayHello = new $grpc.ClientMethod<MessString, TextLangInfo>(
      '/model.MessService/SayHello',
      (MessString value) => value.writeToBuffer(),
      (List<int> value) => new TextLangInfo.fromBuffer(value));

  MessServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<TextLangInfo> sayHello(MessString request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sayHello, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class MessServiceBase extends $grpc.Service {
  String get $name => 'model.MessService';

  MessServiceBase() {
    $addMethod(new $grpc.ServiceMethod<MessString, TextLangInfo>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        (List<int> value) => new MessString.fromBuffer(value),
        (TextLangInfo value) => value.writeToBuffer()));
  }

  $async.Future<TextLangInfo> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sayHello(call, await request);
  }

  $async.Future<TextLangInfo> sayHello(
      $grpc.ServiceCall call, MessString request);
}
