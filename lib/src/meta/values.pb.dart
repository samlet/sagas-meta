///
//  Generated code. Do not modify.
//  source: values.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'values.pbenum.dart';

export 'values.pbenum.dart';

enum TaFieldValue_ValueOf {
  stringVal, 
  doubleVal, 
  intVal, 
  blob, 
  notSet
}

class TaFieldValue extends $pb.GeneratedMessage {
  static const Map<int, TaFieldValue_ValueOf> _TaFieldValue_ValueOfByTag = {
    1 : TaFieldValue_ValueOf.stringVal,
    2 : TaFieldValue_ValueOf.doubleVal,
    3 : TaFieldValue_ValueOf.intVal,
    4 : TaFieldValue_ValueOf.blob,
    0 : TaFieldValue_ValueOf.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaFieldValue', package: const $pb.PackageName('model'))
    ..aOS(1, 'stringVal')
    ..a<double>(2, 'doubleVal', $pb.PbFieldType.OD)
    ..aInt64(3, 'intVal')
    ..a<List<int>>(4, 'blob', $pb.PbFieldType.OY)
    ..aOS(5, 'blobType')
    ..oo(0, [1, 2, 3, 4])
    ..hasRequiredFields = false
  ;

  TaFieldValue() : super();
  TaFieldValue.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaFieldValue.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaFieldValue clone() => new TaFieldValue()..mergeFromMessage(this);
  TaFieldValue copyWith(void Function(TaFieldValue) updates) => super.copyWith((message) => updates(message as TaFieldValue));
  $pb.BuilderInfo get info_ => _i;
  static TaFieldValue create() => new TaFieldValue();
  TaFieldValue createEmptyInstance() => create();
  static $pb.PbList<TaFieldValue> createRepeated() => new $pb.PbList<TaFieldValue>();
  static TaFieldValue getDefault() => _defaultInstance ??= create()..freeze();
  static TaFieldValue _defaultInstance;

  TaFieldValue_ValueOf whichValueOf() => _TaFieldValue_ValueOfByTag[$_whichOneof(0)];
  void clearValueOf() => clearField($_whichOneof(0));

  String get stringVal => $_getS(0, '');
  set stringVal(String v) { $_setString(0, v); }
  bool hasStringVal() => $_has(0);
  void clearStringVal() => clearField(1);

  double get doubleVal => $_getN(1);
  set doubleVal(double v) { $_setDouble(1, v); }
  bool hasDoubleVal() => $_has(1);
  void clearDoubleVal() => clearField(2);

  Int64 get intVal => $_getI64(2);
  set intVal(Int64 v) { $_setInt64(2, v); }
  bool hasIntVal() => $_has(2);
  void clearIntVal() => clearField(3);

  List<int> get blob => $_getN(3);
  set blob(List<int> v) { $_setBytes(3, v); }
  bool hasBlob() => $_has(3);
  void clearBlob() => clearField(4);

  String get blobType => $_getS(4, '');
  set blobType(String v) { $_setString(4, v); }
  bool hasBlobType() => $_has(4);
  void clearBlobType() => clearField(5);
}

class TaEntityValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaEntityValue', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityName')
    ..aOB(2, 'mutable')
    ..m<String, TaFieldValue>(3, 'fields', 'TaEntityValue.FieldsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, TaFieldValue.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  TaEntityValue() : super();
  TaEntityValue.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaEntityValue.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaEntityValue clone() => new TaEntityValue()..mergeFromMessage(this);
  TaEntityValue copyWith(void Function(TaEntityValue) updates) => super.copyWith((message) => updates(message as TaEntityValue));
  $pb.BuilderInfo get info_ => _i;
  static TaEntityValue create() => new TaEntityValue();
  TaEntityValue createEmptyInstance() => create();
  static $pb.PbList<TaEntityValue> createRepeated() => new $pb.PbList<TaEntityValue>();
  static TaEntityValue getDefault() => _defaultInstance ??= create()..freeze();
  static TaEntityValue _defaultInstance;

  String get entityName => $_getS(0, '');
  set entityName(String v) { $_setString(0, v); }
  bool hasEntityName() => $_has(0);
  void clearEntityName() => clearField(1);

  bool get mutable => $_get(1, false);
  set mutable(bool v) { $_setBool(1, v); }
  bool hasMutable() => $_has(1);
  void clearMutable() => clearField(2);

  Map<String, TaFieldValue> get fields => $_getMap(2);
}

class TaEntityValues extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaEntityValues', package: const $pb.PackageName('model'))
    ..pc<TaEntityValue>(1, 'values', $pb.PbFieldType.PM,TaEntityValue.create)
    ..hasRequiredFields = false
  ;

  TaEntityValues() : super();
  TaEntityValues.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaEntityValues.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaEntityValues clone() => new TaEntityValues()..mergeFromMessage(this);
  TaEntityValues copyWith(void Function(TaEntityValues) updates) => super.copyWith((message) => updates(message as TaEntityValues));
  $pb.BuilderInfo get info_ => _i;
  static TaEntityValues create() => new TaEntityValues();
  TaEntityValues createEmptyInstance() => create();
  static $pb.PbList<TaEntityValues> createRepeated() => new $pb.PbList<TaEntityValues>();
  static TaEntityValues getDefault() => _defaultInstance ??= create()..freeze();
  static TaEntityValues _defaultInstance;

  List<TaEntityValue> get values => $_getList(0);
}

class TaStringEntries extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaStringEntries', package: const $pb.PackageName('model'))
    ..m<String, String>(1, 'values', 'TaStringEntries.ValuesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('model'))
    ..aOS(2, 'entityName')
    ..hasRequiredFields = false
  ;

  TaStringEntries() : super();
  TaStringEntries.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaStringEntries.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaStringEntries clone() => new TaStringEntries()..mergeFromMessage(this);
  TaStringEntries copyWith(void Function(TaStringEntries) updates) => super.copyWith((message) => updates(message as TaStringEntries));
  $pb.BuilderInfo get info_ => _i;
  static TaStringEntries create() => new TaStringEntries();
  TaStringEntries createEmptyInstance() => create();
  static $pb.PbList<TaStringEntries> createRepeated() => new $pb.PbList<TaStringEntries>();
  static TaStringEntries getDefault() => _defaultInstance ??= create()..freeze();
  static TaStringEntries _defaultInstance;

  Map<String, String> get values => $_getMap(0);

  String get entityName => $_getS(1, '');
  set entityName(String v) { $_setString(1, v); }
  bool hasEntityName() => $_has(1);
  void clearEntityName() => clearField(2);
}

class TaStringEntriesBatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaStringEntriesBatch', package: const $pb.PackageName('model'))
    ..pc<TaStringEntries>(1, 'records', $pb.PbFieldType.PM,TaStringEntries.create)
    ..hasRequiredFields = false
  ;

  TaStringEntriesBatch() : super();
  TaStringEntriesBatch.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaStringEntriesBatch.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaStringEntriesBatch clone() => new TaStringEntriesBatch()..mergeFromMessage(this);
  TaStringEntriesBatch copyWith(void Function(TaStringEntriesBatch) updates) => super.copyWith((message) => updates(message as TaStringEntriesBatch));
  $pb.BuilderInfo get info_ => _i;
  static TaStringEntriesBatch create() => new TaStringEntriesBatch();
  TaStringEntriesBatch createEmptyInstance() => create();
  static $pb.PbList<TaStringEntriesBatch> createRepeated() => new $pb.PbList<TaStringEntriesBatch>();
  static TaStringEntriesBatch getDefault() => _defaultInstance ??= create()..freeze();
  static TaStringEntriesBatch _defaultInstance;

  List<TaStringEntries> get records => $_getList(0);
}

class TaStringEntriesMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaStringEntriesMap', package: const $pb.PackageName('model'))
    ..m<String, TaStringEntries>(1, 'entries', 'TaStringEntriesMap.EntriesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, TaStringEntries.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  TaStringEntriesMap() : super();
  TaStringEntriesMap.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaStringEntriesMap.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaStringEntriesMap clone() => new TaStringEntriesMap()..mergeFromMessage(this);
  TaStringEntriesMap copyWith(void Function(TaStringEntriesMap) updates) => super.copyWith((message) => updates(message as TaStringEntriesMap));
  $pb.BuilderInfo get info_ => _i;
  static TaStringEntriesMap create() => new TaStringEntriesMap();
  TaStringEntriesMap createEmptyInstance() => create();
  static $pb.PbList<TaStringEntriesMap> createRepeated() => new $pb.PbList<TaStringEntriesMap>();
  static TaStringEntriesMap getDefault() => _defaultInstance ??= create()..freeze();
  static TaStringEntriesMap _defaultInstance;

  Map<String, TaStringEntries> get entries => $_getMap(0);
}

class TaIdBag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaIdBag', package: const $pb.PackageName('model'))
    ..pPS(1, 'ids')
    ..hasRequiredFields = false
  ;

  TaIdBag() : super();
  TaIdBag.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaIdBag.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaIdBag clone() => new TaIdBag()..mergeFromMessage(this);
  TaIdBag copyWith(void Function(TaIdBag) updates) => super.copyWith((message) => updates(message as TaIdBag));
  $pb.BuilderInfo get info_ => _i;
  static TaIdBag create() => new TaIdBag();
  TaIdBag createEmptyInstance() => create();
  static $pb.PbList<TaIdBag> createRepeated() => new $pb.PbList<TaIdBag>();
  static TaIdBag getDefault() => _defaultInstance ??= create()..freeze();
  static TaIdBag _defaultInstance;

  List<String> get ids => $_getList(0);
}

class TaRecordset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaRecordset', package: const $pb.PackageName('model'))
    ..m<String, TaIdBag>(1, 'recordGroups', 'TaRecordset.RecordGroupsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, TaIdBag.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  TaRecordset() : super();
  TaRecordset.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaRecordset.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaRecordset clone() => new TaRecordset()..mergeFromMessage(this);
  TaRecordset copyWith(void Function(TaRecordset) updates) => super.copyWith((message) => updates(message as TaRecordset));
  $pb.BuilderInfo get info_ => _i;
  static TaRecordset create() => new TaRecordset();
  TaRecordset createEmptyInstance() => create();
  static $pb.PbList<TaRecordset> createRepeated() => new $pb.PbList<TaRecordset>();
  static TaRecordset getDefault() => _defaultInstance ??= create()..freeze();
  static TaRecordset _defaultInstance;

  Map<String, TaIdBag> get recordGroups => $_getMap(0);
}

class TaJson extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaJson', package: const $pb.PackageName('model'))
    ..aOS(1, 'content')
    ..e<JsonDataType>(2, 'dataType', $pb.PbFieldType.OE, JsonDataType.MAP, JsonDataType.valueOf, JsonDataType.values)
    ..hasRequiredFields = false
  ;

  TaJson() : super();
  TaJson.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaJson.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaJson clone() => new TaJson()..mergeFromMessage(this);
  TaJson copyWith(void Function(TaJson) updates) => super.copyWith((message) => updates(message as TaJson));
  $pb.BuilderInfo get info_ => _i;
  static TaJson create() => new TaJson();
  TaJson createEmptyInstance() => create();
  static $pb.PbList<TaJson> createRepeated() => new $pb.PbList<TaJson>();
  static TaJson getDefault() => _defaultInstance ??= create()..freeze();
  static TaJson _defaultInstance;

  String get content => $_getS(0, '');
  set content(String v) { $_setString(0, v); }
  bool hasContent() => $_has(0);
  void clearContent() => clearField(1);

  JsonDataType get dataType => $_getN(1);
  set dataType(JsonDataType v) { setField(2, v); }
  bool hasDataType() => $_has(1);
  void clearDataType() => clearField(2);
}

class TaJsonEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaJsonEntity', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityName')
    ..aOS(2, 'json')
    ..hasRequiredFields = false
  ;

  TaJsonEntity() : super();
  TaJsonEntity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaJsonEntity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaJsonEntity clone() => new TaJsonEntity()..mergeFromMessage(this);
  TaJsonEntity copyWith(void Function(TaJsonEntity) updates) => super.copyWith((message) => updates(message as TaJsonEntity));
  $pb.BuilderInfo get info_ => _i;
  static TaJsonEntity create() => new TaJsonEntity();
  TaJsonEntity createEmptyInstance() => create();
  static $pb.PbList<TaJsonEntity> createRepeated() => new $pb.PbList<TaJsonEntity>();
  static TaJsonEntity getDefault() => _defaultInstance ??= create()..freeze();
  static TaJsonEntity _defaultInstance;

  String get entityName => $_getS(0, '');
  set entityName(String v) { $_setString(0, v); }
  bool hasEntityName() => $_has(0);
  void clearEntityName() => clearField(1);

  String get json => $_getS(1, '');
  set json(String v) { $_setString(1, v); }
  bool hasJson() => $_has(1);
  void clearJson() => clearField(2);
}

class TaJsonEntities extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TaJsonEntities', package: const $pb.PackageName('model'))
    ..pc<TaJsonEntity>(1, 'entities', $pb.PbFieldType.PM,TaJsonEntity.create)
    ..hasRequiredFields = false
  ;

  TaJsonEntities() : super();
  TaJsonEntities.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaJsonEntities.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaJsonEntities clone() => new TaJsonEntities()..mergeFromMessage(this);
  TaJsonEntities copyWith(void Function(TaJsonEntities) updates) => super.copyWith((message) => updates(message as TaJsonEntities));
  $pb.BuilderInfo get info_ => _i;
  static TaJsonEntities create() => new TaJsonEntities();
  TaJsonEntities createEmptyInstance() => create();
  static $pb.PbList<TaJsonEntities> createRepeated() => new $pb.PbList<TaJsonEntities>();
  static TaJsonEntities getDefault() => _defaultInstance ??= create()..freeze();
  static TaJsonEntities _defaultInstance;

  List<TaJsonEntity> get entities => $_getList(0);
}

class ExternalLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ExternalLink', package: const $pb.PackageName('model'))
    ..aOS(1, 'gid')
    ..aOS(2, 'name')
    ..aOS(3, 'description')
    ..hasRequiredFields = false
  ;

  ExternalLink() : super();
  ExternalLink.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ExternalLink.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ExternalLink clone() => new ExternalLink()..mergeFromMessage(this);
  ExternalLink copyWith(void Function(ExternalLink) updates) => super.copyWith((message) => updates(message as ExternalLink));
  $pb.BuilderInfo get info_ => _i;
  static ExternalLink create() => new ExternalLink();
  ExternalLink createEmptyInstance() => create();
  static $pb.PbList<ExternalLink> createRepeated() => new $pb.PbList<ExternalLink>();
  static ExternalLink getDefault() => _defaultInstance ??= create()..freeze();
  static ExternalLink _defaultInstance;

  String get gid => $_getS(0, '');
  set gid(String v) { $_setString(0, v); }
  bool hasGid() => $_has(0);
  void clearGid() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  String get description => $_getS(2, '');
  set description(String v) { $_setString(2, v); }
  bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);
}

class ExternalLinks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ExternalLinks', package: const $pb.PackageName('model'))
    ..pc<ExternalLink>(1, 'links', $pb.PbFieldType.PM,ExternalLink.create)
    ..hasRequiredFields = false
  ;

  ExternalLinks() : super();
  ExternalLinks.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ExternalLinks.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ExternalLinks clone() => new ExternalLinks()..mergeFromMessage(this);
  ExternalLinks copyWith(void Function(ExternalLinks) updates) => super.copyWith((message) => updates(message as ExternalLinks));
  $pb.BuilderInfo get info_ => _i;
  static ExternalLinks create() => new ExternalLinks();
  ExternalLinks createEmptyInstance() => create();
  static $pb.PbList<ExternalLinks> createRepeated() => new $pb.PbList<ExternalLinks>();
  static ExternalLinks getDefault() => _defaultInstance ??= create()..freeze();
  static ExternalLinks _defaultInstance;

  List<ExternalLink> get links => $_getList(0);
}

