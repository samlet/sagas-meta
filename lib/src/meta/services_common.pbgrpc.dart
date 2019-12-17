///
//  Generated code. Do not modify.
//  source: services_common.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'services_common.pb.dart';
import 'metainfo.pb.dart' as $1;
import 'values.pb.dart' as $2;
export 'services_common.pb.dart';

class SysInfoClient extends $grpc.Client {
  static final _$getSysInfo = new $grpc.ClientMethod<InfoQuery, InfoMap>(
      '/model.SysInfo/GetSysInfo',
      (InfoQuery value) => value.writeToBuffer(),
      (List<int> value) => new InfoMap.fromBuffer(value));
  static final _$queryMeta =
      new $grpc.ClientMethod<$1.MetaQuery, $1.MetaPayload>(
          '/model.SysInfo/QueryMeta',
          ($1.MetaQuery value) => value.writeToBuffer(),
          (List<int> value) => new $1.MetaPayload.fromBuffer(value));

  SysInfoClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<InfoMap> getSysInfo(InfoQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSysInfo, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.MetaPayload> queryMeta($1.MetaQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$queryMeta, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class SysInfoServiceBase extends $grpc.Service {
  String get $name => 'model.SysInfo';

  SysInfoServiceBase() {
    $addMethod(new $grpc.ServiceMethod<InfoQuery, InfoMap>(
        'GetSysInfo',
        getSysInfo_Pre,
        false,
        false,
        (List<int> value) => new InfoQuery.fromBuffer(value),
        (InfoMap value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<$1.MetaQuery, $1.MetaPayload>(
        'QueryMeta',
        queryMeta_Pre,
        false,
        false,
        (List<int> value) => new $1.MetaQuery.fromBuffer(value),
        ($1.MetaPayload value) => value.writeToBuffer()));
  }

  $async.Future<InfoMap> getSysInfo_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getSysInfo(call, await request);
  }

  $async.Future<$1.MetaPayload> queryMeta_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return queryMeta(call, await request);
  }

  $async.Future<InfoMap> getSysInfo($grpc.ServiceCall call, InfoQuery request);
  $async.Future<$1.MetaPayload> queryMeta(
      $grpc.ServiceCall call, $1.MetaQuery request);
}

class EntityServantClient extends $grpc.Client {
  static final _$getEntityNames = new $grpc.ClientMethod<InfoQuery, Names>(
      '/model.EntityServant/GetEntityNames',
      (InfoQuery value) => value.writeToBuffer(),
      (List<int> value) => new Names.fromBuffer(value));
  static final _$storeAll =
      new $grpc.ClientMethod<$2.TaStringEntriesBatch, ModifyInfo>(
          '/model.EntityServant/StoreAll',
          ($2.TaStringEntriesBatch value) => value.writeToBuffer(),
          (List<int> value) => new ModifyInfo.fromBuffer(value));

  EntityServantClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<Names> getEntityNames(InfoQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getEntityNames, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ModifyInfo> storeAll($2.TaStringEntriesBatch request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$storeAll, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class EntityServantServiceBase extends $grpc.Service {
  String get $name => 'model.EntityServant';

  EntityServantServiceBase() {
    $addMethod(new $grpc.ServiceMethod<InfoQuery, Names>(
        'GetEntityNames',
        getEntityNames_Pre,
        false,
        false,
        (List<int> value) => new InfoQuery.fromBuffer(value),
        (Names value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<$2.TaStringEntriesBatch, ModifyInfo>(
        'StoreAll',
        storeAll_Pre,
        false,
        false,
        (List<int> value) => new $2.TaStringEntriesBatch.fromBuffer(value),
        (ModifyInfo value) => value.writeToBuffer()));
  }

  $async.Future<Names> getEntityNames_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getEntityNames(call, await request);
  }

  $async.Future<ModifyInfo> storeAll_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return storeAll(call, await request);
  }

  $async.Future<Names> getEntityNames(
      $grpc.ServiceCall call, InfoQuery request);
  $async.Future<ModifyInfo> storeAll(
      $grpc.ServiceCall call, $2.TaStringEntriesBatch request);
}
