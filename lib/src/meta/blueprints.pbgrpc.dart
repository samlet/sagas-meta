///
//  Generated code. Do not modify.
//  source: blueprints.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'blueprints.pb.dart';
export 'blueprints.pb.dart';

class ArtifactServiceClient extends $grpc.Client {
  static final _$ping = new $grpc.ClientMethod<PingRequest, PingResponse>(
      '/model.ArtifactService/Ping',
      (PingRequest value) => value.writeToBuffer(),
      (List<int> value) => new PingResponse.fromBuffer(value));
  static final _$talk = new $grpc.ClientMethod<BotMessage, BotResponse>(
      '/model.ArtifactService/Talk',
      (BotMessage value) => value.writeToBuffer(),
      (List<int> value) => new BotResponse.fromBuffer(value));
  static final _$setSlot = new $grpc.ClientMethod<BotSetSlot, BotAck>(
      '/model.ArtifactService/SetSlot',
      (BotSetSlot value) => value.writeToBuffer(),
      (List<int> value) => new BotAck.fromBuffer(value));

  ArtifactServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<PingResponse> ping(PingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ping, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BotResponse> talk(BotMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$talk, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BotAck> setSlot(BotSetSlot request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$setSlot, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class ArtifactServiceBase extends $grpc.Service {
  String get $name => 'model.ArtifactService';

  ArtifactServiceBase() {
    $addMethod(new $grpc.ServiceMethod<PingRequest, PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        (List<int> value) => new PingRequest.fromBuffer(value),
        (PingResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<BotMessage, BotResponse>(
        'Talk',
        talk_Pre,
        false,
        false,
        (List<int> value) => new BotMessage.fromBuffer(value),
        (BotResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<BotSetSlot, BotAck>(
        'SetSlot',
        setSlot_Pre,
        false,
        false,
        (List<int> value) => new BotSetSlot.fromBuffer(value),
        (BotAck value) => value.writeToBuffer()));
  }

  $async.Future<PingResponse> ping_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return ping(call, await request);
  }

  $async.Future<BotResponse> talk_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return talk(call, await request);
  }

  $async.Future<BotAck> setSlot_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return setSlot(call, await request);
  }

  $async.Future<PingResponse> ping($grpc.ServiceCall call, PingRequest request);
  $async.Future<BotResponse> talk($grpc.ServiceCall call, BotMessage request);
  $async.Future<BotAck> setSlot($grpc.ServiceCall call, BotSetSlot request);
}
