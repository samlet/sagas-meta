///
//  Generated code. Do not modify.
//  source: resources.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class RsResource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsResource', package: const $pb.PackageName('model'))
    ..m<String, RsProperty>(1, 'properties', 'RsResource.PropertiesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, RsProperty.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  RsResource() : super();
  RsResource.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsResource.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsResource clone() => new RsResource()..mergeFromMessage(this);
  RsResource copyWith(void Function(RsResource) updates) => super.copyWith((message) => updates(message as RsResource));
  $pb.BuilderInfo get info_ => _i;
  static RsResource create() => new RsResource();
  RsResource createEmptyInstance() => create();
  static $pb.PbList<RsResource> createRepeated() => new $pb.PbList<RsResource>();
  static RsResource getDefault() => _defaultInstance ??= create()..freeze();
  static RsResource _defaultInstance;

  Map<String, RsProperty> get properties => $_getMap(0);
}

class RsProperty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsProperty', package: const $pb.PackageName('model'))
    ..aOS(1, 'key')
    ..m<String, String>(2, 'values', 'RsProperty.ValuesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('model'))
    ..aOS(3, 'location')
    ..hasRequiredFields = false
  ;

  RsProperty() : super();
  RsProperty.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsProperty.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsProperty clone() => new RsProperty()..mergeFromMessage(this);
  RsProperty copyWith(void Function(RsProperty) updates) => super.copyWith((message) => updates(message as RsProperty));
  $pb.BuilderInfo get info_ => _i;
  static RsProperty create() => new RsProperty();
  RsProperty createEmptyInstance() => create();
  static $pb.PbList<RsProperty> createRepeated() => new $pb.PbList<RsProperty>();
  static RsProperty getDefault() => _defaultInstance ??= create()..freeze();
  static RsProperty _defaultInstance;

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  Map<String, String> get values => $_getMap(1);

  String get location => $_getS(2, '');
  set location(String v) { $_setString(2, v); }
  bool hasLocation() => $_has(2);
  void clearLocation() => clearField(3);
}

class RsStrings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsStrings', package: const $pb.PackageName('model'))
    ..pPS(1, 'value')
    ..hasRequiredFields = false
  ;

  RsStrings() : super();
  RsStrings.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsStrings.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsStrings clone() => new RsStrings()..mergeFromMessage(this);
  RsStrings copyWith(void Function(RsStrings) updates) => super.copyWith((message) => updates(message as RsStrings));
  $pb.BuilderInfo get info_ => _i;
  static RsStrings create() => new RsStrings();
  RsStrings createEmptyInstance() => create();
  static $pb.PbList<RsStrings> createRepeated() => new $pb.PbList<RsStrings>();
  static RsStrings getDefault() => _defaultInstance ??= create()..freeze();
  static RsStrings _defaultInstance;

  List<String> get value => $_getList(0);
}

class RsIndex extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsIndex', package: const $pb.PackageName('model'))
    ..m<String, RsStrings>(1, 'indexes', 'RsIndex.IndexesEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, RsStrings.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  RsIndex() : super();
  RsIndex.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsIndex.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsIndex clone() => new RsIndex()..mergeFromMessage(this);
  RsIndex copyWith(void Function(RsIndex) updates) => super.copyWith((message) => updates(message as RsIndex));
  $pb.BuilderInfo get info_ => _i;
  static RsIndex create() => new RsIndex();
  RsIndex createEmptyInstance() => create();
  static $pb.PbList<RsIndex> createRepeated() => new $pb.PbList<RsIndex>();
  static RsIndex getDefault() => _defaultInstance ??= create()..freeze();
  static RsIndex _defaultInstance;

  Map<String, RsStrings> get indexes => $_getMap(0);
}

class RsLookups extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsLookups', package: const $pb.PackageName('model'))
    ..m<String, RsIndex>(1, 'indexTable', 'RsLookups.IndexTableEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, RsIndex.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  RsLookups() : super();
  RsLookups.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsLookups.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsLookups clone() => new RsLookups()..mergeFromMessage(this);
  RsLookups copyWith(void Function(RsLookups) updates) => super.copyWith((message) => updates(message as RsLookups));
  $pb.BuilderInfo get info_ => _i;
  static RsLookups create() => new RsLookups();
  RsLookups createEmptyInstance() => create();
  static $pb.PbList<RsLookups> createRepeated() => new $pb.PbList<RsLookups>();
  static RsLookups getDefault() => _defaultInstance ??= create()..freeze();
  static RsLookups _defaultInstance;

  Map<String, RsIndex> get indexTable => $_getMap(0);
}

class RsEntityReference extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsEntityReference', package: const $pb.PackageName('model'))
    ..pPS(1, 'entities')
    ..pPS(2, 'views')
    ..hasRequiredFields = false
  ;

  RsEntityReference() : super();
  RsEntityReference.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsEntityReference.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsEntityReference clone() => new RsEntityReference()..mergeFromMessage(this);
  RsEntityReference copyWith(void Function(RsEntityReference) updates) => super.copyWith((message) => updates(message as RsEntityReference));
  $pb.BuilderInfo get info_ => _i;
  static RsEntityReference create() => new RsEntityReference();
  RsEntityReference createEmptyInstance() => create();
  static $pb.PbList<RsEntityReference> createRepeated() => new $pb.PbList<RsEntityReference>();
  static RsEntityReference getDefault() => _defaultInstance ??= create()..freeze();
  static RsEntityReference _defaultInstance;

  List<String> get entities => $_getList(0);

  List<String> get views => $_getList(1);
}

class RsEntities extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsEntities', package: const $pb.PackageName('model'))
    ..m<String, RsEntityReference>(1, 'fieldRefs', 'RsEntities.FieldRefsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, RsEntityReference.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  RsEntities() : super();
  RsEntities.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsEntities.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsEntities clone() => new RsEntities()..mergeFromMessage(this);
  RsEntities copyWith(void Function(RsEntities) updates) => super.copyWith((message) => updates(message as RsEntities));
  $pb.BuilderInfo get info_ => _i;
  static RsEntities create() => new RsEntities();
  RsEntities createEmptyInstance() => create();
  static $pb.PbList<RsEntities> createRepeated() => new $pb.PbList<RsEntities>();
  static RsEntities getDefault() => _defaultInstance ??= create()..freeze();
  static RsEntities _defaultInstance;

  Map<String, RsEntityReference> get fieldRefs => $_getMap(0);
}

class RsLang extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsLang', package: const $pb.PackageName('model'))
    ..pPS(1, 'entries')
    ..a<List<int>>(2, 'store', $pb.PbFieldType.OY)
    ..pPS(3, 'verbs')
    ..pPS(4, 'verbLemmas')
    ..hasRequiredFields = false
  ;

  RsLang() : super();
  RsLang.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsLang.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsLang clone() => new RsLang()..mergeFromMessage(this);
  RsLang copyWith(void Function(RsLang) updates) => super.copyWith((message) => updates(message as RsLang));
  $pb.BuilderInfo get info_ => _i;
  static RsLang create() => new RsLang();
  RsLang createEmptyInstance() => create();
  static $pb.PbList<RsLang> createRepeated() => new $pb.PbList<RsLang>();
  static RsLang getDefault() => _defaultInstance ??= create()..freeze();
  static RsLang _defaultInstance;

  List<String> get entries => $_getList(0);

  List<int> get store => $_getN(1);
  set store(List<int> v) { $_setBytes(1, v); }
  bool hasStore() => $_has(1);
  void clearStore() => clearField(2);

  List<String> get verbs => $_getList(2);

  List<String> get verbLemmas => $_getList(3);
}

class RsLangs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RsLangs', package: const $pb.PackageName('model'))
    ..pc<RsLang>(1, 'langs', $pb.PbFieldType.PM,RsLang.create)
    ..hasRequiredFields = false
  ;

  RsLangs() : super();
  RsLangs.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RsLangs.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RsLangs clone() => new RsLangs()..mergeFromMessage(this);
  RsLangs copyWith(void Function(RsLangs) updates) => super.copyWith((message) => updates(message as RsLangs));
  $pb.BuilderInfo get info_ => _i;
  static RsLangs create() => new RsLangs();
  RsLangs createEmptyInstance() => create();
  static $pb.PbList<RsLangs> createRepeated() => new $pb.PbList<RsLangs>();
  static RsLangs getDefault() => _defaultInstance ??= create()..freeze();
  static RsLangs _defaultInstance;

  List<RsLang> get langs => $_getList(0);
}

