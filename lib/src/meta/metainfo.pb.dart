///
//  Generated code. Do not modify.
//  source: metainfo.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'metainfo.pbenum.dart';

export 'metainfo.pbenum.dart';

class MetaQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaQuery', package: const $pb.PackageName('model'))
    ..aOS(1, 'infoType')
    ..aOS(2, 'uri')
    ..a<List<int>>(3, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MetaQuery() : super();
  MetaQuery.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaQuery.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaQuery clone() => new MetaQuery()..mergeFromMessage(this);
  MetaQuery copyWith(void Function(MetaQuery) updates) => super.copyWith((message) => updates(message as MetaQuery));
  $pb.BuilderInfo get info_ => _i;
  static MetaQuery create() => new MetaQuery();
  MetaQuery createEmptyInstance() => create();
  static $pb.PbList<MetaQuery> createRepeated() => new $pb.PbList<MetaQuery>();
  static MetaQuery getDefault() => _defaultInstance ??= create()..freeze();
  static MetaQuery _defaultInstance;

  String get infoType => $_getS(0, '');
  set infoType(String v) { $_setString(0, v); }
  bool hasInfoType() => $_has(0);
  void clearInfoType() => clearField(1);

  String get uri => $_getS(1, '');
  set uri(String v) { $_setString(1, v); }
  bool hasUri() => $_has(1);
  void clearUri() => clearField(2);

  List<int> get data => $_getN(2);
  set data(List<int> v) { $_setBytes(2, v); }
  bool hasData() => $_has(2);
  void clearData() => clearField(3);
}

class MetaPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaPayload', package: const $pb.PackageName('model'))
    ..e<MetaPayloadType>(1, 'type', $pb.PbFieldType.OE, MetaPayloadType.ERROR_INFO, MetaPayloadType.valueOf, MetaPayloadType.values)
    ..a<List<int>>(2, 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MetaPayload() : super();
  MetaPayload.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaPayload.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaPayload clone() => new MetaPayload()..mergeFromMessage(this);
  MetaPayload copyWith(void Function(MetaPayload) updates) => super.copyWith((message) => updates(message as MetaPayload));
  $pb.BuilderInfo get info_ => _i;
  static MetaPayload create() => new MetaPayload();
  MetaPayload createEmptyInstance() => create();
  static $pb.PbList<MetaPayload> createRepeated() => new $pb.PbList<MetaPayload>();
  static MetaPayload getDefault() => _defaultInstance ??= create()..freeze();
  static MetaPayload _defaultInstance;

  MetaPayloadType get type => $_getN(0);
  set type(MetaPayloadType v) { setField(1, v); }
  bool hasType() => $_has(0);
  void clearType() => clearField(1);

  List<int> get body => $_getN(1);
  set body(List<int> v) { $_setBytes(1, v); }
  bool hasBody() => $_has(1);
  void clearBody() => clearField(2);
}

class ErrorInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ErrorInfo', package: const $pb.PackageName('model'))
    ..e<ErrorType>(1, 'errorType', $pb.PbFieldType.OE, ErrorType.SUCCESS, ErrorType.valueOf, ErrorType.values)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  ErrorInfo() : super();
  ErrorInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ErrorInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ErrorInfo clone() => new ErrorInfo()..mergeFromMessage(this);
  ErrorInfo copyWith(void Function(ErrorInfo) updates) => super.copyWith((message) => updates(message as ErrorInfo));
  $pb.BuilderInfo get info_ => _i;
  static ErrorInfo create() => new ErrorInfo();
  ErrorInfo createEmptyInstance() => create();
  static $pb.PbList<ErrorInfo> createRepeated() => new $pb.PbList<ErrorInfo>();
  static ErrorInfo getDefault() => _defaultInstance ??= create()..freeze();
  static ErrorInfo _defaultInstance;

  ErrorType get errorType => $_getN(0);
  set errorType(ErrorType v) { setField(1, v); }
  bool hasErrorType() => $_has(0);
  void clearErrorType() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class MetaField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaField', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..aOS(2, 'type')
    ..aOB(3, 'pk')
    ..aOB(4, 'notNull')
    ..aOB(5, 'autoCreatedInternal')
    ..aOB(6, 'enableAuditLog')
    ..pPS(7, 'validators')
    ..aOB(8, 'encrypt')
    ..hasRequiredFields = false
  ;

  MetaField() : super();
  MetaField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaField clone() => new MetaField()..mergeFromMessage(this);
  MetaField copyWith(void Function(MetaField) updates) => super.copyWith((message) => updates(message as MetaField));
  $pb.BuilderInfo get info_ => _i;
  static MetaField create() => new MetaField();
  MetaField createEmptyInstance() => create();
  static $pb.PbList<MetaField> createRepeated() => new $pb.PbList<MetaField>();
  static MetaField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaField _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) { $_setString(1, v); }
  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  bool get pk => $_get(2, false);
  set pk(bool v) { $_setBool(2, v); }
  bool hasPk() => $_has(2);
  void clearPk() => clearField(3);

  bool get notNull => $_get(3, false);
  set notNull(bool v) { $_setBool(3, v); }
  bool hasNotNull() => $_has(3);
  void clearNotNull() => clearField(4);

  bool get autoCreatedInternal => $_get(4, false);
  set autoCreatedInternal(bool v) { $_setBool(4, v); }
  bool hasAutoCreatedInternal() => $_has(4);
  void clearAutoCreatedInternal() => clearField(5);

  bool get enableAuditLog => $_get(5, false);
  set enableAuditLog(bool v) { $_setBool(5, v); }
  bool hasEnableAuditLog() => $_has(5);
  void clearEnableAuditLog() => clearField(6);

  List<String> get validators => $_getList(6);

  bool get encrypt => $_get(7, false);
  set encrypt(bool v) { $_setBool(7, v); }
  bool hasEncrypt() => $_has(7);
  void clearEncrypt() => clearField(8);
}

class MetaKeyMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaKeyMap', package: const $pb.PackageName('model'))
    ..aOS(1, 'fieldName')
    ..aOS(2, 'relFieldName')
    ..aOS(3, 'fullName')
    ..hasRequiredFields = false
  ;

  MetaKeyMap() : super();
  MetaKeyMap.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaKeyMap.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaKeyMap clone() => new MetaKeyMap()..mergeFromMessage(this);
  MetaKeyMap copyWith(void Function(MetaKeyMap) updates) => super.copyWith((message) => updates(message as MetaKeyMap));
  $pb.BuilderInfo get info_ => _i;
  static MetaKeyMap create() => new MetaKeyMap();
  MetaKeyMap createEmptyInstance() => create();
  static $pb.PbList<MetaKeyMap> createRepeated() => new $pb.PbList<MetaKeyMap>();
  static MetaKeyMap getDefault() => _defaultInstance ??= create()..freeze();
  static MetaKeyMap _defaultInstance;

  String get fieldName => $_getS(0, '');
  set fieldName(String v) { $_setString(0, v); }
  bool hasFieldName() => $_has(0);
  void clearFieldName() => clearField(1);

  String get relFieldName => $_getS(1, '');
  set relFieldName(String v) { $_setString(1, v); }
  bool hasRelFieldName() => $_has(1);
  void clearRelFieldName() => clearField(2);

  String get fullName => $_getS(2, '');
  set fullName(String v) { $_setString(2, v); }
  bool hasFullName() => $_has(2);
  void clearFullName() => clearField(3);
}

class MetaRelation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaRelation', package: const $pb.PackageName('model'))
    ..aOS(1, 'title')
    ..aOS(2, 'type')
    ..aOS(3, 'relEntityName')
    ..aOS(4, 'fkName')
    ..pc<MetaKeyMap>(5, 'keyMaps', $pb.PbFieldType.PM,MetaKeyMap.create)
    ..aOB(6, 'autoRelation')
    ..aOS(7, 'combinedName')
    ..hasRequiredFields = false
  ;

  MetaRelation() : super();
  MetaRelation.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaRelation.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaRelation clone() => new MetaRelation()..mergeFromMessage(this);
  MetaRelation copyWith(void Function(MetaRelation) updates) => super.copyWith((message) => updates(message as MetaRelation));
  $pb.BuilderInfo get info_ => _i;
  static MetaRelation create() => new MetaRelation();
  MetaRelation createEmptyInstance() => create();
  static $pb.PbList<MetaRelation> createRepeated() => new $pb.PbList<MetaRelation>();
  static MetaRelation getDefault() => _defaultInstance ??= create()..freeze();
  static MetaRelation _defaultInstance;

  String get title => $_getS(0, '');
  set title(String v) { $_setString(0, v); }
  bool hasTitle() => $_has(0);
  void clearTitle() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) { $_setString(1, v); }
  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  String get relEntityName => $_getS(2, '');
  set relEntityName(String v) { $_setString(2, v); }
  bool hasRelEntityName() => $_has(2);
  void clearRelEntityName() => clearField(3);

  String get fkName => $_getS(3, '');
  set fkName(String v) { $_setString(3, v); }
  bool hasFkName() => $_has(3);
  void clearFkName() => clearField(4);

  List<MetaKeyMap> get keyMaps => $_getList(4);

  bool get autoRelation => $_get(5, false);
  set autoRelation(bool v) { $_setBool(5, v); }
  bool hasAutoRelation() => $_has(5);
  void clearAutoRelation() => clearField(6);

  String get combinedName => $_getS(6, '');
  set combinedName(String v) { $_setString(6, v); }
  bool hasCombinedName() => $_has(6);
  void clearCombinedName() => clearField(7);
}

class MetaEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaEntity', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityName')
    ..aOS(2, 'packageName')
    ..aOS(3, 'dependentOn')
    ..pc<MetaField>(4, 'fields', $pb.PbFieldType.PM,MetaField.create)
    ..pc<MetaRelation>(5, 'relations', $pb.PbFieldType.PM,MetaRelation.create)
    ..pPS(6, 'viewEntities')
    ..pPS(7, 'pks')
    ..pPS(8, 'nopks')
    ..aOS(9, 'version')
    ..aOS(10, 'description')
    ..aOS(11, 'title')
    ..aOS(12, 'defaultResourceName')
    ..hasRequiredFields = false
  ;

  MetaEntity() : super();
  MetaEntity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaEntity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaEntity clone() => new MetaEntity()..mergeFromMessage(this);
  MetaEntity copyWith(void Function(MetaEntity) updates) => super.copyWith((message) => updates(message as MetaEntity));
  $pb.BuilderInfo get info_ => _i;
  static MetaEntity create() => new MetaEntity();
  MetaEntity createEmptyInstance() => create();
  static $pb.PbList<MetaEntity> createRepeated() => new $pb.PbList<MetaEntity>();
  static MetaEntity getDefault() => _defaultInstance ??= create()..freeze();
  static MetaEntity _defaultInstance;

  String get entityName => $_getS(0, '');
  set entityName(String v) { $_setString(0, v); }
  bool hasEntityName() => $_has(0);
  void clearEntityName() => clearField(1);

  String get packageName => $_getS(1, '');
  set packageName(String v) { $_setString(1, v); }
  bool hasPackageName() => $_has(1);
  void clearPackageName() => clearField(2);

  String get dependentOn => $_getS(2, '');
  set dependentOn(String v) { $_setString(2, v); }
  bool hasDependentOn() => $_has(2);
  void clearDependentOn() => clearField(3);

  List<MetaField> get fields => $_getList(3);

  List<MetaRelation> get relations => $_getList(4);

  List<String> get viewEntities => $_getList(5);

  List<String> get pks => $_getList(6);

  List<String> get nopks => $_getList(7);

  String get version => $_getS(8, '');
  set version(String v) { $_setString(8, v); }
  bool hasVersion() => $_has(8);
  void clearVersion() => clearField(9);

  String get description => $_getS(9, '');
  set description(String v) { $_setString(9, v); }
  bool hasDescription() => $_has(9);
  void clearDescription() => clearField(10);

  String get title => $_getS(10, '');
  set title(String v) { $_setString(10, v); }
  bool hasTitle() => $_has(10);
  void clearTitle() => clearField(11);

  String get defaultResourceName => $_getS(11, '');
  set defaultResourceName(String v) { $_setString(11, v); }
  bool hasDefaultResourceName() => $_has(11);
  void clearDefaultResourceName() => clearField(12);
}

class MetaMemberEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaMemberEntity', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityAlias')
    ..aOS(2, 'entityName')
    ..hasRequiredFields = false
  ;

  MetaMemberEntity() : super();
  MetaMemberEntity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaMemberEntity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaMemberEntity clone() => new MetaMemberEntity()..mergeFromMessage(this);
  MetaMemberEntity copyWith(void Function(MetaMemberEntity) updates) => super.copyWith((message) => updates(message as MetaMemberEntity));
  $pb.BuilderInfo get info_ => _i;
  static MetaMemberEntity create() => new MetaMemberEntity();
  MetaMemberEntity createEmptyInstance() => create();
  static $pb.PbList<MetaMemberEntity> createRepeated() => new $pb.PbList<MetaMemberEntity>();
  static MetaMemberEntity getDefault() => _defaultInstance ??= create()..freeze();
  static MetaMemberEntity _defaultInstance;

  String get entityAlias => $_getS(0, '');
  set entityAlias(String v) { $_setString(0, v); }
  bool hasEntityAlias() => $_has(0);
  void clearEntityAlias() => clearField(1);

  String get entityName => $_getS(1, '');
  set entityName(String v) { $_setString(1, v); }
  bool hasEntityName() => $_has(1);
  void clearEntityName() => clearField(2);
}

class MetaAliasAll extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaAliasAll', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityAlias')
    ..aOS(2, 'prefix')
    ..pPS(3, 'fieldsToExclude')
    ..aOB(4, 'groupBy')
    ..aOS(5, 'function')
    ..aOS(6, 'fieldSet')
    ..hasRequiredFields = false
  ;

  MetaAliasAll() : super();
  MetaAliasAll.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaAliasAll.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaAliasAll clone() => new MetaAliasAll()..mergeFromMessage(this);
  MetaAliasAll copyWith(void Function(MetaAliasAll) updates) => super.copyWith((message) => updates(message as MetaAliasAll));
  $pb.BuilderInfo get info_ => _i;
  static MetaAliasAll create() => new MetaAliasAll();
  MetaAliasAll createEmptyInstance() => create();
  static $pb.PbList<MetaAliasAll> createRepeated() => new $pb.PbList<MetaAliasAll>();
  static MetaAliasAll getDefault() => _defaultInstance ??= create()..freeze();
  static MetaAliasAll _defaultInstance;

  String get entityAlias => $_getS(0, '');
  set entityAlias(String v) { $_setString(0, v); }
  bool hasEntityAlias() => $_has(0);
  void clearEntityAlias() => clearField(1);

  String get prefix => $_getS(1, '');
  set prefix(String v) { $_setString(1, v); }
  bool hasPrefix() => $_has(1);
  void clearPrefix() => clearField(2);

  List<String> get fieldsToExclude => $_getList(2);

  bool get groupBy => $_get(3, false);
  set groupBy(bool v) { $_setBool(3, v); }
  bool hasGroupBy() => $_has(3);
  void clearGroupBy() => clearField(4);

  String get function => $_getS(4, '');
  set function(String v) { $_setString(4, v); }
  bool hasFunction() => $_has(4);
  void clearFunction() => clearField(5);

  String get fieldSet => $_getS(5, '');
  set fieldSet(String v) { $_setString(5, v); }
  bool hasFieldSet() => $_has(5);
  void clearFieldSet() => clearField(6);
}

class MetaAlias extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaAlias', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityAlias')
    ..aOS(2, 'name')
    ..aOS(3, 'field_3')
    ..aOS(4, 'colAlias')
    ..aOB(5, 'pk')
    ..aOB(6, 'groupBy')
    ..aOS(7, 'function')
    ..aOS(8, 'fieldSet')
    ..aOB(9, 'isFromAliasAll')
    ..aOS(10, 'description')
    ..hasRequiredFields = false
  ;

  MetaAlias() : super();
  MetaAlias.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaAlias.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaAlias clone() => new MetaAlias()..mergeFromMessage(this);
  MetaAlias copyWith(void Function(MetaAlias) updates) => super.copyWith((message) => updates(message as MetaAlias));
  $pb.BuilderInfo get info_ => _i;
  static MetaAlias create() => new MetaAlias();
  MetaAlias createEmptyInstance() => create();
  static $pb.PbList<MetaAlias> createRepeated() => new $pb.PbList<MetaAlias>();
  static MetaAlias getDefault() => _defaultInstance ??= create()..freeze();
  static MetaAlias _defaultInstance;

  String get entityAlias => $_getS(0, '');
  set entityAlias(String v) { $_setString(0, v); }
  bool hasEntityAlias() => $_has(0);
  void clearEntityAlias() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  String get field_3 => $_getS(2, '');
  set field_3(String v) { $_setString(2, v); }
  bool hasField_3() => $_has(2);
  void clearField_3() => clearField(3);

  String get colAlias => $_getS(3, '');
  set colAlias(String v) { $_setString(3, v); }
  bool hasColAlias() => $_has(3);
  void clearColAlias() => clearField(4);

  bool get pk => $_get(4, false);
  set pk(bool v) { $_setBool(4, v); }
  bool hasPk() => $_has(4);
  void clearPk() => clearField(5);

  bool get groupBy => $_get(5, false);
  set groupBy(bool v) { $_setBool(5, v); }
  bool hasGroupBy() => $_has(5);
  void clearGroupBy() => clearField(6);

  String get function => $_getS(6, '');
  set function(String v) { $_setString(6, v); }
  bool hasFunction() => $_has(6);
  void clearFunction() => clearField(7);

  String get fieldSet => $_getS(7, '');
  set fieldSet(String v) { $_setString(7, v); }
  bool hasFieldSet() => $_has(7);
  void clearFieldSet() => clearField(8);

  bool get isFromAliasAll => $_get(8, false);
  set isFromAliasAll(bool v) { $_setBool(8, v); }
  bool hasIsFromAliasAll() => $_has(8);
  void clearIsFromAliasAll() => clearField(9);

  String get description => $_getS(9, '');
  set description(String v) { $_setString(9, v); }
  bool hasDescription() => $_has(9);
  void clearDescription() => clearField(10);
}

class MetaViewEntityCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaViewEntityCondition', package: const $pb.PackageName('model'))
    ..aOB(1, 'filterByDate')
    ..aOB(2, 'distinct')
    ..pPS(3, 'orderByList')
    ..hasRequiredFields = false
  ;

  MetaViewEntityCondition() : super();
  MetaViewEntityCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaViewEntityCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaViewEntityCondition clone() => new MetaViewEntityCondition()..mergeFromMessage(this);
  MetaViewEntityCondition copyWith(void Function(MetaViewEntityCondition) updates) => super.copyWith((message) => updates(message as MetaViewEntityCondition));
  $pb.BuilderInfo get info_ => _i;
  static MetaViewEntityCondition create() => new MetaViewEntityCondition();
  MetaViewEntityCondition createEmptyInstance() => create();
  static $pb.PbList<MetaViewEntityCondition> createRepeated() => new $pb.PbList<MetaViewEntityCondition>();
  static MetaViewEntityCondition getDefault() => _defaultInstance ??= create()..freeze();
  static MetaViewEntityCondition _defaultInstance;

  bool get filterByDate => $_get(0, false);
  set filterByDate(bool v) { $_setBool(0, v); }
  bool hasFilterByDate() => $_has(0);
  void clearFilterByDate() => clearField(1);

  bool get distinct => $_get(1, false);
  set distinct(bool v) { $_setBool(1, v); }
  bool hasDistinct() => $_has(1);
  void clearDistinct() => clearField(2);

  List<String> get orderByList => $_getList(2);
}

class MetaViewLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaViewLink', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityAlias')
    ..aOS(2, 'relEntityAlias')
    ..aOB(3, 'relOptional')
    ..pc<MetaKeyMap>(4, 'keyMaps', $pb.PbFieldType.PM,MetaKeyMap.create)
    ..a<MetaViewEntityCondition>(5, 'viewEntityCondition', $pb.PbFieldType.OM, MetaViewEntityCondition.getDefault, MetaViewEntityCondition.create)
    ..hasRequiredFields = false
  ;

  MetaViewLink() : super();
  MetaViewLink.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaViewLink.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaViewLink clone() => new MetaViewLink()..mergeFromMessage(this);
  MetaViewLink copyWith(void Function(MetaViewLink) updates) => super.copyWith((message) => updates(message as MetaViewLink));
  $pb.BuilderInfo get info_ => _i;
  static MetaViewLink create() => new MetaViewLink();
  MetaViewLink createEmptyInstance() => create();
  static $pb.PbList<MetaViewLink> createRepeated() => new $pb.PbList<MetaViewLink>();
  static MetaViewLink getDefault() => _defaultInstance ??= create()..freeze();
  static MetaViewLink _defaultInstance;

  String get entityAlias => $_getS(0, '');
  set entityAlias(String v) { $_setString(0, v); }
  bool hasEntityAlias() => $_has(0);
  void clearEntityAlias() => clearField(1);

  String get relEntityAlias => $_getS(1, '');
  set relEntityAlias(String v) { $_setString(1, v); }
  bool hasRelEntityAlias() => $_has(1);
  void clearRelEntityAlias() => clearField(2);

  bool get relOptional => $_get(2, false);
  set relOptional(bool v) { $_setBool(2, v); }
  bool hasRelOptional() => $_has(2);
  void clearRelOptional() => clearField(3);

  List<MetaKeyMap> get keyMaps => $_getList(3);

  MetaViewEntityCondition get viewEntityCondition => $_getN(4);
  set viewEntityCondition(MetaViewEntityCondition v) { setField(5, v); }
  bool hasViewEntityCondition() => $_has(4);
  void clearViewEntityCondition() => clearField(5);
}

class MetaViewEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaViewEntity', package: const $pb.PackageName('model'))
    ..aOS(1, 'entityName')
    ..aOS(2, 'packageName')
    ..m<String, MetaMemberEntity>(3, 'memberModelEntities', 'MetaViewEntity.MemberModelEntitiesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, MetaMemberEntity.create, null, null , const $pb.PackageName('model'))
    ..pc<MetaAliasAll>(4, 'aliasAlls', $pb.PbFieldType.PM,MetaAliasAll.create)
    ..pc<MetaAlias>(5, 'aliases', $pb.PbFieldType.PM,MetaAlias.create)
    ..pc<MetaViewLink>(6, 'viewLinks', $pb.PbFieldType.PM,MetaViewLink.create)
    ..pc<MetaField>(7, 'groupBys', $pb.PbFieldType.PM,MetaField.create)
    ..hasRequiredFields = false
  ;

  MetaViewEntity() : super();
  MetaViewEntity.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaViewEntity.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaViewEntity clone() => new MetaViewEntity()..mergeFromMessage(this);
  MetaViewEntity copyWith(void Function(MetaViewEntity) updates) => super.copyWith((message) => updates(message as MetaViewEntity));
  $pb.BuilderInfo get info_ => _i;
  static MetaViewEntity create() => new MetaViewEntity();
  MetaViewEntity createEmptyInstance() => create();
  static $pb.PbList<MetaViewEntity> createRepeated() => new $pb.PbList<MetaViewEntity>();
  static MetaViewEntity getDefault() => _defaultInstance ??= create()..freeze();
  static MetaViewEntity _defaultInstance;

  String get entityName => $_getS(0, '');
  set entityName(String v) { $_setString(0, v); }
  bool hasEntityName() => $_has(0);
  void clearEntityName() => clearField(1);

  String get packageName => $_getS(1, '');
  set packageName(String v) { $_setString(1, v); }
  bool hasPackageName() => $_has(1);
  void clearPackageName() => clearField(2);

  Map<String, MetaMemberEntity> get memberModelEntities => $_getMap(2);

  List<MetaAliasAll> get aliasAlls => $_getList(3);

  List<MetaAlias> get aliases => $_getList(4);

  List<MetaViewLink> get viewLinks => $_getList(5);

  List<MetaField> get groupBys => $_getList(6);
}

class MetaServiceIface extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaServiceIface', package: const $pb.PackageName('model'))
    ..aOS(1, 'service')
    ..aOB(2, 'optional')
    ..hasRequiredFields = false
  ;

  MetaServiceIface() : super();
  MetaServiceIface.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaServiceIface.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaServiceIface clone() => new MetaServiceIface()..mergeFromMessage(this);
  MetaServiceIface copyWith(void Function(MetaServiceIface) updates) => super.copyWith((message) => updates(message as MetaServiceIface));
  $pb.BuilderInfo get info_ => _i;
  static MetaServiceIface create() => new MetaServiceIface();
  MetaServiceIface createEmptyInstance() => create();
  static $pb.PbList<MetaServiceIface> createRepeated() => new $pb.PbList<MetaServiceIface>();
  static MetaServiceIface getDefault() => _defaultInstance ??= create()..freeze();
  static MetaServiceIface _defaultInstance;

  String get service => $_getS(0, '');
  set service(String v) { $_setString(0, v); }
  bool hasService() => $_has(0);
  void clearService() => clearField(1);

  bool get optional => $_get(1, false);
  set optional(bool v) { $_setBool(1, v); }
  bool hasOptional() => $_has(1);
  void clearOptional() => clearField(2);
}

class MetaPermission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaPermission', package: const $pb.PackageName('model'))
    ..a<int>(1, 'permissionType', $pb.PbFieldType.O3)
    ..aOS(2, 'serviceModel')
    ..aOS(3, 'nameOrRole')
    ..aOS(4, 'action')
    ..aOS(5, 'permissionServiceName')
    ..aOS(6, 'permissionResourceDesc')
    ..aOB(7, 'auth')
    ..aOS(8, 'clazz')
    ..hasRequiredFields = false
  ;

  MetaPermission() : super();
  MetaPermission.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaPermission.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaPermission clone() => new MetaPermission()..mergeFromMessage(this);
  MetaPermission copyWith(void Function(MetaPermission) updates) => super.copyWith((message) => updates(message as MetaPermission));
  $pb.BuilderInfo get info_ => _i;
  static MetaPermission create() => new MetaPermission();
  MetaPermission createEmptyInstance() => create();
  static $pb.PbList<MetaPermission> createRepeated() => new $pb.PbList<MetaPermission>();
  static MetaPermission getDefault() => _defaultInstance ??= create()..freeze();
  static MetaPermission _defaultInstance;

  int get permissionType => $_get(0, 0);
  set permissionType(int v) { $_setSignedInt32(0, v); }
  bool hasPermissionType() => $_has(0);
  void clearPermissionType() => clearField(1);

  String get serviceModel => $_getS(1, '');
  set serviceModel(String v) { $_setString(1, v); }
  bool hasServiceModel() => $_has(1);
  void clearServiceModel() => clearField(2);

  String get nameOrRole => $_getS(2, '');
  set nameOrRole(String v) { $_setString(2, v); }
  bool hasNameOrRole() => $_has(2);
  void clearNameOrRole() => clearField(3);

  String get action => $_getS(3, '');
  set action(String v) { $_setString(3, v); }
  bool hasAction() => $_has(3);
  void clearAction() => clearField(4);

  String get permissionServiceName => $_getS(4, '');
  set permissionServiceName(String v) { $_setString(4, v); }
  bool hasPermissionServiceName() => $_has(4);
  void clearPermissionServiceName() => clearField(5);

  String get permissionResourceDesc => $_getS(5, '');
  set permissionResourceDesc(String v) { $_setString(5, v); }
  bool hasPermissionResourceDesc() => $_has(5);
  void clearPermissionResourceDesc() => clearField(6);

  bool get auth => $_get(6, false);
  set auth(bool v) { $_setBool(6, v); }
  bool hasAuth() => $_has(6);
  void clearAuth() => clearField(7);

  String get clazz => $_getS(7, '');
  set clazz(String v) { $_setString(7, v); }
  bool hasClazz() => $_has(7);
  void clearClazz() => clearField(8);
}

class MetaPermGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaPermGroup', package: const $pb.PackageName('model'))
    ..aOS(1, 'joinType')
    ..pc<MetaPermission>(2, 'permissions', $pb.PbFieldType.PM,MetaPermission.create)
    ..hasRequiredFields = false
  ;

  MetaPermGroup() : super();
  MetaPermGroup.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaPermGroup.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaPermGroup clone() => new MetaPermGroup()..mergeFromMessage(this);
  MetaPermGroup copyWith(void Function(MetaPermGroup) updates) => super.copyWith((message) => updates(message as MetaPermGroup));
  $pb.BuilderInfo get info_ => _i;
  static MetaPermGroup create() => new MetaPermGroup();
  MetaPermGroup createEmptyInstance() => create();
  static $pb.PbList<MetaPermGroup> createRepeated() => new $pb.PbList<MetaPermGroup>();
  static MetaPermGroup getDefault() => _defaultInstance ??= create()..freeze();
  static MetaPermGroup _defaultInstance;

  String get joinType => $_getS(0, '');
  set joinType(String v) { $_setString(0, v); }
  bool hasJoinType() => $_has(0);
  void clearJoinType() => clearField(1);

  List<MetaPermission> get permissions => $_getList(1);
}

class MetaNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaNotification', package: const $pb.PackageName('model'))
    ..aOS(1, 'notificationGroupName')
    ..aOS(2, 'notificationEvent')
    ..aOS(3, 'notificationMode')
    ..hasRequiredFields = false
  ;

  MetaNotification() : super();
  MetaNotification.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaNotification.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaNotification clone() => new MetaNotification()..mergeFromMessage(this);
  MetaNotification copyWith(void Function(MetaNotification) updates) => super.copyWith((message) => updates(message as MetaNotification));
  $pb.BuilderInfo get info_ => _i;
  static MetaNotification create() => new MetaNotification();
  MetaNotification createEmptyInstance() => create();
  static $pb.PbList<MetaNotification> createRepeated() => new $pb.PbList<MetaNotification>();
  static MetaNotification getDefault() => _defaultInstance ??= create()..freeze();
  static MetaNotification _defaultInstance;

  String get notificationGroupName => $_getS(0, '');
  set notificationGroupName(String v) { $_setString(0, v); }
  bool hasNotificationGroupName() => $_has(0);
  void clearNotificationGroupName() => clearField(1);

  String get notificationEvent => $_getS(1, '');
  set notificationEvent(String v) { $_setString(1, v); }
  bool hasNotificationEvent() => $_has(1);
  void clearNotificationEvent() => clearField(2);

  String get notificationMode => $_getS(2, '');
  set notificationMode(String v) { $_setString(2, v); }
  bool hasNotificationMode() => $_has(2);
  void clearNotificationMode() => clearField(3);
}

class MetaParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaParam', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..aOS(2, 'description')
    ..aOS(3, 'type')
    ..aOS(4, 'mode')
    ..aOS(5, 'formLabel')
    ..aOS(6, 'entityName')
    ..aOS(7, 'fieldName')
    ..aOS(9, 'defaultValue')
    ..aOB(10, 'optional')
    ..aOB(11, 'overrideOptional')
    ..aOB(12, 'formDisplay')
    ..aOB(13, 'overrideFormDisplay')
    ..aOS(14, 'allowHtml')
    ..aOB(15, 'internal')
    ..hasRequiredFields = false
  ;

  MetaParam() : super();
  MetaParam.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaParam.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaParam clone() => new MetaParam()..mergeFromMessage(this);
  MetaParam copyWith(void Function(MetaParam) updates) => super.copyWith((message) => updates(message as MetaParam));
  $pb.BuilderInfo get info_ => _i;
  static MetaParam create() => new MetaParam();
  MetaParam createEmptyInstance() => create();
  static $pb.PbList<MetaParam> createRepeated() => new $pb.PbList<MetaParam>();
  static MetaParam getDefault() => _defaultInstance ??= create()..freeze();
  static MetaParam _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get description => $_getS(1, '');
  set description(String v) { $_setString(1, v); }
  bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);

  String get type => $_getS(2, '');
  set type(String v) { $_setString(2, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  String get mode => $_getS(3, '');
  set mode(String v) { $_setString(3, v); }
  bool hasMode() => $_has(3);
  void clearMode() => clearField(4);

  String get formLabel => $_getS(4, '');
  set formLabel(String v) { $_setString(4, v); }
  bool hasFormLabel() => $_has(4);
  void clearFormLabel() => clearField(5);

  String get entityName => $_getS(5, '');
  set entityName(String v) { $_setString(5, v); }
  bool hasEntityName() => $_has(5);
  void clearEntityName() => clearField(6);

  String get fieldName => $_getS(6, '');
  set fieldName(String v) { $_setString(6, v); }
  bool hasFieldName() => $_has(6);
  void clearFieldName() => clearField(7);

  String get defaultValue => $_getS(7, '');
  set defaultValue(String v) { $_setString(7, v); }
  bool hasDefaultValue() => $_has(7);
  void clearDefaultValue() => clearField(9);

  bool get optional => $_get(8, false);
  set optional(bool v) { $_setBool(8, v); }
  bool hasOptional() => $_has(8);
  void clearOptional() => clearField(10);

  bool get overrideOptional => $_get(9, false);
  set overrideOptional(bool v) { $_setBool(9, v); }
  bool hasOverrideOptional() => $_has(9);
  void clearOverrideOptional() => clearField(11);

  bool get formDisplay => $_get(10, false);
  set formDisplay(bool v) { $_setBool(10, v); }
  bool hasFormDisplay() => $_has(10);
  void clearFormDisplay() => clearField(12);

  bool get overrideFormDisplay => $_get(11, false);
  set overrideFormDisplay(bool v) { $_setBool(11, v); }
  bool hasOverrideFormDisplay() => $_has(11);
  void clearOverrideFormDisplay() => clearField(13);

  String get allowHtml => $_getS(12, '');
  set allowHtml(String v) { $_setString(12, v); }
  bool hasAllowHtml() => $_has(12);
  void clearAllowHtml() => clearField(14);

  bool get internal => $_get(13, false);
  set internal(bool v) { $_setBool(13, v); }
  bool hasInternal() => $_has(13);
  void clearInternal() => clearField(15);
}

class MetaService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaService', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..aOS(2, 'definitionLocation')
    ..aOS(3, 'description')
    ..aOS(4, 'engineName')
    ..aOS(5, 'nameSpace')
    ..aOS(6, 'location')
    ..aOS(7, 'invoke')
    ..aOS(8, 'defaultEntityName')
    ..aOB(9, 'auth')
    ..aOB(10, 'export')
    ..aOB(11, 'debug')
    ..aOB(12, 'validate')
    ..aOS(13, 'permissionServiceName')
    ..aOS(14, 'permissionMainAction')
    ..aOS(15, 'permissionResourceDesc')
    ..pc<MetaServiceIface>(16, 'implServices', $pb.PbFieldType.PM,MetaServiceIface.create)
    ..pPS(17, 'overrideParameters')
    ..pc<MetaPermGroup>(18, 'permissionGroups', $pb.PbFieldType.PM,MetaPermGroup.create)
    ..pc<MetaNotification>(19, 'notifications', $pb.PbFieldType.PM,MetaNotification.create)
    ..pc<MetaParam>(20, 'parameters', $pb.PbFieldType.PM,MetaParam.create)
    ..hasRequiredFields = false
  ;

  MetaService() : super();
  MetaService.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaService.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaService clone() => new MetaService()..mergeFromMessage(this);
  MetaService copyWith(void Function(MetaService) updates) => super.copyWith((message) => updates(message as MetaService));
  $pb.BuilderInfo get info_ => _i;
  static MetaService create() => new MetaService();
  MetaService createEmptyInstance() => create();
  static $pb.PbList<MetaService> createRepeated() => new $pb.PbList<MetaService>();
  static MetaService getDefault() => _defaultInstance ??= create()..freeze();
  static MetaService _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get definitionLocation => $_getS(1, '');
  set definitionLocation(String v) { $_setString(1, v); }
  bool hasDefinitionLocation() => $_has(1);
  void clearDefinitionLocation() => clearField(2);

  String get description => $_getS(2, '');
  set description(String v) { $_setString(2, v); }
  bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  String get engineName => $_getS(3, '');
  set engineName(String v) { $_setString(3, v); }
  bool hasEngineName() => $_has(3);
  void clearEngineName() => clearField(4);

  String get nameSpace => $_getS(4, '');
  set nameSpace(String v) { $_setString(4, v); }
  bool hasNameSpace() => $_has(4);
  void clearNameSpace() => clearField(5);

  String get location => $_getS(5, '');
  set location(String v) { $_setString(5, v); }
  bool hasLocation() => $_has(5);
  void clearLocation() => clearField(6);

  String get invoke => $_getS(6, '');
  set invoke(String v) { $_setString(6, v); }
  bool hasInvoke() => $_has(6);
  void clearInvoke() => clearField(7);

  String get defaultEntityName => $_getS(7, '');
  set defaultEntityName(String v) { $_setString(7, v); }
  bool hasDefaultEntityName() => $_has(7);
  void clearDefaultEntityName() => clearField(8);

  bool get auth => $_get(8, false);
  set auth(bool v) { $_setBool(8, v); }
  bool hasAuth() => $_has(8);
  void clearAuth() => clearField(9);

  bool get export => $_get(9, false);
  set export(bool v) { $_setBool(9, v); }
  bool hasExport() => $_has(9);
  void clearExport() => clearField(10);

  bool get debug => $_get(10, false);
  set debug(bool v) { $_setBool(10, v); }
  bool hasDebug() => $_has(10);
  void clearDebug() => clearField(11);

  bool get validate => $_get(11, false);
  set validate(bool v) { $_setBool(11, v); }
  bool hasValidate() => $_has(11);
  void clearValidate() => clearField(12);

  String get permissionServiceName => $_getS(12, '');
  set permissionServiceName(String v) { $_setString(12, v); }
  bool hasPermissionServiceName() => $_has(12);
  void clearPermissionServiceName() => clearField(13);

  String get permissionMainAction => $_getS(13, '');
  set permissionMainAction(String v) { $_setString(13, v); }
  bool hasPermissionMainAction() => $_has(13);
  void clearPermissionMainAction() => clearField(14);

  String get permissionResourceDesc => $_getS(14, '');
  set permissionResourceDesc(String v) { $_setString(14, v); }
  bool hasPermissionResourceDesc() => $_has(14);
  void clearPermissionResourceDesc() => clearField(15);

  List<MetaServiceIface> get implServices => $_getList(15);

  List<String> get overrideParameters => $_getList(16);

  List<MetaPermGroup> get permissionGroups => $_getList(17);

  List<MetaNotification> get notifications => $_getList(18);

  List<MetaParam> get parameters => $_getList(19);
}

class ServiceMetrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ServiceMetrics', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..a<double>(2, 'serviceRate', $pb.PbFieldType.OD)
    ..a<double>(3, 'threshold', $pb.PbFieldType.OD)
    ..aInt64(4, 'totalEvents')
    ..hasRequiredFields = false
  ;

  ServiceMetrics() : super();
  ServiceMetrics.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ServiceMetrics.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ServiceMetrics clone() => new ServiceMetrics()..mergeFromMessage(this);
  ServiceMetrics copyWith(void Function(ServiceMetrics) updates) => super.copyWith((message) => updates(message as ServiceMetrics));
  $pb.BuilderInfo get info_ => _i;
  static ServiceMetrics create() => new ServiceMetrics();
  ServiceMetrics createEmptyInstance() => create();
  static $pb.PbList<ServiceMetrics> createRepeated() => new $pb.PbList<ServiceMetrics>();
  static ServiceMetrics getDefault() => _defaultInstance ??= create()..freeze();
  static ServiceMetrics _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  double get serviceRate => $_getN(1);
  set serviceRate(double v) { $_setDouble(1, v); }
  bool hasServiceRate() => $_has(1);
  void clearServiceRate() => clearField(2);

  double get threshold => $_getN(2);
  set threshold(double v) { $_setDouble(2, v); }
  bool hasThreshold() => $_has(2);
  void clearThreshold() => clearField(3);

  Int64 get totalEvents => $_getI64(3);
  set totalEvents(Int64 v) { $_setInt64(3, v); }
  bool hasTotalEvents() => $_has(3);
  void clearTotalEvents() => clearField(4);
}

