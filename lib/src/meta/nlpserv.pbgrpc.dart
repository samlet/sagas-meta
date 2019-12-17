///
//  Generated code. Do not modify.
//  source: nlpserv.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'common_types.pb.dart' as $0;
import 'nlpserv.pb.dart';
export 'nlpserv.pb.dart';

class NlpProcsClient extends $grpc.Client {
  static final _$ping = new $grpc.ClientMethod<$0.PingRequest, $0.PingReply>(
      '/nlpserv.NlpProcs/Ping',
      ($0.PingRequest value) => value.writeToBuffer(),
      (List<int> value) => new $0.PingReply.fromBuffer(value));
  static final _$parseDependency =
      new $grpc.ClientMethod<NlParseRequest, NlSentence>(
          '/nlpserv.NlpProcs/ParseDependency',
          (NlParseRequest value) => value.writeToBuffer(),
          (List<int> value) => new NlSentence.fromBuffer(value));
  static final _$getPinyin = new $grpc.ClientMethod<NlPinyinRequest, NlText>(
      '/nlpserv.NlpProcs/GetPinyin',
      (NlPinyinRequest value) => value.writeToBuffer(),
      (List<int> value) => new NlText.fromBuffer(value));
  static final _$addDocuments = new $grpc.ClientMethod<NlDocumentSet, NlResult>(
      '/nlpserv.NlpProcs/AddDocuments',
      (NlDocumentSet value) => value.writeToBuffer(),
      (List<int> value) => new NlResult.fromBuffer(value));
  static final _$getNearestDocuments =
      new $grpc.ClientMethod<NlText, NlDocumentSimilaritySet>(
          '/nlpserv.NlpProcs/GetNearestDocuments',
          (NlText value) => value.writeToBuffer(),
          (List<int> value) => new NlDocumentSimilaritySet.fromBuffer(value));
  static final _$tokenizer =
      new $grpc.ClientMethod<NlTokenizerRequest, NlTokens>(
          '/nlpserv.NlpProcs/Tokenizer',
          (NlTokenizerRequest value) => value.writeToBuffer(),
          (List<int> value) => new NlTokens.fromBuffer(value));
  static final _$entityExtractor =
      new $grpc.ClientMethod<NlTokenizerRequest, NlEntities>(
          '/nlpserv.NlpProcs/EntityExtractor',
          (NlTokenizerRequest value) => value.writeToBuffer(),
          (List<int> value) => new NlEntities.fromBuffer(value));
  static final _$parseAmountTerms =
      new $grpc.ClientMethod<NlText, NlAmountList>(
          '/nlpserv.NlpProcs/ParseAmountTerms',
          (NlText value) => value.writeToBuffer(),
          (List<int> value) => new NlAmountList.fromBuffer(value));
  static final _$getDependencyGraph =
      new $grpc.ClientMethod<NlTexts, NlDepWords>(
          '/nlpserv.NlpProcs/GetDependencyGraph',
          (NlTexts value) => value.writeToBuffer(),
          (List<int> value) => new NlDepWords.fromBuffer(value));

  NlpProcsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.PingReply> ping($0.PingRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ping, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlSentence> parseDependency(NlParseRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$parseDependency, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlText> getPinyin(NlPinyinRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPinyin, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlResult> addDocuments(NlDocumentSet request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addDocuments, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlDocumentSimilaritySet> getNearestDocuments(
      NlText request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNearestDocuments, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlTokens> tokenizer(NlTokenizerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$tokenizer, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlEntities> entityExtractor(NlTokenizerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$entityExtractor, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlAmountList> parseAmountTerms(NlText request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$parseAmountTerms, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<NlDepWords> getDependencyGraph(NlTexts request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getDependencyGraph, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class NlpProcsServiceBase extends $grpc.Service {
  String get $name => 'nlpserv.NlpProcs';

  NlpProcsServiceBase() {
    $addMethod(new $grpc.ServiceMethod<$0.PingRequest, $0.PingReply>(
        'Ping',
        ping_Pre,
        false,
        false,
        (List<int> value) => new $0.PingRequest.fromBuffer(value),
        ($0.PingReply value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlParseRequest, NlSentence>(
        'ParseDependency',
        parseDependency_Pre,
        false,
        false,
        (List<int> value) => new NlParseRequest.fromBuffer(value),
        (NlSentence value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlPinyinRequest, NlText>(
        'GetPinyin',
        getPinyin_Pre,
        false,
        false,
        (List<int> value) => new NlPinyinRequest.fromBuffer(value),
        (NlText value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlDocumentSet, NlResult>(
        'AddDocuments',
        addDocuments_Pre,
        false,
        false,
        (List<int> value) => new NlDocumentSet.fromBuffer(value),
        (NlResult value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlText, NlDocumentSimilaritySet>(
        'GetNearestDocuments',
        getNearestDocuments_Pre,
        false,
        false,
        (List<int> value) => new NlText.fromBuffer(value),
        (NlDocumentSimilaritySet value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlTokenizerRequest, NlTokens>(
        'Tokenizer',
        tokenizer_Pre,
        false,
        false,
        (List<int> value) => new NlTokenizerRequest.fromBuffer(value),
        (NlTokens value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlTokenizerRequest, NlEntities>(
        'EntityExtractor',
        entityExtractor_Pre,
        false,
        false,
        (List<int> value) => new NlTokenizerRequest.fromBuffer(value),
        (NlEntities value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlText, NlAmountList>(
        'ParseAmountTerms',
        parseAmountTerms_Pre,
        false,
        false,
        (List<int> value) => new NlText.fromBuffer(value),
        (NlAmountList value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<NlTexts, NlDepWords>(
        'GetDependencyGraph',
        getDependencyGraph_Pre,
        false,
        false,
        (List<int> value) => new NlTexts.fromBuffer(value),
        (NlDepWords value) => value.writeToBuffer()));
  }

  $async.Future<$0.PingReply> ping_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return ping(call, await request);
  }

  $async.Future<NlSentence> parseDependency_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return parseDependency(call, await request);
  }

  $async.Future<NlText> getPinyin_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getPinyin(call, await request);
  }

  $async.Future<NlResult> addDocuments_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return addDocuments(call, await request);
  }

  $async.Future<NlDocumentSimilaritySet> getNearestDocuments_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getNearestDocuments(call, await request);
  }

  $async.Future<NlTokens> tokenizer_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return tokenizer(call, await request);
  }

  $async.Future<NlEntities> entityExtractor_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return entityExtractor(call, await request);
  }

  $async.Future<NlAmountList> parseAmountTerms_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return parseAmountTerms(call, await request);
  }

  $async.Future<NlDepWords> getDependencyGraph_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getDependencyGraph(call, await request);
  }

  $async.Future<$0.PingReply> ping(
      $grpc.ServiceCall call, $0.PingRequest request);
  $async.Future<NlSentence> parseDependency(
      $grpc.ServiceCall call, NlParseRequest request);
  $async.Future<NlText> getPinyin(
      $grpc.ServiceCall call, NlPinyinRequest request);
  $async.Future<NlResult> addDocuments(
      $grpc.ServiceCall call, NlDocumentSet request);
  $async.Future<NlDocumentSimilaritySet> getNearestDocuments(
      $grpc.ServiceCall call, NlText request);
  $async.Future<NlTokens> tokenizer(
      $grpc.ServiceCall call, NlTokenizerRequest request);
  $async.Future<NlEntities> entityExtractor(
      $grpc.ServiceCall call, NlTokenizerRequest request);
  $async.Future<NlAmountList> parseAmountTerms(
      $grpc.ServiceCall call, NlText request);
  $async.Future<NlDepWords> getDependencyGraph(
      $grpc.ServiceCall call, NlTexts request);
}

class CabochaNlpProcsClient extends $grpc.Client {
  static final _$tokenizer = new $grpc.ClientMethod<NlText, NlCabochaChunks>(
      '/nlpserv.CabochaNlpProcs/Tokenizer',
      (NlText value) => value.writeToBuffer(),
      (List<int> value) => new NlCabochaChunks.fromBuffer(value));

  CabochaNlpProcsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<NlCabochaChunks> tokenizer(NlText request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$tokenizer, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class CabochaNlpProcsServiceBase extends $grpc.Service {
  String get $name => 'nlpserv.CabochaNlpProcs';

  CabochaNlpProcsServiceBase() {
    $addMethod(new $grpc.ServiceMethod<NlText, NlCabochaChunks>(
        'Tokenizer',
        tokenizer_Pre,
        false,
        false,
        (List<int> value) => new NlText.fromBuffer(value),
        (NlCabochaChunks value) => value.writeToBuffer()));
  }

  $async.Future<NlCabochaChunks> tokenizer_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return tokenizer(call, await request);
  }

  $async.Future<NlCabochaChunks> tokenizer(
      $grpc.ServiceCall call, NlText request);
}
