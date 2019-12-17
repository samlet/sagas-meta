///
//  Generated code. Do not modify.
//  source: options.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class TaFindOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaFindOptions', package: const $pb.PackageName('model'))
    ..a<int>(1, 'limit', $pb.PbFieldType.O3)
    ..a<int>(2, 'offset', $pb.PbFieldType.O3)
    ..aOB(3, 'distinct')
    ..aOB(4, 'useCache')
    ..hasRequiredFields = false
  ;

  TaFindOptions() : super();
  TaFindOptions.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaFindOptions.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaFindOptions clone() => new TaFindOptions()..mergeFromMessage(this);
  TaFindOptions copyWith(void Function(TaFindOptions) updates) => super.copyWith((message) => updates(message as TaFindOptions));
  $pb.BuilderInfo get info_ => _i;
  static TaFindOptions create() => new TaFindOptions();
  TaFindOptions createEmptyInstance() => create();
  static $pb.PbList<TaFindOptions> createRepeated() => new $pb.PbList<TaFindOptions>();
  static TaFindOptions getDefault() => _defaultInstance ??= create()..freeze();
  static TaFindOptions _defaultInstance;

  int get limit => $_get(0, 0);
  set limit(int v) { $_setSignedInt32(0, v); }
  bool hasLimit() => $_has(0);
  void clearLimit() => clearField(1);

  int get offset => $_get(1, 0);
  set offset(int v) { $_setSignedInt32(1, v); }
  bool hasOffset() => $_has(1);
  void clearOffset() => clearField(2);

  bool get distinct => $_get(2, false);
  set distinct(bool v) { $_setBool(2, v); }
  bool hasDistinct() => $_has(2);
  void clearDistinct() => clearField(3);

  bool get useCache => $_get(3, false);
  set useCache(bool v) { $_setBool(3, v); }
  bool hasUseCache() => $_has(3);
  void clearUseCache() => clearField(4);
}

