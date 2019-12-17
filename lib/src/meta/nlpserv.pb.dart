///
//  Generated code. Do not modify.
//  source: nlpserv.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'nlpserv.pbenum.dart';

export 'nlpserv.pbenum.dart';

class NlCabochaToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlCabochaToken', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'additionalInfo')
    ..pPS(3, 'featureList')
    ..aOS(4, 'ne')
    ..aOS(5, 'normalizedSurface')
    ..aOS(6, 'surface')
    ..aOS(7, 'pos')
    ..aOS(8, 'pos1')
    ..aOS(9, 'pos2')
    ..aOS(10, 'pos3')
    ..aOS(11, 'ctype')
    ..aOS(12, 'cform')
    ..aOS(13, 'genkei')
    ..aOS(14, 'yomi')
    ..hasRequiredFields = false
  ;

  NlCabochaToken() : super();
  NlCabochaToken.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlCabochaToken.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlCabochaToken clone() => new NlCabochaToken()..mergeFromMessage(this);
  NlCabochaToken copyWith(void Function(NlCabochaToken) updates) => super.copyWith((message) => updates(message as NlCabochaToken));
  $pb.BuilderInfo get info_ => _i;
  static NlCabochaToken create() => new NlCabochaToken();
  NlCabochaToken createEmptyInstance() => create();
  static $pb.PbList<NlCabochaToken> createRepeated() => new $pb.PbList<NlCabochaToken>();
  static NlCabochaToken getDefault() => _defaultInstance ??= create()..freeze();
  static NlCabochaToken _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get additionalInfo => $_getS(1, '');
  set additionalInfo(String v) { $_setString(1, v); }
  bool hasAdditionalInfo() => $_has(1);
  void clearAdditionalInfo() => clearField(2);

  List<String> get featureList => $_getList(2);

  String get ne => $_getS(3, '');
  set ne(String v) { $_setString(3, v); }
  bool hasNe() => $_has(3);
  void clearNe() => clearField(4);

  String get normalizedSurface => $_getS(4, '');
  set normalizedSurface(String v) { $_setString(4, v); }
  bool hasNormalizedSurface() => $_has(4);
  void clearNormalizedSurface() => clearField(5);

  String get surface => $_getS(5, '');
  set surface(String v) { $_setString(5, v); }
  bool hasSurface() => $_has(5);
  void clearSurface() => clearField(6);

  String get pos => $_getS(6, '');
  set pos(String v) { $_setString(6, v); }
  bool hasPos() => $_has(6);
  void clearPos() => clearField(7);

  String get pos1 => $_getS(7, '');
  set pos1(String v) { $_setString(7, v); }
  bool hasPos1() => $_has(7);
  void clearPos1() => clearField(8);

  String get pos2 => $_getS(8, '');
  set pos2(String v) { $_setString(8, v); }
  bool hasPos2() => $_has(8);
  void clearPos2() => clearField(9);

  String get pos3 => $_getS(9, '');
  set pos3(String v) { $_setString(9, v); }
  bool hasPos3() => $_has(9);
  void clearPos3() => clearField(10);

  String get ctype => $_getS(10, '');
  set ctype(String v) { $_setString(10, v); }
  bool hasCtype() => $_has(10);
  void clearCtype() => clearField(11);

  String get cform => $_getS(11, '');
  set cform(String v) { $_setString(11, v); }
  bool hasCform() => $_has(11);
  void clearCform() => clearField(12);

  String get genkei => $_getS(12, '');
  set genkei(String v) { $_setString(12, v); }
  bool hasGenkei() => $_has(12);
  void clearGenkei() => clearField(13);

  String get yomi => $_getS(13, '');
  set yomi(String v) { $_setString(13, v); }
  bool hasYomi() => $_has(13);
  void clearYomi() => clearField(14);
}

class NlCabochaChunk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlCabochaChunk', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'additionalInfo')
    ..pPS(3, 'featureList')
    ..a<int>(4, 'funcPos', $pb.PbFieldType.O3)
    ..a<int>(5, 'headPos', $pb.PbFieldType.O3)
    ..a<int>(6, 'link', $pb.PbFieldType.O3)
    ..a<double>(7, 'score', $pb.PbFieldType.OF)
    ..a<int>(8, 'tokenPos', $pb.PbFieldType.O3)
    ..a<int>(9, 'nextLinkId', $pb.PbFieldType.O3)
    ..p<int>(10, 'prevLinkIds', $pb.PbFieldType.P3)
    ..pc<NlCabochaToken>(11, 'tokens', $pb.PbFieldType.PM,NlCabochaToken.create)
    ..hasRequiredFields = false
  ;

  NlCabochaChunk() : super();
  NlCabochaChunk.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlCabochaChunk.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlCabochaChunk clone() => new NlCabochaChunk()..mergeFromMessage(this);
  NlCabochaChunk copyWith(void Function(NlCabochaChunk) updates) => super.copyWith((message) => updates(message as NlCabochaChunk));
  $pb.BuilderInfo get info_ => _i;
  static NlCabochaChunk create() => new NlCabochaChunk();
  NlCabochaChunk createEmptyInstance() => create();
  static $pb.PbList<NlCabochaChunk> createRepeated() => new $pb.PbList<NlCabochaChunk>();
  static NlCabochaChunk getDefault() => _defaultInstance ??= create()..freeze();
  static NlCabochaChunk _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get additionalInfo => $_getS(1, '');
  set additionalInfo(String v) { $_setString(1, v); }
  bool hasAdditionalInfo() => $_has(1);
  void clearAdditionalInfo() => clearField(2);

  List<String> get featureList => $_getList(2);

  int get funcPos => $_get(3, 0);
  set funcPos(int v) { $_setSignedInt32(3, v); }
  bool hasFuncPos() => $_has(3);
  void clearFuncPos() => clearField(4);

  int get headPos => $_get(4, 0);
  set headPos(int v) { $_setSignedInt32(4, v); }
  bool hasHeadPos() => $_has(4);
  void clearHeadPos() => clearField(5);

  int get link => $_get(5, 0);
  set link(int v) { $_setSignedInt32(5, v); }
  bool hasLink() => $_has(5);
  void clearLink() => clearField(6);

  double get score => $_getN(6);
  set score(double v) { $_setFloat(6, v); }
  bool hasScore() => $_has(6);
  void clearScore() => clearField(7);

  int get tokenPos => $_get(7, 0);
  set tokenPos(int v) { $_setSignedInt32(7, v); }
  bool hasTokenPos() => $_has(7);
  void clearTokenPos() => clearField(8);

  int get nextLinkId => $_get(8, 0);
  set nextLinkId(int v) { $_setSignedInt32(8, v); }
  bool hasNextLinkId() => $_has(8);
  void clearNextLinkId() => clearField(9);

  List<int> get prevLinkIds => $_getList(9);

  List<NlCabochaToken> get tokens => $_getList(10);
}

class NlCabochaChunks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlCabochaChunks', package: const $pb.PackageName('nlpserv'))
    ..pc<NlCabochaChunk>(1, 'chunks', $pb.PbFieldType.PM,NlCabochaChunk.create)
    ..hasRequiredFields = false
  ;

  NlCabochaChunks() : super();
  NlCabochaChunks.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlCabochaChunks.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlCabochaChunks clone() => new NlCabochaChunks()..mergeFromMessage(this);
  NlCabochaChunks copyWith(void Function(NlCabochaChunks) updates) => super.copyWith((message) => updates(message as NlCabochaChunks));
  $pb.BuilderInfo get info_ => _i;
  static NlCabochaChunks create() => new NlCabochaChunks();
  NlCabochaChunks createEmptyInstance() => create();
  static $pb.PbList<NlCabochaChunks> createRepeated() => new $pb.PbList<NlCabochaChunks>();
  static NlCabochaChunks getDefault() => _defaultInstance ??= create()..freeze();
  static NlCabochaChunks _defaultInstance;

  List<NlCabochaChunk> get chunks => $_getList(0);
}

class NlEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlEntity', package: const $pb.PackageName('nlpserv'))
    ..aOS(1, 'entity')
    ..aOS(2, 'value')
    ..a<int>(3, 'start', $pb.PbFieldType.O3)
    ..a<double>(4, 'confidence', $pb.PbFieldType.OF)
    ..a<int>(5, 'end', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  NlEntity() : super();
  NlEntity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlEntity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlEntity clone() => new NlEntity()..mergeFromMessage(this);
  NlEntity copyWith(void Function(NlEntity) updates) => super.copyWith((message) => updates(message as NlEntity));
  $pb.BuilderInfo get info_ => _i;
  static NlEntity create() => new NlEntity();
  NlEntity createEmptyInstance() => create();
  static $pb.PbList<NlEntity> createRepeated() => new $pb.PbList<NlEntity>();
  static NlEntity getDefault() => _defaultInstance ??= create()..freeze();
  static NlEntity _defaultInstance;

  String get entity => $_getS(0, '');
  set entity(String v) { $_setString(0, v); }
  bool hasEntity() => $_has(0);
  void clearEntity() => clearField(1);

  String get value => $_getS(1, '');
  set value(String v) { $_setString(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  int get start => $_get(2, 0);
  set start(int v) { $_setSignedInt32(2, v); }
  bool hasStart() => $_has(2);
  void clearStart() => clearField(3);

  double get confidence => $_getN(3);
  set confidence(double v) { $_setFloat(3, v); }
  bool hasConfidence() => $_has(3);
  void clearConfidence() => clearField(4);

  int get end => $_get(4, 0);
  set end(int v) { $_setSignedInt32(4, v); }
  bool hasEnd() => $_has(4);
  void clearEnd() => clearField(5);
}

class NlEntities extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlEntities', package: const $pb.PackageName('nlpserv'))
    ..pc<NlEntity>(1, 'entities', $pb.PbFieldType.PM,NlEntity.create)
    ..hasRequiredFields = false
  ;

  NlEntities() : super();
  NlEntities.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlEntities.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlEntities clone() => new NlEntities()..mergeFromMessage(this);
  NlEntities copyWith(void Function(NlEntities) updates) => super.copyWith((message) => updates(message as NlEntities));
  $pb.BuilderInfo get info_ => _i;
  static NlEntities create() => new NlEntities();
  NlEntities createEmptyInstance() => create();
  static $pb.PbList<NlEntities> createRepeated() => new $pb.PbList<NlEntities>();
  static NlEntities getDefault() => _defaultInstance ??= create()..freeze();
  static NlEntities _defaultInstance;

  List<NlEntity> get entities => $_getList(0);
}

class NlAmount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlAmount', package: const $pb.PackageName('nlpserv'))
    ..a<NlEntity>(1, 'entity', $pb.PbFieldType.OM, NlEntity.getDefault, NlEntity.create)
    ..aOS(2, 'numericVal')
    ..hasRequiredFields = false
  ;

  NlAmount() : super();
  NlAmount.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlAmount.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlAmount clone() => new NlAmount()..mergeFromMessage(this);
  NlAmount copyWith(void Function(NlAmount) updates) => super.copyWith((message) => updates(message as NlAmount));
  $pb.BuilderInfo get info_ => _i;
  static NlAmount create() => new NlAmount();
  NlAmount createEmptyInstance() => create();
  static $pb.PbList<NlAmount> createRepeated() => new $pb.PbList<NlAmount>();
  static NlAmount getDefault() => _defaultInstance ??= create()..freeze();
  static NlAmount _defaultInstance;

  NlEntity get entity => $_getN(0);
  set entity(NlEntity v) { setField(1, v); }
  bool hasEntity() => $_has(0);
  void clearEntity() => clearField(1);

  String get numericVal => $_getS(1, '');
  set numericVal(String v) { $_setString(1, v); }
  bool hasNumericVal() => $_has(1);
  void clearNumericVal() => clearField(2);
}

class NlAmountList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlAmountList', package: const $pb.PackageName('nlpserv'))
    ..pc<NlAmount>(1, 'amount', $pb.PbFieldType.PM,NlAmount.create)
    ..hasRequiredFields = false
  ;

  NlAmountList() : super();
  NlAmountList.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlAmountList.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlAmountList clone() => new NlAmountList()..mergeFromMessage(this);
  NlAmountList copyWith(void Function(NlAmountList) updates) => super.copyWith((message) => updates(message as NlAmountList));
  $pb.BuilderInfo get info_ => _i;
  static NlAmountList create() => new NlAmountList();
  NlAmountList createEmptyInstance() => create();
  static $pb.PbList<NlAmountList> createRepeated() => new $pb.PbList<NlAmountList>();
  static NlAmountList getDefault() => _defaultInstance ??= create()..freeze();
  static NlAmountList _defaultInstance;

  List<NlAmount> get amount => $_getList(0);
}

class NlTokenizerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlTokenizerRequest', package: const $pb.PackageName('nlpserv'))
    ..a<NlText>(1, 'text', $pb.PbFieldType.OM, NlText.getDefault, NlText.create)
    ..a<NlTokenizerOptions>(2, 'options', $pb.PbFieldType.OM, NlTokenizerOptions.getDefault, NlTokenizerOptions.create)
    ..hasRequiredFields = false
  ;

  NlTokenizerRequest() : super();
  NlTokenizerRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlTokenizerRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlTokenizerRequest clone() => new NlTokenizerRequest()..mergeFromMessage(this);
  NlTokenizerRequest copyWith(void Function(NlTokenizerRequest) updates) => super.copyWith((message) => updates(message as NlTokenizerRequest));
  $pb.BuilderInfo get info_ => _i;
  static NlTokenizerRequest create() => new NlTokenizerRequest();
  NlTokenizerRequest createEmptyInstance() => create();
  static $pb.PbList<NlTokenizerRequest> createRepeated() => new $pb.PbList<NlTokenizerRequest>();
  static NlTokenizerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static NlTokenizerRequest _defaultInstance;

  NlText get text => $_getN(0);
  set text(NlText v) { setField(1, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);

  NlTokenizerOptions get options => $_getN(1);
  set options(NlTokenizerOptions v) { setField(2, v); }
  bool hasOptions() => $_has(1);
  void clearOptions() => clearField(2);
}

class NlToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlToken', package: const $pb.PackageName('nlpserv'))
    ..aOS(1, 'text')
    ..a<int>(2, 'length', $pb.PbFieldType.O3)
    ..aOS(3, 'label')
    ..hasRequiredFields = false
  ;

  NlToken() : super();
  NlToken.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlToken.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlToken clone() => new NlToken()..mergeFromMessage(this);
  NlToken copyWith(void Function(NlToken) updates) => super.copyWith((message) => updates(message as NlToken));
  $pb.BuilderInfo get info_ => _i;
  static NlToken create() => new NlToken();
  NlToken createEmptyInstance() => create();
  static $pb.PbList<NlToken> createRepeated() => new $pb.PbList<NlToken>();
  static NlToken getDefault() => _defaultInstance ??= create()..freeze();
  static NlToken _defaultInstance;

  String get text => $_getS(0, '');
  set text(String v) { $_setString(0, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);

  int get length => $_get(1, 0);
  set length(int v) { $_setSignedInt32(1, v); }
  bool hasLength() => $_has(1);
  void clearLength() => clearField(2);

  String get label => $_getS(2, '');
  set label(String v) { $_setString(2, v); }
  bool hasLabel() => $_has(2);
  void clearLabel() => clearField(3);
}

class NlTokens extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlTokens', package: const $pb.PackageName('nlpserv'))
    ..pc<NlToken>(1, 'tokens', $pb.PbFieldType.PM,NlToken.create)
    ..hasRequiredFields = false
  ;

  NlTokens() : super();
  NlTokens.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlTokens.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlTokens clone() => new NlTokens()..mergeFromMessage(this);
  NlTokens copyWith(void Function(NlTokens) updates) => super.copyWith((message) => updates(message as NlTokens));
  $pb.BuilderInfo get info_ => _i;
  static NlTokens create() => new NlTokens();
  NlTokens createEmptyInstance() => create();
  static $pb.PbList<NlTokens> createRepeated() => new $pb.PbList<NlTokens>();
  static NlTokens getDefault() => _defaultInstance ??= create()..freeze();
  static NlTokens _defaultInstance;

  List<NlToken> get tokens => $_getList(0);
}

class NlTokenizerOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlTokenizerOptions', package: const $pb.PackageName('nlpserv'))
    ..aOB(1, 'japaneseNameRecognize')
    ..aOB(2, 'placeRecognize')
    ..aOB(3, 'organizationRecognize')
    ..aOB(4, 'nameRecognize')
    ..aOB(5, 'translatedNameRecognize')
    ..aOB(6, 'numberQuantifierRecognize')
    ..aOB(7, 'allNamedEntityRecognize')
    ..hasRequiredFields = false
  ;

  NlTokenizerOptions() : super();
  NlTokenizerOptions.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlTokenizerOptions.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlTokenizerOptions clone() => new NlTokenizerOptions()..mergeFromMessage(this);
  NlTokenizerOptions copyWith(void Function(NlTokenizerOptions) updates) => super.copyWith((message) => updates(message as NlTokenizerOptions));
  $pb.BuilderInfo get info_ => _i;
  static NlTokenizerOptions create() => new NlTokenizerOptions();
  NlTokenizerOptions createEmptyInstance() => create();
  static $pb.PbList<NlTokenizerOptions> createRepeated() => new $pb.PbList<NlTokenizerOptions>();
  static NlTokenizerOptions getDefault() => _defaultInstance ??= create()..freeze();
  static NlTokenizerOptions _defaultInstance;

  bool get japaneseNameRecognize => $_get(0, false);
  set japaneseNameRecognize(bool v) { $_setBool(0, v); }
  bool hasJapaneseNameRecognize() => $_has(0);
  void clearJapaneseNameRecognize() => clearField(1);

  bool get placeRecognize => $_get(1, false);
  set placeRecognize(bool v) { $_setBool(1, v); }
  bool hasPlaceRecognize() => $_has(1);
  void clearPlaceRecognize() => clearField(2);

  bool get organizationRecognize => $_get(2, false);
  set organizationRecognize(bool v) { $_setBool(2, v); }
  bool hasOrganizationRecognize() => $_has(2);
  void clearOrganizationRecognize() => clearField(3);

  bool get nameRecognize => $_get(3, false);
  set nameRecognize(bool v) { $_setBool(3, v); }
  bool hasNameRecognize() => $_has(3);
  void clearNameRecognize() => clearField(4);

  bool get translatedNameRecognize => $_get(4, false);
  set translatedNameRecognize(bool v) { $_setBool(4, v); }
  bool hasTranslatedNameRecognize() => $_has(4);
  void clearTranslatedNameRecognize() => clearField(5);

  bool get numberQuantifierRecognize => $_get(5, false);
  set numberQuantifierRecognize(bool v) { $_setBool(5, v); }
  bool hasNumberQuantifierRecognize() => $_has(5);
  void clearNumberQuantifierRecognize() => clearField(6);

  bool get allNamedEntityRecognize => $_get(6, false);
  set allNamedEntityRecognize(bool v) { $_setBool(6, v); }
  bool hasAllNamedEntityRecognize() => $_has(6);
  void clearAllNamedEntityRecognize() => clearField(7);
}

class NlResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlResult', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'code', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  NlResult() : super();
  NlResult.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlResult.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlResult clone() => new NlResult()..mergeFromMessage(this);
  NlResult copyWith(void Function(NlResult) updates) => super.copyWith((message) => updates(message as NlResult));
  $pb.BuilderInfo get info_ => _i;
  static NlResult create() => new NlResult();
  NlResult createEmptyInstance() => create();
  static $pb.PbList<NlResult> createRepeated() => new $pb.PbList<NlResult>();
  static NlResult getDefault() => _defaultInstance ??= create()..freeze();
  static NlResult _defaultInstance;

  int get code => $_get(0, 0);
  set code(int v) { $_setSignedInt32(0, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);
}

class NlText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlText', package: const $pb.PackageName('nlpserv'))
    ..aOS(1, 'text')
    ..aOS(2, 'lang')
    ..hasRequiredFields = false
  ;

  NlText() : super();
  NlText.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlText.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlText clone() => new NlText()..mergeFromMessage(this);
  NlText copyWith(void Function(NlText) updates) => super.copyWith((message) => updates(message as NlText));
  $pb.BuilderInfo get info_ => _i;
  static NlText create() => new NlText();
  NlText createEmptyInstance() => create();
  static $pb.PbList<NlText> createRepeated() => new $pb.PbList<NlText>();
  static NlText getDefault() => _defaultInstance ??= create()..freeze();
  static NlText _defaultInstance;

  String get text => $_getS(0, '');
  set text(String v) { $_setString(0, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);

  String get lang => $_getS(1, '');
  set lang(String v) { $_setString(1, v); }
  bool hasLang() => $_has(1);
  void clearLang() => clearField(2);
}

class NlTexts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlTexts', package: const $pb.PackageName('nlpserv'))
    ..pc<NlText>(1, 'texts', $pb.PbFieldType.PM,NlText.create)
    ..hasRequiredFields = false
  ;

  NlTexts() : super();
  NlTexts.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlTexts.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlTexts clone() => new NlTexts()..mergeFromMessage(this);
  NlTexts copyWith(void Function(NlTexts) updates) => super.copyWith((message) => updates(message as NlTexts));
  $pb.BuilderInfo get info_ => _i;
  static NlTexts create() => new NlTexts();
  NlTexts createEmptyInstance() => create();
  static $pb.PbList<NlTexts> createRepeated() => new $pb.PbList<NlTexts>();
  static NlTexts getDefault() => _defaultInstance ??= create()..freeze();
  static NlTexts _defaultInstance;

  List<NlText> get texts => $_getList(0);
}

class NlWord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlWord', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'lemma')
    ..aOS(3, 'postag1')
    ..aOS(4, 'postag2')
    ..a<int>(5, 'headId', $pb.PbFieldType.O3)
    ..aOS(6, 'deprel')
    ..aOS(7, 'name')
    ..hasRequiredFields = false
  ;

  NlWord() : super();
  NlWord.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlWord.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlWord clone() => new NlWord()..mergeFromMessage(this);
  NlWord copyWith(void Function(NlWord) updates) => super.copyWith((message) => updates(message as NlWord));
  $pb.BuilderInfo get info_ => _i;
  static NlWord create() => new NlWord();
  NlWord createEmptyInstance() => create();
  static $pb.PbList<NlWord> createRepeated() => new $pb.PbList<NlWord>();
  static NlWord getDefault() => _defaultInstance ??= create()..freeze();
  static NlWord _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get lemma => $_getS(1, '');
  set lemma(String v) { $_setString(1, v); }
  bool hasLemma() => $_has(1);
  void clearLemma() => clearField(2);

  String get postag1 => $_getS(2, '');
  set postag1(String v) { $_setString(2, v); }
  bool hasPostag1() => $_has(2);
  void clearPostag1() => clearField(3);

  String get postag2 => $_getS(3, '');
  set postag2(String v) { $_setString(3, v); }
  bool hasPostag2() => $_has(3);
  void clearPostag2() => clearField(4);

  int get headId => $_get(4, 0);
  set headId(int v) { $_setSignedInt32(4, v); }
  bool hasHeadId() => $_has(4);
  void clearHeadId() => clearField(5);

  String get deprel => $_getS(5, '');
  set deprel(String v) { $_setString(5, v); }
  bool hasDeprel() => $_has(5);
  void clearDeprel() => clearField(6);

  String get name => $_getS(6, '');
  set name(String v) { $_setString(6, v); }
  bool hasName() => $_has(6);
  void clearName() => clearField(7);
}

class NlDepWord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlDepWord', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'lemma')
    ..aOS(3, 'head')
    ..aOS(4, 'deprel')
    ..hasRequiredFields = false
  ;

  NlDepWord() : super();
  NlDepWord.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlDepWord.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlDepWord clone() => new NlDepWord()..mergeFromMessage(this);
  NlDepWord copyWith(void Function(NlDepWord) updates) => super.copyWith((message) => updates(message as NlDepWord));
  $pb.BuilderInfo get info_ => _i;
  static NlDepWord create() => new NlDepWord();
  NlDepWord createEmptyInstance() => create();
  static $pb.PbList<NlDepWord> createRepeated() => new $pb.PbList<NlDepWord>();
  static NlDepWord getDefault() => _defaultInstance ??= create()..freeze();
  static NlDepWord _defaultInstance;

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get lemma => $_getS(1, '');
  set lemma(String v) { $_setString(1, v); }
  bool hasLemma() => $_has(1);
  void clearLemma() => clearField(2);

  String get head => $_getS(2, '');
  set head(String v) { $_setString(2, v); }
  bool hasHead() => $_has(2);
  void clearHead() => clearField(3);

  String get deprel => $_getS(3, '');
  set deprel(String v) { $_setString(3, v); }
  bool hasDeprel() => $_has(3);
  void clearDeprel() => clearField(4);
}

class NlDepWords extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlDepWords', package: const $pb.PackageName('nlpserv'))
    ..pc<NlDepWord>(1, 'words', $pb.PbFieldType.PM,NlDepWord.create)
    ..m<String, String>(2, 'coreGraph', 'NlDepWords.CoreGraphEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('nlpserv'))
    ..aOS(3, 'summary')
    ..hasRequiredFields = false
  ;

  NlDepWords() : super();
  NlDepWords.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlDepWords.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlDepWords clone() => new NlDepWords()..mergeFromMessage(this);
  NlDepWords copyWith(void Function(NlDepWords) updates) => super.copyWith((message) => updates(message as NlDepWords));
  $pb.BuilderInfo get info_ => _i;
  static NlDepWords create() => new NlDepWords();
  NlDepWords createEmptyInstance() => create();
  static $pb.PbList<NlDepWords> createRepeated() => new $pb.PbList<NlDepWords>();
  static NlDepWords getDefault() => _defaultInstance ??= create()..freeze();
  static NlDepWords _defaultInstance;

  List<NlDepWord> get words => $_getList(0);

  Map<String, String> get coreGraph => $_getMap(1);

  String get summary => $_getS(2, '');
  set summary(String v) { $_setString(2, v); }
  bool hasSummary() => $_has(2);
  void clearSummary() => clearField(3);
}

class NlParseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlParseRequest', package: const $pb.PackageName('nlpserv'))
    ..aOS(1, 'text')
    ..hasRequiredFields = false
  ;

  NlParseRequest() : super();
  NlParseRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlParseRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlParseRequest clone() => new NlParseRequest()..mergeFromMessage(this);
  NlParseRequest copyWith(void Function(NlParseRequest) updates) => super.copyWith((message) => updates(message as NlParseRequest));
  $pb.BuilderInfo get info_ => _i;
  static NlParseRequest create() => new NlParseRequest();
  NlParseRequest createEmptyInstance() => create();
  static $pb.PbList<NlParseRequest> createRepeated() => new $pb.PbList<NlParseRequest>();
  static NlParseRequest getDefault() => _defaultInstance ??= create()..freeze();
  static NlParseRequest _defaultInstance;

  String get text => $_getS(0, '');
  set text(String v) { $_setString(0, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);
}

class NlPinyinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlPinyinRequest', package: const $pb.PackageName('nlpserv'))
    ..aOS(1, 'text')
    ..e<NlPinyinRequest_PinyinPresentation>(2, 'presentation', $pb.PbFieldType.OE, NlPinyinRequest_PinyinPresentation.NUMBER, NlPinyinRequest_PinyinPresentation.valueOf, NlPinyinRequest_PinyinPresentation.values)
    ..hasRequiredFields = false
  ;

  NlPinyinRequest() : super();
  NlPinyinRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlPinyinRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlPinyinRequest clone() => new NlPinyinRequest()..mergeFromMessage(this);
  NlPinyinRequest copyWith(void Function(NlPinyinRequest) updates) => super.copyWith((message) => updates(message as NlPinyinRequest));
  $pb.BuilderInfo get info_ => _i;
  static NlPinyinRequest create() => new NlPinyinRequest();
  NlPinyinRequest createEmptyInstance() => create();
  static $pb.PbList<NlPinyinRequest> createRepeated() => new $pb.PbList<NlPinyinRequest>();
  static NlPinyinRequest getDefault() => _defaultInstance ??= create()..freeze();
  static NlPinyinRequest _defaultInstance;

  String get text => $_getS(0, '');
  set text(String v) { $_setString(0, v); }
  bool hasText() => $_has(0);
  void clearText() => clearField(1);

  NlPinyinRequest_PinyinPresentation get presentation => $_getN(1);
  set presentation(NlPinyinRequest_PinyinPresentation v) { setField(2, v); }
  bool hasPresentation() => $_has(1);
  void clearPresentation() => clearField(2);
}

class NlSentence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlSentence', package: const $pb.PackageName('nlpserv'))
    ..pc<NlWord>(1, 'words', $pb.PbFieldType.PM,NlWord.create)
    ..hasRequiredFields = false
  ;

  NlSentence() : super();
  NlSentence.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlSentence.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlSentence clone() => new NlSentence()..mergeFromMessage(this);
  NlSentence copyWith(void Function(NlSentence) updates) => super.copyWith((message) => updates(message as NlSentence));
  $pb.BuilderInfo get info_ => _i;
  static NlSentence create() => new NlSentence();
  NlSentence createEmptyInstance() => create();
  static $pb.PbList<NlSentence> createRepeated() => new $pb.PbList<NlSentence>();
  static NlSentence getDefault() => _defaultInstance ??= create()..freeze();
  static NlSentence _defaultInstance;

  List<NlWord> get words => $_getList(0);
}

class NlSentences extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlSentences', package: const $pb.PackageName('nlpserv'))
    ..pc<NlSentence>(1, 'sentences', $pb.PbFieldType.PM,NlSentence.create)
    ..hasRequiredFields = false
  ;

  NlSentences() : super();
  NlSentences.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlSentences.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlSentences clone() => new NlSentences()..mergeFromMessage(this);
  NlSentences copyWith(void Function(NlSentences) updates) => super.copyWith((message) => updates(message as NlSentences));
  $pb.BuilderInfo get info_ => _i;
  static NlSentences create() => new NlSentences();
  NlSentences createEmptyInstance() => create();
  static $pb.PbList<NlSentences> createRepeated() => new $pb.PbList<NlSentences>();
  static NlSentences getDefault() => _defaultInstance ??= create()..freeze();
  static NlSentences _defaultInstance;

  List<NlSentence> get sentences => $_getList(0);
}

class NlDocumentSimilarity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlDocumentSimilarity', package: const $pb.PackageName('nlpserv'))
    ..a<int>(1, 'documentId', $pb.PbFieldType.O3)
    ..aOS(2, 'content')
    ..a<double>(3, 'similarity', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  NlDocumentSimilarity() : super();
  NlDocumentSimilarity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlDocumentSimilarity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlDocumentSimilarity clone() => new NlDocumentSimilarity()..mergeFromMessage(this);
  NlDocumentSimilarity copyWith(void Function(NlDocumentSimilarity) updates) => super.copyWith((message) => updates(message as NlDocumentSimilarity));
  $pb.BuilderInfo get info_ => _i;
  static NlDocumentSimilarity create() => new NlDocumentSimilarity();
  NlDocumentSimilarity createEmptyInstance() => create();
  static $pb.PbList<NlDocumentSimilarity> createRepeated() => new $pb.PbList<NlDocumentSimilarity>();
  static NlDocumentSimilarity getDefault() => _defaultInstance ??= create()..freeze();
  static NlDocumentSimilarity _defaultInstance;

  int get documentId => $_get(0, 0);
  set documentId(int v) { $_setSignedInt32(0, v); }
  bool hasDocumentId() => $_has(0);
  void clearDocumentId() => clearField(1);

  String get content => $_getS(1, '');
  set content(String v) { $_setString(1, v); }
  bool hasContent() => $_has(1);
  void clearContent() => clearField(2);

  double get similarity => $_getN(2);
  set similarity(double v) { $_setFloat(2, v); }
  bool hasSimilarity() => $_has(2);
  void clearSimilarity() => clearField(3);
}

class NlDocumentSimilaritySet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlDocumentSimilaritySet', package: const $pb.PackageName('nlpserv'))
    ..pc<NlDocumentSimilarity>(1, 'docs', $pb.PbFieldType.PM,NlDocumentSimilarity.create)
    ..hasRequiredFields = false
  ;

  NlDocumentSimilaritySet() : super();
  NlDocumentSimilaritySet.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlDocumentSimilaritySet.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlDocumentSimilaritySet clone() => new NlDocumentSimilaritySet()..mergeFromMessage(this);
  NlDocumentSimilaritySet copyWith(void Function(NlDocumentSimilaritySet) updates) => super.copyWith((message) => updates(message as NlDocumentSimilaritySet));
  $pb.BuilderInfo get info_ => _i;
  static NlDocumentSimilaritySet create() => new NlDocumentSimilaritySet();
  NlDocumentSimilaritySet createEmptyInstance() => create();
  static $pb.PbList<NlDocumentSimilaritySet> createRepeated() => new $pb.PbList<NlDocumentSimilaritySet>();
  static NlDocumentSimilaritySet getDefault() => _defaultInstance ??= create()..freeze();
  static NlDocumentSimilaritySet _defaultInstance;

  List<NlDocumentSimilarity> get docs => $_getList(0);
}

class NlDocumentSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NlDocumentSet', package: const $pb.PackageName('nlpserv'))
    ..pPS(1, 'textList')
    ..hasRequiredFields = false
  ;

  NlDocumentSet() : super();
  NlDocumentSet.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NlDocumentSet.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NlDocumentSet clone() => new NlDocumentSet()..mergeFromMessage(this);
  NlDocumentSet copyWith(void Function(NlDocumentSet) updates) => super.copyWith((message) => updates(message as NlDocumentSet));
  $pb.BuilderInfo get info_ => _i;
  static NlDocumentSet create() => new NlDocumentSet();
  NlDocumentSet createEmptyInstance() => create();
  static $pb.PbList<NlDocumentSet> createRepeated() => new $pb.PbList<NlDocumentSet>();
  static NlDocumentSet getDefault() => _defaultInstance ??= create()..freeze();
  static NlDocumentSet _defaultInstance;

  List<String> get textList => $_getList(0);
}

