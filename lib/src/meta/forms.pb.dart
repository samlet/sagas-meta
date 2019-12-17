///
//  Generated code. Do not modify.
//  source: forms.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'forms.pbenum.dart';

export 'forms.pbenum.dart';

class MetaAltTarget extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaAltTarget', package: const $pb.PackageName('model'))
    ..aOS(1, 'useWhen')
    ..aOS(2, 'targetExdr')
    ..hasRequiredFields = false
  ;

  MetaAltTarget() : super();
  MetaAltTarget.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaAltTarget.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaAltTarget clone() => new MetaAltTarget()..mergeFromMessage(this);
  MetaAltTarget copyWith(void Function(MetaAltTarget) updates) => super.copyWith((message) => updates(message as MetaAltTarget));
  $pb.BuilderInfo get info_ => _i;
  static MetaAltTarget create() => new MetaAltTarget();
  MetaAltTarget createEmptyInstance() => create();
  static $pb.PbList<MetaAltTarget> createRepeated() => new $pb.PbList<MetaAltTarget>();
  static MetaAltTarget getDefault() => _defaultInstance ??= create()..freeze();
  static MetaAltTarget _defaultInstance;

  String get useWhen => $_getS(0, '');
  set useWhen(String v) { $_setString(0, v); }
  bool hasUseWhen() => $_has(0);
  void clearUseWhen() => clearField(1);

  String get targetExdr => $_getS(1, '');
  set targetExdr(String v) { $_setString(1, v); }
  bool hasTargetExdr() => $_has(1);
  void clearTargetExdr() => clearField(2);
}

class MetaTextField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaTextField', package: const $pb.PackageName('model'))
    ..aOS(1, 'defaultValue')
    ..aOB(2, 'disabled')
    ..aOS(3, 'mask')
    ..a<int>(4, 'maxLength', $pb.PbFieldType.O3)
    ..aOS(5, 'placeHolder')
    ..aOB(6, 'readonly')
    ..a<int>(7, 'size', $pb.PbFieldType.O3)
    ..aOB(8, 'clientAutocompleteField')
    ..hasRequiredFields = false
  ;

  MetaTextField() : super();
  MetaTextField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaTextField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaTextField clone() => new MetaTextField()..mergeFromMessage(this);
  MetaTextField copyWith(void Function(MetaTextField) updates) => super.copyWith((message) => updates(message as MetaTextField));
  $pb.BuilderInfo get info_ => _i;
  static MetaTextField create() => new MetaTextField();
  MetaTextField createEmptyInstance() => create();
  static $pb.PbList<MetaTextField> createRepeated() => new $pb.PbList<MetaTextField>();
  static MetaTextField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaTextField _defaultInstance;

  String get defaultValue => $_getS(0, '');
  set defaultValue(String v) { $_setString(0, v); }
  bool hasDefaultValue() => $_has(0);
  void clearDefaultValue() => clearField(1);

  bool get disabled => $_get(1, false);
  set disabled(bool v) { $_setBool(1, v); }
  bool hasDisabled() => $_has(1);
  void clearDisabled() => clearField(2);

  String get mask => $_getS(2, '');
  set mask(String v) { $_setString(2, v); }
  bool hasMask() => $_has(2);
  void clearMask() => clearField(3);

  int get maxLength => $_get(3, 0);
  set maxLength(int v) { $_setSignedInt32(3, v); }
  bool hasMaxLength() => $_has(3);
  void clearMaxLength() => clearField(4);

  String get placeHolder => $_getS(4, '');
  set placeHolder(String v) { $_setString(4, v); }
  bool hasPlaceHolder() => $_has(4);
  void clearPlaceHolder() => clearField(5);

  bool get readonly => $_get(5, false);
  set readonly(bool v) { $_setBool(5, v); }
  bool hasReadonly() => $_has(5);
  void clearReadonly() => clearField(6);

  int get size => $_get(6, 0);
  set size(int v) { $_setSignedInt32(6, v); }
  bool hasSize() => $_has(6);
  void clearSize() => clearField(7);

  bool get clientAutocompleteField => $_get(7, false);
  set clientAutocompleteField(bool v) { $_setBool(7, v); }
  bool hasClientAutocompleteField() => $_has(7);
  void clearClientAutocompleteField() => clearField(8);
}

class MetaTextAreaField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaTextAreaField', package: const $pb.PackageName('model'))
    ..a<int>(1, 'cols', $pb.PbFieldType.O3)
    ..a<int>(2, 'rows', $pb.PbFieldType.O3)
    ..aOS(3, 'defaultValue')
    ..aOB(4, 'readonly')
    ..a<int>(5, 'maxLength', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MetaTextAreaField() : super();
  MetaTextAreaField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaTextAreaField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaTextAreaField clone() => new MetaTextAreaField()..mergeFromMessage(this);
  MetaTextAreaField copyWith(void Function(MetaTextAreaField) updates) => super.copyWith((message) => updates(message as MetaTextAreaField));
  $pb.BuilderInfo get info_ => _i;
  static MetaTextAreaField create() => new MetaTextAreaField();
  MetaTextAreaField createEmptyInstance() => create();
  static $pb.PbList<MetaTextAreaField> createRepeated() => new $pb.PbList<MetaTextAreaField>();
  static MetaTextAreaField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaTextAreaField _defaultInstance;

  int get cols => $_get(0, 0);
  set cols(int v) { $_setSignedInt32(0, v); }
  bool hasCols() => $_has(0);
  void clearCols() => clearField(1);

  int get rows => $_get(1, 0);
  set rows(int v) { $_setSignedInt32(1, v); }
  bool hasRows() => $_has(1);
  void clearRows() => clearField(2);

  String get defaultValue => $_getS(2, '');
  set defaultValue(String v) { $_setString(2, v); }
  bool hasDefaultValue() => $_has(2);
  void clearDefaultValue() => clearField(3);

  bool get readonly => $_get(3, false);
  set readonly(bool v) { $_setBool(3, v); }
  bool hasReadonly() => $_has(3);
  void clearReadonly() => clearField(4);

  int get maxLength => $_get(4, 0);
  set maxLength(int v) { $_setSignedInt32(4, v); }
  bool hasMaxLength() => $_has(4);
  void clearMaxLength() => clearField(5);
}

class MetaDateTimeField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaDateTimeField', package: const $pb.PackageName('model'))
    ..aOS(1, 'clock')
    ..aOS(2, 'defaultValue')
    ..aOS(3, 'inputMethod')
    ..aOS(4, 'mask')
    ..aOS(5, 'step')
    ..aOS(6, 'type')
    ..hasRequiredFields = false
  ;

  MetaDateTimeField() : super();
  MetaDateTimeField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaDateTimeField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaDateTimeField clone() => new MetaDateTimeField()..mergeFromMessage(this);
  MetaDateTimeField copyWith(void Function(MetaDateTimeField) updates) => super.copyWith((message) => updates(message as MetaDateTimeField));
  $pb.BuilderInfo get info_ => _i;
  static MetaDateTimeField create() => new MetaDateTimeField();
  MetaDateTimeField createEmptyInstance() => create();
  static $pb.PbList<MetaDateTimeField> createRepeated() => new $pb.PbList<MetaDateTimeField>();
  static MetaDateTimeField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaDateTimeField _defaultInstance;

  String get clock => $_getS(0, '');
  set clock(String v) { $_setString(0, v); }
  bool hasClock() => $_has(0);
  void clearClock() => clearField(1);

  String get defaultValue => $_getS(1, '');
  set defaultValue(String v) { $_setString(1, v); }
  bool hasDefaultValue() => $_has(1);
  void clearDefaultValue() => clearField(2);

  String get inputMethod => $_getS(2, '');
  set inputMethod(String v) { $_setString(2, v); }
  bool hasInputMethod() => $_has(2);
  void clearInputMethod() => clearField(3);

  String get mask => $_getS(3, '');
  set mask(String v) { $_setString(3, v); }
  bool hasMask() => $_has(3);
  void clearMask() => clearField(4);

  String get step => $_getS(4, '');
  set step(String v) { $_setString(4, v); }
  bool hasStep() => $_has(4);
  void clearStep() => clearField(5);

  String get type => $_getS(5, '');
  set type(String v) { $_setString(5, v); }
  bool hasType() => $_has(5);
  void clearType() => clearField(6);
}

class MetaDisplayField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaDisplayField', package: const $pb.PackageName('model'))
    ..aOB(1, 'alsoHidden')
    ..aOS(2, 'currency')
    ..aOS(3, 'date')
    ..aOS(4, 'defaultValue')
    ..aOS(5, 'description')
    ..aOS(6, 'imageLocation')
    ..aOS(7, 'type')
    ..a<int>(8, 'size', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MetaDisplayField() : super();
  MetaDisplayField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaDisplayField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaDisplayField clone() => new MetaDisplayField()..mergeFromMessage(this);
  MetaDisplayField copyWith(void Function(MetaDisplayField) updates) => super.copyWith((message) => updates(message as MetaDisplayField));
  $pb.BuilderInfo get info_ => _i;
  static MetaDisplayField create() => new MetaDisplayField();
  MetaDisplayField createEmptyInstance() => create();
  static $pb.PbList<MetaDisplayField> createRepeated() => new $pb.PbList<MetaDisplayField>();
  static MetaDisplayField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaDisplayField _defaultInstance;

  bool get alsoHidden => $_get(0, false);
  set alsoHidden(bool v) { $_setBool(0, v); }
  bool hasAlsoHidden() => $_has(0);
  void clearAlsoHidden() => clearField(1);

  String get currency => $_getS(1, '');
  set currency(String v) { $_setString(1, v); }
  bool hasCurrency() => $_has(1);
  void clearCurrency() => clearField(2);

  String get date => $_getS(2, '');
  set date(String v) { $_setString(2, v); }
  bool hasDate() => $_has(2);
  void clearDate() => clearField(3);

  String get defaultValue => $_getS(3, '');
  set defaultValue(String v) { $_setString(3, v); }
  bool hasDefaultValue() => $_has(3);
  void clearDefaultValue() => clearField(4);

  String get description => $_getS(4, '');
  set description(String v) { $_setString(4, v); }
  bool hasDescription() => $_has(4);
  void clearDescription() => clearField(5);

  String get imageLocation => $_getS(5, '');
  set imageLocation(String v) { $_setString(5, v); }
  bool hasImageLocation() => $_has(5);
  void clearImageLocation() => clearField(6);

  String get type => $_getS(6, '');
  set type(String v) { $_setString(6, v); }
  bool hasType() => $_has(6);
  void clearType() => clearField(7);

  int get size => $_get(7, 0);
  set size(int v) { $_setSignedInt32(7, v); }
  bool hasSize() => $_has(7);
  void clearSize() => clearField(8);
}

class MetaSingleOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaSingleOption', package: const $pb.PackageName('model'))
    ..aOS(1, 'key')
    ..aOS(2, 'description')
    ..hasRequiredFields = false
  ;

  MetaSingleOption() : super();
  MetaSingleOption.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaSingleOption.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaSingleOption clone() => new MetaSingleOption()..mergeFromMessage(this);
  MetaSingleOption copyWith(void Function(MetaSingleOption) updates) => super.copyWith((message) => updates(message as MetaSingleOption));
  $pb.BuilderInfo get info_ => _i;
  static MetaSingleOption create() => new MetaSingleOption();
  MetaSingleOption createEmptyInstance() => create();
  static $pb.PbList<MetaSingleOption> createRepeated() => new $pb.PbList<MetaSingleOption>();
  static MetaSingleOption getDefault() => _defaultInstance ??= create()..freeze();
  static MetaSingleOption _defaultInstance;

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  String get description => $_getS(1, '');
  set description(String v) { $_setString(1, v); }
  bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);
}

class MetaEntityOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaEntityOptions', package: const $pb.PackageName('model'))
    ..aOB(1, 'cache')
    ..aOS(2, 'description')
    ..aOS(3, 'entityName')
    ..aOS(4, 'filterByDate')
    ..aOS(5, 'keyFieldName')
    ..pPS(6, 'orderByList')
    ..pc<MetaSingleOption>(7, 'optionValues', $pb.PbFieldType.PM,MetaSingleOption.create)
    ..hasRequiredFields = false
  ;

  MetaEntityOptions() : super();
  MetaEntityOptions.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaEntityOptions.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaEntityOptions clone() => new MetaEntityOptions()..mergeFromMessage(this);
  MetaEntityOptions copyWith(void Function(MetaEntityOptions) updates) => super.copyWith((message) => updates(message as MetaEntityOptions));
  $pb.BuilderInfo get info_ => _i;
  static MetaEntityOptions create() => new MetaEntityOptions();
  MetaEntityOptions createEmptyInstance() => create();
  static $pb.PbList<MetaEntityOptions> createRepeated() => new $pb.PbList<MetaEntityOptions>();
  static MetaEntityOptions getDefault() => _defaultInstance ??= create()..freeze();
  static MetaEntityOptions _defaultInstance;

  bool get cache => $_get(0, false);
  set cache(bool v) { $_setBool(0, v); }
  bool hasCache() => $_has(0);
  void clearCache() => clearField(1);

  String get description => $_getS(1, '');
  set description(String v) { $_setString(1, v); }
  bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);

  String get entityName => $_getS(2, '');
  set entityName(String v) { $_setString(2, v); }
  bool hasEntityName() => $_has(2);
  void clearEntityName() => clearField(3);

  String get filterByDate => $_getS(3, '');
  set filterByDate(String v) { $_setString(3, v); }
  bool hasFilterByDate() => $_has(3);
  void clearFilterByDate() => clearField(4);

  String get keyFieldName => $_getS(4, '');
  set keyFieldName(String v) { $_setString(4, v); }
  bool hasKeyFieldName() => $_has(4);
  void clearKeyFieldName() => clearField(5);

  List<String> get orderByList => $_getList(5);

  List<MetaSingleOption> get optionValues => $_getList(6);
}

class MetaListOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaListOptions', package: const $pb.PackageName('model'))
    ..aOS(1, 'description')
    ..aOS(2, 'listEntryName')
    ..pc<MetaSingleOption>(3, 'optionValues', $pb.PbFieldType.PM,MetaSingleOption.create)
    ..hasRequiredFields = false
  ;

  MetaListOptions() : super();
  MetaListOptions.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaListOptions.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaListOptions clone() => new MetaListOptions()..mergeFromMessage(this);
  MetaListOptions copyWith(void Function(MetaListOptions) updates) => super.copyWith((message) => updates(message as MetaListOptions));
  $pb.BuilderInfo get info_ => _i;
  static MetaListOptions create() => new MetaListOptions();
  MetaListOptions createEmptyInstance() => create();
  static $pb.PbList<MetaListOptions> createRepeated() => new $pb.PbList<MetaListOptions>();
  static MetaListOptions getDefault() => _defaultInstance ??= create()..freeze();
  static MetaListOptions _defaultInstance;

  String get description => $_getS(0, '');
  set description(String v) { $_setString(0, v); }
  bool hasDescription() => $_has(0);
  void clearDescription() => clearField(1);

  String get listEntryName => $_getS(1, '');
  set listEntryName(String v) { $_setString(1, v); }
  bool hasListEntryName() => $_has(1);
  void clearListEntryName() => clearField(2);

  List<MetaSingleOption> get optionValues => $_getList(2);
}

enum MetaOptionSource_Source {
  singleOption, 
  entityOptions, 
  listOptions, 
  notSet
}

class MetaOptionSource extends $pb.GeneratedMessage {
  static const Map<int, MetaOptionSource_Source> _MetaOptionSource_SourceByTag = {
    1 : MetaOptionSource_Source.singleOption,
    2 : MetaOptionSource_Source.entityOptions,
    3 : MetaOptionSource_Source.listOptions,
    0 : MetaOptionSource_Source.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaOptionSource', package: const $pb.PackageName('model'))
    ..a<MetaSingleOption>(1, 'singleOption', $pb.PbFieldType.OM, MetaSingleOption.getDefault, MetaSingleOption.create)
    ..a<MetaEntityOptions>(2, 'entityOptions', $pb.PbFieldType.OM, MetaEntityOptions.getDefault, MetaEntityOptions.create)
    ..a<MetaListOptions>(3, 'listOptions', $pb.PbFieldType.OM, MetaListOptions.getDefault, MetaListOptions.create)
    ..oo(0, [1, 2, 3])
    ..hasRequiredFields = false
  ;

  MetaOptionSource() : super();
  MetaOptionSource.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaOptionSource.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaOptionSource clone() => new MetaOptionSource()..mergeFromMessage(this);
  MetaOptionSource copyWith(void Function(MetaOptionSource) updates) => super.copyWith((message) => updates(message as MetaOptionSource));
  $pb.BuilderInfo get info_ => _i;
  static MetaOptionSource create() => new MetaOptionSource();
  MetaOptionSource createEmptyInstance() => create();
  static $pb.PbList<MetaOptionSource> createRepeated() => new $pb.PbList<MetaOptionSource>();
  static MetaOptionSource getDefault() => _defaultInstance ??= create()..freeze();
  static MetaOptionSource _defaultInstance;

  MetaOptionSource_Source whichSource() => _MetaOptionSource_SourceByTag[$_whichOneof(0)];
  void clearSource() => clearField($_whichOneof(0));

  MetaSingleOption get singleOption => $_getN(0);
  set singleOption(MetaSingleOption v) { setField(1, v); }
  bool hasSingleOption() => $_has(0);
  void clearSingleOption() => clearField(1);

  MetaEntityOptions get entityOptions => $_getN(1);
  set entityOptions(MetaEntityOptions v) { setField(2, v); }
  bool hasEntityOptions() => $_has(1);
  void clearEntityOptions() => clearField(2);

  MetaListOptions get listOptions => $_getN(2);
  set listOptions(MetaListOptions v) { setField(3, v); }
  bool hasListOptions() => $_has(2);
  void clearListOptions() => clearField(3);
}

class MetaCheckField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaCheckField', package: const $pb.PackageName('model'))
    ..aOB(1, 'allChecked')
    ..aOB(2, 'disabled')
    ..aOS(3, 'noCurrentSelectedKey')
    ..pc<MetaOptionSource>(4, 'optionSources', $pb.PbFieldType.PM,MetaOptionSource.create)
    ..hasRequiredFields = false
  ;

  MetaCheckField() : super();
  MetaCheckField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaCheckField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaCheckField clone() => new MetaCheckField()..mergeFromMessage(this);
  MetaCheckField copyWith(void Function(MetaCheckField) updates) => super.copyWith((message) => updates(message as MetaCheckField));
  $pb.BuilderInfo get info_ => _i;
  static MetaCheckField create() => new MetaCheckField();
  MetaCheckField createEmptyInstance() => create();
  static $pb.PbList<MetaCheckField> createRepeated() => new $pb.PbList<MetaCheckField>();
  static MetaCheckField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaCheckField _defaultInstance;

  bool get allChecked => $_get(0, false);
  set allChecked(bool v) { $_setBool(0, v); }
  bool hasAllChecked() => $_has(0);
  void clearAllChecked() => clearField(1);

  bool get disabled => $_get(1, false);
  set disabled(bool v) { $_setBool(1, v); }
  bool hasDisabled() => $_has(1);
  void clearDisabled() => clearField(2);

  String get noCurrentSelectedKey => $_getS(2, '');
  set noCurrentSelectedKey(String v) { $_setString(2, v); }
  bool hasNoCurrentSelectedKey() => $_has(2);
  void clearNoCurrentSelectedKey() => clearField(3);

  List<MetaOptionSource> get optionSources => $_getList(3);
}

class MetaDropDownField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaDropDownField', package: const $pb.PackageName('model'))
    ..aOB(1, 'allowEmpty')
    ..aOB(2, 'allowMulti')
    ..aOS(3, 'current')
    ..pc<MetaOptionSource>(4, 'optionSources', $pb.PbFieldType.PM,MetaOptionSource.create)
    ..aOS(5, 'currentDescription')
    ..aOS(6, 'size')
    ..aOS(7, 'textSize')
    ..a<int>(8, 'otherFieldSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MetaDropDownField() : super();
  MetaDropDownField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaDropDownField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaDropDownField clone() => new MetaDropDownField()..mergeFromMessage(this);
  MetaDropDownField copyWith(void Function(MetaDropDownField) updates) => super.copyWith((message) => updates(message as MetaDropDownField));
  $pb.BuilderInfo get info_ => _i;
  static MetaDropDownField create() => new MetaDropDownField();
  MetaDropDownField createEmptyInstance() => create();
  static $pb.PbList<MetaDropDownField> createRepeated() => new $pb.PbList<MetaDropDownField>();
  static MetaDropDownField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaDropDownField _defaultInstance;

  bool get allowEmpty => $_get(0, false);
  set allowEmpty(bool v) { $_setBool(0, v); }
  bool hasAllowEmpty() => $_has(0);
  void clearAllowEmpty() => clearField(1);

  bool get allowMulti => $_get(1, false);
  set allowMulti(bool v) { $_setBool(1, v); }
  bool hasAllowMulti() => $_has(1);
  void clearAllowMulti() => clearField(2);

  String get current => $_getS(2, '');
  set current(String v) { $_setString(2, v); }
  bool hasCurrent() => $_has(2);
  void clearCurrent() => clearField(3);

  List<MetaOptionSource> get optionSources => $_getList(3);

  String get currentDescription => $_getS(4, '');
  set currentDescription(String v) { $_setString(4, v); }
  bool hasCurrentDescription() => $_has(4);
  void clearCurrentDescription() => clearField(5);

  String get size => $_getS(5, '');
  set size(String v) { $_setString(5, v); }
  bool hasSize() => $_has(5);
  void clearSize() => clearField(6);

  String get textSize => $_getS(6, '');
  set textSize(String v) { $_setString(6, v); }
  bool hasTextSize() => $_has(6);
  void clearTextSize() => clearField(7);

  int get otherFieldSize => $_get(7, 0);
  set otherFieldSize(int v) { $_setSignedInt32(7, v); }
  bool hasOtherFieldSize() => $_has(7);
  void clearOtherFieldSize() => clearField(8);
}

class MetaRadioField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaRadioField', package: const $pb.PackageName('model'))
    ..pc<MetaOptionSource>(1, 'optionSources', $pb.PbFieldType.PM,MetaOptionSource.create)
    ..hasRequiredFields = false
  ;

  MetaRadioField() : super();
  MetaRadioField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaRadioField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaRadioField clone() => new MetaRadioField()..mergeFromMessage(this);
  MetaRadioField copyWith(void Function(MetaRadioField) updates) => super.copyWith((message) => updates(message as MetaRadioField));
  $pb.BuilderInfo get info_ => _i;
  static MetaRadioField create() => new MetaRadioField();
  MetaRadioField createEmptyInstance() => create();
  static $pb.PbList<MetaRadioField> createRepeated() => new $pb.PbList<MetaRadioField>();
  static MetaRadioField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaRadioField _defaultInstance;

  List<MetaOptionSource> get optionSources => $_getList(0);
}

class MetaSubmitField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaSubmitField', package: const $pb.PackageName('model'))
    ..aOS(1, 'buttonType')
    ..aOS(2, 'confirmationMsg')
    ..aOS(3, 'imageLocation')
    ..aOB(4, 'requestConfirmation')
    ..hasRequiredFields = false
  ;

  MetaSubmitField() : super();
  MetaSubmitField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaSubmitField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaSubmitField clone() => new MetaSubmitField()..mergeFromMessage(this);
  MetaSubmitField copyWith(void Function(MetaSubmitField) updates) => super.copyWith((message) => updates(message as MetaSubmitField));
  $pb.BuilderInfo get info_ => _i;
  static MetaSubmitField create() => new MetaSubmitField();
  MetaSubmitField createEmptyInstance() => create();
  static $pb.PbList<MetaSubmitField> createRepeated() => new $pb.PbList<MetaSubmitField>();
  static MetaSubmitField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaSubmitField _defaultInstance;

  String get buttonType => $_getS(0, '');
  set buttonType(String v) { $_setString(0, v); }
  bool hasButtonType() => $_has(0);
  void clearButtonType() => clearField(1);

  String get confirmationMsg => $_getS(1, '');
  set confirmationMsg(String v) { $_setString(1, v); }
  bool hasConfirmationMsg() => $_has(1);
  void clearConfirmationMsg() => clearField(2);

  String get imageLocation => $_getS(2, '');
  set imageLocation(String v) { $_setString(2, v); }
  bool hasImageLocation() => $_has(2);
  void clearImageLocation() => clearField(3);

  bool get requestConfirmation => $_get(3, false);
  set requestConfirmation(bool v) { $_setBool(3, v); }
  bool hasRequestConfirmation() => $_has(3);
  void clearRequestConfirmation() => clearField(4);
}

enum MetaFormField_FieldInfo {
  textField, 
  dateTimeField, 
  displayField, 
  checkField, 
  dropDownField, 
  radioField, 
  submitField, 
  textAreaField, 
  notSet
}

class MetaFormField extends $pb.GeneratedMessage {
  static const Map<int, MetaFormField_FieldInfo> _MetaFormField_FieldInfoByTag = {
    20 : MetaFormField_FieldInfo.textField,
    21 : MetaFormField_FieldInfo.dateTimeField,
    22 : MetaFormField_FieldInfo.displayField,
    23 : MetaFormField_FieldInfo.checkField,
    24 : MetaFormField_FieldInfo.dropDownField,
    25 : MetaFormField_FieldInfo.radioField,
    26 : MetaFormField_FieldInfo.submitField,
    27 : MetaFormField_FieldInfo.textAreaField,
    0 : MetaFormField_FieldInfo.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaFormField', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..aOS(2, 'title')
    ..aOS(3, 'fieldName')
    ..aOS(4, 'useWhen')
    ..aOS(5, 'redWhen')
    ..aOB(6, 'requiredField')
    ..aOS(7, 'tooltip')
    ..aOS(8, 'ignoreWhen')
    ..aOS(9, 'event')
    ..e<MetaFormFieldType>(10, 'fieldType', $pb.PbFieldType.OE, MetaFormFieldType.UNKNOWN, MetaFormFieldType.valueOf, MetaFormFieldType.values)
    ..aOS(11, 'titleOriginal')
    ..a<MetaTextField>(20, 'textField', $pb.PbFieldType.OM, MetaTextField.getDefault, MetaTextField.create)
    ..a<MetaDateTimeField>(21, 'dateTimeField', $pb.PbFieldType.OM, MetaDateTimeField.getDefault, MetaDateTimeField.create)
    ..a<MetaDisplayField>(22, 'displayField', $pb.PbFieldType.OM, MetaDisplayField.getDefault, MetaDisplayField.create)
    ..a<MetaCheckField>(23, 'checkField', $pb.PbFieldType.OM, MetaCheckField.getDefault, MetaCheckField.create)
    ..a<MetaDropDownField>(24, 'dropDownField', $pb.PbFieldType.OM, MetaDropDownField.getDefault, MetaDropDownField.create)
    ..a<MetaRadioField>(25, 'radioField', $pb.PbFieldType.OM, MetaRadioField.getDefault, MetaRadioField.create)
    ..a<MetaSubmitField>(26, 'submitField', $pb.PbFieldType.OM, MetaSubmitField.getDefault, MetaSubmitField.create)
    ..a<MetaTextAreaField>(27, 'textAreaField', $pb.PbFieldType.OM, MetaTextAreaField.getDefault, MetaTextAreaField.create)
    ..oo(0, [20, 21, 22, 23, 24, 25, 26, 27])
    ..hasRequiredFields = false
  ;

  MetaFormField() : super();
  MetaFormField.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaFormField.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaFormField clone() => new MetaFormField()..mergeFromMessage(this);
  MetaFormField copyWith(void Function(MetaFormField) updates) => super.copyWith((message) => updates(message as MetaFormField));
  $pb.BuilderInfo get info_ => _i;
  static MetaFormField create() => new MetaFormField();
  MetaFormField createEmptyInstance() => create();
  static $pb.PbList<MetaFormField> createRepeated() => new $pb.PbList<MetaFormField>();
  static MetaFormField getDefault() => _defaultInstance ??= create()..freeze();
  static MetaFormField _defaultInstance;

  MetaFormField_FieldInfo whichFieldInfo() => _MetaFormField_FieldInfoByTag[$_whichOneof(0)];
  void clearFieldInfo() => clearField($_whichOneof(0));

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get title => $_getS(1, '');
  set title(String v) { $_setString(1, v); }
  bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  String get fieldName => $_getS(2, '');
  set fieldName(String v) { $_setString(2, v); }
  bool hasFieldName() => $_has(2);
  void clearFieldName() => clearField(3);

  String get useWhen => $_getS(3, '');
  set useWhen(String v) { $_setString(3, v); }
  bool hasUseWhen() => $_has(3);
  void clearUseWhen() => clearField(4);

  String get redWhen => $_getS(4, '');
  set redWhen(String v) { $_setString(4, v); }
  bool hasRedWhen() => $_has(4);
  void clearRedWhen() => clearField(5);

  bool get requiredField => $_get(5, false);
  set requiredField(bool v) { $_setBool(5, v); }
  bool hasRequiredField() => $_has(5);
  void clearRequiredField() => clearField(6);

  String get tooltip => $_getS(6, '');
  set tooltip(String v) { $_setString(6, v); }
  bool hasTooltip() => $_has(6);
  void clearTooltip() => clearField(7);

  String get ignoreWhen => $_getS(7, '');
  set ignoreWhen(String v) { $_setString(7, v); }
  bool hasIgnoreWhen() => $_has(7);
  void clearIgnoreWhen() => clearField(8);

  String get event => $_getS(8, '');
  set event(String v) { $_setString(8, v); }
  bool hasEvent() => $_has(8);
  void clearEvent() => clearField(9);

  MetaFormFieldType get fieldType => $_getN(9);
  set fieldType(MetaFormFieldType v) { setField(10, v); }
  bool hasFieldType() => $_has(9);
  void clearFieldType() => clearField(10);

  String get titleOriginal => $_getS(10, '');
  set titleOriginal(String v) { $_setString(10, v); }
  bool hasTitleOriginal() => $_has(10);
  void clearTitleOriginal() => clearField(11);

  MetaTextField get textField => $_getN(11);
  set textField(MetaTextField v) { setField(20, v); }
  bool hasTextField() => $_has(11);
  void clearTextField() => clearField(20);

  MetaDateTimeField get dateTimeField => $_getN(12);
  set dateTimeField(MetaDateTimeField v) { setField(21, v); }
  bool hasDateTimeField() => $_has(12);
  void clearDateTimeField() => clearField(21);

  MetaDisplayField get displayField => $_getN(13);
  set displayField(MetaDisplayField v) { setField(22, v); }
  bool hasDisplayField() => $_has(13);
  void clearDisplayField() => clearField(22);

  MetaCheckField get checkField => $_getN(14);
  set checkField(MetaCheckField v) { setField(23, v); }
  bool hasCheckField() => $_has(14);
  void clearCheckField() => clearField(23);

  MetaDropDownField get dropDownField => $_getN(15);
  set dropDownField(MetaDropDownField v) { setField(24, v); }
  bool hasDropDownField() => $_has(15);
  void clearDropDownField() => clearField(24);

  MetaRadioField get radioField => $_getN(16);
  set radioField(MetaRadioField v) { setField(25, v); }
  bool hasRadioField() => $_has(16);
  void clearRadioField() => clearField(25);

  MetaSubmitField get submitField => $_getN(17);
  set submitField(MetaSubmitField v) { setField(26, v); }
  bool hasSubmitField() => $_has(17);
  void clearSubmitField() => clearField(26);

  MetaTextAreaField get textAreaField => $_getN(18);
  set textAreaField(MetaTextAreaField v) { setField(27, v); }
  bool hasTextAreaField() => $_has(18);
  void clearTextAreaField() => clearField(27);
}

class MetaAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaAction', package: const $pb.PackageName('model'))
    ..aOS(1, 'actionClass')
    ..hasRequiredFields = false
  ;

  MetaAction() : super();
  MetaAction.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaAction.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaAction clone() => new MetaAction()..mergeFromMessage(this);
  MetaAction copyWith(void Function(MetaAction) updates) => super.copyWith((message) => updates(message as MetaAction));
  $pb.BuilderInfo get info_ => _i;
  static MetaAction create() => new MetaAction();
  MetaAction createEmptyInstance() => create();
  static $pb.PbList<MetaAction> createRepeated() => new $pb.PbList<MetaAction>();
  static MetaAction getDefault() => _defaultInstance ??= create()..freeze();
  static MetaAction _defaultInstance;

  String get actionClass => $_getS(0, '');
  set actionClass(String v) { $_setString(0, v); }
  bool hasActionClass() => $_has(0);
  void clearActionClass() => clearField(1);
}

class MetaForm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaForm', package: const $pb.PackageName('model'))
    ..aOS(1, 'name')
    ..aOS(2, 'title')
    ..aOS(3, 'target')
    ..aOS(4, 'defaultMapName')
    ..aOS(5, 'defaultWidgetStyle')
    ..aOS(6, 'defaultTableStyle')
    ..aOS(7, 'type')
    ..pc<MetaAltTarget>(8, 'altTargets', $pb.PbFieldType.PM,MetaAltTarget.create)
    ..pc<MetaFormField>(9, 'fields', $pb.PbFieldType.PM,MetaFormField.create)
    ..pc<MetaAction>(10, 'actions', $pb.PbFieldType.PM,MetaAction.create)
    ..hasRequiredFields = false
  ;

  MetaForm() : super();
  MetaForm.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaForm.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaForm clone() => new MetaForm()..mergeFromMessage(this);
  MetaForm copyWith(void Function(MetaForm) updates) => super.copyWith((message) => updates(message as MetaForm));
  $pb.BuilderInfo get info_ => _i;
  static MetaForm create() => new MetaForm();
  MetaForm createEmptyInstance() => create();
  static $pb.PbList<MetaForm> createRepeated() => new $pb.PbList<MetaForm>();
  static MetaForm getDefault() => _defaultInstance ??= create()..freeze();
  static MetaForm _defaultInstance;

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get title => $_getS(1, '');
  set title(String v) { $_setString(1, v); }
  bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  String get target => $_getS(2, '');
  set target(String v) { $_setString(2, v); }
  bool hasTarget() => $_has(2);
  void clearTarget() => clearField(3);

  String get defaultMapName => $_getS(3, '');
  set defaultMapName(String v) { $_setString(3, v); }
  bool hasDefaultMapName() => $_has(3);
  void clearDefaultMapName() => clearField(4);

  String get defaultWidgetStyle => $_getS(4, '');
  set defaultWidgetStyle(String v) { $_setString(4, v); }
  bool hasDefaultWidgetStyle() => $_has(4);
  void clearDefaultWidgetStyle() => clearField(5);

  String get defaultTableStyle => $_getS(5, '');
  set defaultTableStyle(String v) { $_setString(5, v); }
  bool hasDefaultTableStyle() => $_has(5);
  void clearDefaultTableStyle() => clearField(6);

  String get type => $_getS(6, '');
  set type(String v) { $_setString(6, v); }
  bool hasType() => $_has(6);
  void clearType() => clearField(7);

  List<MetaAltTarget> get altTargets => $_getList(7);

  List<MetaFormField> get fields => $_getList(8);

  List<MetaAction> get actions => $_getList(9);
}

class MetaRow extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaRow', package: const $pb.PackageName('model'))
    ..pPS(1, 'values')
    ..hasRequiredFields = false
  ;

  MetaRow() : super();
  MetaRow.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaRow.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaRow clone() => new MetaRow()..mergeFromMessage(this);
  MetaRow copyWith(void Function(MetaRow) updates) => super.copyWith((message) => updates(message as MetaRow));
  $pb.BuilderInfo get info_ => _i;
  static MetaRow create() => new MetaRow();
  MetaRow createEmptyInstance() => create();
  static $pb.PbList<MetaRow> createRepeated() => new $pb.PbList<MetaRow>();
  static MetaRow getDefault() => _defaultInstance ??= create()..freeze();
  static MetaRow _defaultInstance;

  List<String> get values => $_getList(0);
}

class MetaListValues extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaListValues', package: const $pb.PackageName('model'))
    ..pc<MetaRow>(1, 'rows', $pb.PbFieldType.PM,MetaRow.create)
    ..hasRequiredFields = false
  ;

  MetaListValues() : super();
  MetaListValues.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaListValues.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaListValues clone() => new MetaListValues()..mergeFromMessage(this);
  MetaListValues copyWith(void Function(MetaListValues) updates) => super.copyWith((message) => updates(message as MetaListValues));
  $pb.BuilderInfo get info_ => _i;
  static MetaListValues create() => new MetaListValues();
  MetaListValues createEmptyInstance() => create();
  static $pb.PbList<MetaListValues> createRepeated() => new $pb.PbList<MetaListValues>();
  static MetaListValues getDefault() => _defaultInstance ??= create()..freeze();
  static MetaListValues _defaultInstance;

  List<MetaRow> get rows => $_getList(0);
}

class MetaFieldData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaFieldData', package: const $pb.PackageName('model'))
    ..aOS(1, 'fieldName')
    ..aOS(2, 'value')
    ..a<MetaListValues>(3, 'listValues', $pb.PbFieldType.OM, MetaListValues.getDefault, MetaListValues.create)
    ..aOS(5, 'widgetType')
    ..m<String, String>(6, 'widgetOptions', 'MetaFieldData.WidgetOptionsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  MetaFieldData() : super();
  MetaFieldData.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaFieldData.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaFieldData clone() => new MetaFieldData()..mergeFromMessage(this);
  MetaFieldData copyWith(void Function(MetaFieldData) updates) => super.copyWith((message) => updates(message as MetaFieldData));
  $pb.BuilderInfo get info_ => _i;
  static MetaFieldData create() => new MetaFieldData();
  MetaFieldData createEmptyInstance() => create();
  static $pb.PbList<MetaFieldData> createRepeated() => new $pb.PbList<MetaFieldData>();
  static MetaFieldData getDefault() => _defaultInstance ??= create()..freeze();
  static MetaFieldData _defaultInstance;

  String get fieldName => $_getS(0, '');
  set fieldName(String v) { $_setString(0, v); }
  bool hasFieldName() => $_has(0);
  void clearFieldName() => clearField(1);

  String get value => $_getS(1, '');
  set value(String v) { $_setString(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  MetaListValues get listValues => $_getN(2);
  set listValues(MetaListValues v) { setField(3, v); }
  bool hasListValues() => $_has(2);
  void clearListValues() => clearField(3);

  String get widgetType => $_getS(3, '');
  set widgetType(String v) { $_setString(3, v); }
  bool hasWidgetType() => $_has(3);
  void clearWidgetType() => clearField(5);

  Map<String, String> get widgetOptions => $_getMap(4);
}

class MetaSingleFormData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaSingleFormData', package: const $pb.PackageName('model'))
    ..aOS(1, 'formName')
    ..aOS(2, 'formUri')
    ..aOS(3, 'formId')
    ..pc<MetaFieldData>(4, 'fields', $pb.PbFieldType.PM,MetaFieldData.create)
    ..hasRequiredFields = false
  ;

  MetaSingleFormData() : super();
  MetaSingleFormData.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaSingleFormData.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaSingleFormData clone() => new MetaSingleFormData()..mergeFromMessage(this);
  MetaSingleFormData copyWith(void Function(MetaSingleFormData) updates) => super.copyWith((message) => updates(message as MetaSingleFormData));
  $pb.BuilderInfo get info_ => _i;
  static MetaSingleFormData create() => new MetaSingleFormData();
  MetaSingleFormData createEmptyInstance() => create();
  static $pb.PbList<MetaSingleFormData> createRepeated() => new $pb.PbList<MetaSingleFormData>();
  static MetaSingleFormData getDefault() => _defaultInstance ??= create()..freeze();
  static MetaSingleFormData _defaultInstance;

  String get formName => $_getS(0, '');
  set formName(String v) { $_setString(0, v); }
  bool hasFormName() => $_has(0);
  void clearFormName() => clearField(1);

  String get formUri => $_getS(1, '');
  set formUri(String v) { $_setString(1, v); }
  bool hasFormUri() => $_has(1);
  void clearFormUri() => clearField(2);

  String get formId => $_getS(2, '');
  set formId(String v) { $_setString(2, v); }
  bool hasFormId() => $_has(2);
  void clearFormId() => clearField(3);

  List<MetaFieldData> get fields => $_getList(3);
}

class FormDataRequestor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FormDataRequestor', package: const $pb.PackageName('model'))
    ..aOS(1, 'uri')
    ..aOS(2, 'jsonParameters')
    ..hasRequiredFields = false
  ;

  FormDataRequestor() : super();
  FormDataRequestor.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FormDataRequestor.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FormDataRequestor clone() => new FormDataRequestor()..mergeFromMessage(this);
  FormDataRequestor copyWith(void Function(FormDataRequestor) updates) => super.copyWith((message) => updates(message as FormDataRequestor));
  $pb.BuilderInfo get info_ => _i;
  static FormDataRequestor create() => new FormDataRequestor();
  FormDataRequestor createEmptyInstance() => create();
  static $pb.PbList<FormDataRequestor> createRepeated() => new $pb.PbList<FormDataRequestor>();
  static FormDataRequestor getDefault() => _defaultInstance ??= create()..freeze();
  static FormDataRequestor _defaultInstance;

  String get uri => $_getS(0, '');
  set uri(String v) { $_setString(0, v); }
  bool hasUri() => $_has(0);
  void clearUri() => clearField(1);

  String get jsonParameters => $_getS(1, '');
  set jsonParameters(String v) { $_setString(1, v); }
  bool hasJsonParameters() => $_has(1);
  void clearJsonParameters() => clearField(2);
}

class MetaFieldMapping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaFieldMapping', package: const $pb.PackageName('model'))
    ..aOS(1, 'key')
    ..aOS(2, 'fieldName')
    ..aOS(3, 'fieldTitle')
    ..aOS(4, 'fieldTitleOriginal')
    ..aOS(5, 'formUri')
    ..hasRequiredFields = false
  ;

  MetaFieldMapping() : super();
  MetaFieldMapping.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaFieldMapping.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaFieldMapping clone() => new MetaFieldMapping()..mergeFromMessage(this);
  MetaFieldMapping copyWith(void Function(MetaFieldMapping) updates) => super.copyWith((message) => updates(message as MetaFieldMapping));
  $pb.BuilderInfo get info_ => _i;
  static MetaFieldMapping create() => new MetaFieldMapping();
  MetaFieldMapping createEmptyInstance() => create();
  static $pb.PbList<MetaFieldMapping> createRepeated() => new $pb.PbList<MetaFieldMapping>();
  static MetaFieldMapping getDefault() => _defaultInstance ??= create()..freeze();
  static MetaFieldMapping _defaultInstance;

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  String get fieldName => $_getS(1, '');
  set fieldName(String v) { $_setString(1, v); }
  bool hasFieldName() => $_has(1);
  void clearFieldName() => clearField(2);

  String get fieldTitle => $_getS(2, '');
  set fieldTitle(String v) { $_setString(2, v); }
  bool hasFieldTitle() => $_has(2);
  void clearFieldTitle() => clearField(3);

  String get fieldTitleOriginal => $_getS(3, '');
  set fieldTitleOriginal(String v) { $_setString(3, v); }
  bool hasFieldTitleOriginal() => $_has(3);
  void clearFieldTitleOriginal() => clearField(4);

  String get formUri => $_getS(4, '');
  set formUri(String v) { $_setString(4, v); }
  bool hasFormUri() => $_has(4);
  void clearFormUri() => clearField(5);
}

class MetaFieldMappings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaFieldMappings', package: const $pb.PackageName('model'))
    ..pc<MetaFieldMapping>(1, 'fields', $pb.PbFieldType.PM,MetaFieldMapping.create)
    ..hasRequiredFields = false
  ;

  MetaFieldMappings() : super();
  MetaFieldMappings.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaFieldMappings.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaFieldMappings clone() => new MetaFieldMappings()..mergeFromMessage(this);
  MetaFieldMappings copyWith(void Function(MetaFieldMappings) updates) => super.copyWith((message) => updates(message as MetaFieldMappings));
  $pb.BuilderInfo get info_ => _i;
  static MetaFieldMappings create() => new MetaFieldMappings();
  MetaFieldMappings createEmptyInstance() => create();
  static $pb.PbList<MetaFieldMappings> createRepeated() => new $pb.PbList<MetaFieldMappings>();
  static MetaFieldMappings getDefault() => _defaultInstance ??= create()..freeze();
  static MetaFieldMappings _defaultInstance;

  List<MetaFieldMapping> get fields => $_getList(0);
}

class MetaMappingPackage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaMappingPackage', package: const $pb.PackageName('model'))
    ..m<String, MetaFieldMappings>(1, 'mappings', 'MetaMappingPackage.MappingsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, MetaFieldMappings.create, null, null , const $pb.PackageName('model'))
    ..hasRequiredFields = false
  ;

  MetaMappingPackage() : super();
  MetaMappingPackage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaMappingPackage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaMappingPackage clone() => new MetaMappingPackage()..mergeFromMessage(this);
  MetaMappingPackage copyWith(void Function(MetaMappingPackage) updates) => super.copyWith((message) => updates(message as MetaMappingPackage));
  $pb.BuilderInfo get info_ => _i;
  static MetaMappingPackage create() => new MetaMappingPackage();
  MetaMappingPackage createEmptyInstance() => create();
  static $pb.PbList<MetaMappingPackage> createRepeated() => new $pb.PbList<MetaMappingPackage>();
  static MetaMappingPackage getDefault() => _defaultInstance ??= create()..freeze();
  static MetaMappingPackage _defaultInstance;

  Map<String, MetaFieldMappings> get mappings => $_getMap(0);
}

class MetaTuple extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaTuple', package: const $pb.PackageName('model'))
    ..pPS(1, 'values')
    ..hasRequiredFields = false
  ;

  MetaTuple() : super();
  MetaTuple.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaTuple.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaTuple clone() => new MetaTuple()..mergeFromMessage(this);
  MetaTuple copyWith(void Function(MetaTuple) updates) => super.copyWith((message) => updates(message as MetaTuple));
  $pb.BuilderInfo get info_ => _i;
  static MetaTuple create() => new MetaTuple();
  MetaTuple createEmptyInstance() => create();
  static $pb.PbList<MetaTuple> createRepeated() => new $pb.PbList<MetaTuple>();
  static MetaTuple getDefault() => _defaultInstance ??= create()..freeze();
  static MetaTuple _defaultInstance;

  List<String> get values => $_getList(0);
}

class MetaFormServices extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MetaFormServices', package: const $pb.PackageName('model'))
    ..pc<MetaTuple>(1, 'formServices', $pb.PbFieldType.PM,MetaTuple.create)
    ..pc<MetaTuple>(2, 'formRequests', $pb.PbFieldType.PM,MetaTuple.create)
    ..hasRequiredFields = false
  ;

  MetaFormServices() : super();
  MetaFormServices.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MetaFormServices.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MetaFormServices clone() => new MetaFormServices()..mergeFromMessage(this);
  MetaFormServices copyWith(void Function(MetaFormServices) updates) => super.copyWith((message) => updates(message as MetaFormServices));
  $pb.BuilderInfo get info_ => _i;
  static MetaFormServices create() => new MetaFormServices();
  MetaFormServices createEmptyInstance() => create();
  static $pb.PbList<MetaFormServices> createRepeated() => new $pb.PbList<MetaFormServices>();
  static MetaFormServices getDefault() => _defaultInstance ??= create()..freeze();
  static MetaFormServices _defaultInstance;

  List<MetaTuple> get formServices => $_getList(0);

  List<MetaTuple> get formRequests => $_getList(1);
}

