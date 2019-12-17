///
//  Generated code. Do not modify.
//  source: mess.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class MessString extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MessString', package: const $pb.PackageName('model'))
    ..aOS(1, 'body')
    ..hasRequiredFields = false
  ;

  MessString() : super();
  MessString.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MessString.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MessString clone() => new MessString()..mergeFromMessage(this);
  MessString copyWith(void Function(MessString) updates) => super.copyWith((message) => updates(message as MessString));
  $pb.BuilderInfo get info_ => _i;
  static MessString create() => new MessString();
  MessString createEmptyInstance() => create();
  static $pb.PbList<MessString> createRepeated() => new $pb.PbList<MessString>();
  static MessString getDefault() => _defaultInstance ??= create()..freeze();
  static MessString _defaultInstance;

  String get body => $_getS(0, '');
  set body(String v) { $_setString(0, v); }
  bool hasBody() => $_has(0);
  void clearBody() => clearField(1);
}

class TextLangInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TextLangInfo', package: const $pb.PackageName('model'))
    ..aOS(1, 'lang')
    ..aOS(2, 'code')
    ..a<double>(3, 'confidence', $pb.PbFieldType.OF)
    ..aOB(4, 'reliable')
    ..hasRequiredFields = false
  ;

  TextLangInfo() : super();
  TextLangInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TextLangInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TextLangInfo clone() => new TextLangInfo()..mergeFromMessage(this);
  TextLangInfo copyWith(void Function(TextLangInfo) updates) => super.copyWith((message) => updates(message as TextLangInfo));
  $pb.BuilderInfo get info_ => _i;
  static TextLangInfo create() => new TextLangInfo();
  TextLangInfo createEmptyInstance() => create();
  static $pb.PbList<TextLangInfo> createRepeated() => new $pb.PbList<TextLangInfo>();
  static TextLangInfo getDefault() => _defaultInstance ??= create()..freeze();
  static TextLangInfo _defaultInstance;

  String get lang => $_getS(0, '');
  set lang(String v) { $_setString(0, v); }
  bool hasLang() => $_has(0);
  void clearLang() => clearField(1);

  String get code => $_getS(1, '');
  set code(String v) { $_setString(1, v); }
  bool hasCode() => $_has(1);
  void clearCode() => clearField(2);

  double get confidence => $_getN(2);
  set confidence(double v) { $_setFloat(2, v); }
  bool hasConfidence() => $_has(2);
  void clearConfidence() => clearField(3);

  bool get reliable => $_get(3, false);
  set reliable(bool v) { $_setBool(3, v); }
  bool hasReliable() => $_has(3);
  void clearReliable() => clearField(4);
}

