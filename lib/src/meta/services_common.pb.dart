///
//  Generated code. Do not modify.
//  source: services_common.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Names extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Names', package: const $pb.PackageName('model'))
    ..pPS(1, 'name')
    ..hasRequiredFields = false
  ;

  Names() : super();
  Names.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Names.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Names clone() => new Names()..mergeFromMessage(this);
  Names copyWith(void Function(Names) updates) => super.copyWith((message) => updates(message as Names));
  $pb.BuilderInfo get info_ => _i;
  static Names create() => new Names();
  Names createEmptyInstance() => create();
  static $pb.PbList<Names> createRepeated() => new $pb.PbList<Names>();
  static Names getDefault() => _defaultInstance ??= create()..freeze();
  static Names _defaultInstance;

  List<String> get name => $_getList(0);
}

class InfoQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('InfoQuery', package: const $pb.PackageName('model'))
    ..pPS(1, 'queryItems')
    ..hasRequiredFields = false
  ;

  InfoQuery() : super();
  InfoQuery.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  InfoQuery.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  InfoQuery clone() => new InfoQuery()..mergeFromMessage(this);
  InfoQuery copyWith(void Function(InfoQuery) updates) => super.copyWith((message) => updates(message as InfoQuery));
  $pb.BuilderInfo get info_ => _i;
  static InfoQuery create() => new InfoQuery();
  InfoQuery createEmptyInstance() => create();
  static $pb.PbList<InfoQuery> createRepeated() => new $pb.PbList<InfoQuery>();
  static InfoQuery getDefault() => _defaultInstance ??= create()..freeze();
  static InfoQuery _defaultInstance;

  List<String> get queryItems => $_getList(0);
}

class InfoMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('InfoMap', package: const $pb.PackageName('model'))
    ..m<String, String>(1, 'info', 'InfoMap.InfoEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  InfoMap() : super();
  InfoMap.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  InfoMap.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  InfoMap clone() => new InfoMap()..mergeFromMessage(this);
  InfoMap copyWith(void Function(InfoMap) updates) => super.copyWith((message) => updates(message as InfoMap));
  $pb.BuilderInfo get info_ => _i;
  static InfoMap create() => new InfoMap();
  InfoMap createEmptyInstance() => create();
  static $pb.PbList<InfoMap> createRepeated() => new $pb.PbList<InfoMap>();
  static InfoMap getDefault() => _defaultInstance ??= create()..freeze();
  static InfoMap _defaultInstance;

  Map<String, String> get info => $_getMap(0);
}

class ModifyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ModifyInfo', package: const $pb.PackageName('model'))
    ..aInt64(1, 'total')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  ModifyInfo() : super();
  ModifyInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ModifyInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ModifyInfo clone() => new ModifyInfo()..mergeFromMessage(this);
  ModifyInfo copyWith(void Function(ModifyInfo) updates) => super.copyWith((message) => updates(message as ModifyInfo));
  $pb.BuilderInfo get info_ => _i;
  static ModifyInfo create() => new ModifyInfo();
  ModifyInfo createEmptyInstance() => create();
  static $pb.PbList<ModifyInfo> createRepeated() => new $pb.PbList<ModifyInfo>();
  static ModifyInfo getDefault() => _defaultInstance ??= create()..freeze();
  static ModifyInfo _defaultInstance;

  Int64 get total => $_getI64(0);
  set total(Int64 v) { $_setInt64(0, v); }
  bool hasTotal() => $_has(0);
  void clearTotal() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

