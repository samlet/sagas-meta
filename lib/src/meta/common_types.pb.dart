///
//  Generated code. Do not modify.
//  source: common_types.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class PingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PingRequest', package: const $pb.PackageName('common'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  PingRequest() : super();
  PingRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PingRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PingRequest clone() => new PingRequest()..mergeFromMessage(this);
  PingRequest copyWith(void Function(PingRequest) updates) => super.copyWith((message) => updates(message as PingRequest));
  $pb.BuilderInfo get info_ => _i;
  static PingRequest create() => new PingRequest();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => new $pb.PbList<PingRequest>();
  static PingRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PingRequest _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class PingReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PingReply', package: const $pb.PackageName('common'))
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  PingReply() : super();
  PingReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PingReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PingReply clone() => new PingReply()..mergeFromMessage(this);
  PingReply copyWith(void Function(PingReply) updates) => super.copyWith((message) => updates(message as PingReply));
  $pb.BuilderInfo get info_ => _i;
  static PingReply create() => new PingReply();
  PingReply createEmptyInstance() => create();
  static $pb.PbList<PingReply> createRepeated() => new $pb.PbList<PingReply>();
  static PingReply getDefault() => _defaultInstance ??= create()..freeze();
  static PingReply _defaultInstance;

  String get message => $_getS(0, '');
  set message(String v) { $_setString(0, v); }
  bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

class Text extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Text', package: const $pb.PackageName('common'))
    ..aOS(1, 'text')
    ..hasRequiredFields = false
  ;

  Text() : super();
  Text.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Text.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Text clone() => new Text()..mergeFromMessage(this);
  Text copyWith(void Function(Text) updates) => super.copyWith((message) => updates(message as Text));
  $pb.BuilderInfo get info_ => _i;
  static Text create() => new Text();
  Text createEmptyInstance() => create();
  static $pb.PbList<Text> createRepeated() => new $pb.PbList<Text>();
  static Text getDefault() => _defaultInstance ??= create()..freeze();
  static Text _defaultInstance;

  String get text => $_getS(0, '');
  set text(String v) { $_setString(0, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Result', package: const $pb.PackageName('common'))
    ..a<int>(1, 'code', $pb.PbFieldType.O3)
    ..pPS(2, 'message')
    ..hasRequiredFields = false
  ;

  Result() : super();
  Result.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Result.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Result clone() => new Result()..mergeFromMessage(this);
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result));
  $pb.BuilderInfo get info_ => _i;
  static Result create() => new Result();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => new $pb.PbList<Result>();
  static Result getDefault() => _defaultInstance ??= create()..freeze();
  static Result _defaultInstance;

  int get code => $_get(0, 0);
  set code(int v) { $_setSignedInt32(0, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  List<String> get message => $_getList(1);
}

