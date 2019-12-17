///
//  Generated code. Do not modify.
//  source: forms.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class MetaFormFieldType extends $pb.ProtobufEnum {
  static const MetaFormFieldType UNKNOWN = const MetaFormFieldType._(0, 'UNKNOWN');
  static const MetaFormFieldType DISPLAY = const MetaFormFieldType._(1, 'DISPLAY');
  static const MetaFormFieldType HYPERLINK = const MetaFormFieldType._(2, 'HYPERLINK');
  static const MetaFormFieldType TEXT = const MetaFormFieldType._(3, 'TEXT');
  static const MetaFormFieldType TEXTAREA = const MetaFormFieldType._(4, 'TEXTAREA');
  static const MetaFormFieldType DATE_TIME = const MetaFormFieldType._(5, 'DATE_TIME');
  static const MetaFormFieldType DROP_DOWN = const MetaFormFieldType._(6, 'DROP_DOWN');
  static const MetaFormFieldType CHECK = const MetaFormFieldType._(7, 'CHECK');
  static const MetaFormFieldType RADIO = const MetaFormFieldType._(8, 'RADIO');
  static const MetaFormFieldType SUBMIT = const MetaFormFieldType._(9, 'SUBMIT');
  static const MetaFormFieldType RESET = const MetaFormFieldType._(10, 'RESET');
  static const MetaFormFieldType HIDDEN = const MetaFormFieldType._(11, 'HIDDEN');
  static const MetaFormFieldType IGNORED = const MetaFormFieldType._(12, 'IGNORED');
  static const MetaFormFieldType TEXTQBE = const MetaFormFieldType._(13, 'TEXTQBE');
  static const MetaFormFieldType DATEQBE = const MetaFormFieldType._(14, 'DATEQBE');
  static const MetaFormFieldType RANGEQBE = const MetaFormFieldType._(15, 'RANGEQBE');
  static const MetaFormFieldType LOOKUP = const MetaFormFieldType._(16, 'LOOKUP');
  static const MetaFormFieldType FILE = const MetaFormFieldType._(17, 'FILE');
  static const MetaFormFieldType PASSWORD = const MetaFormFieldType._(18, 'PASSWORD');
  static const MetaFormFieldType IMAGE = const MetaFormFieldType._(19, 'IMAGE');
  static const MetaFormFieldType DISPLAY_ENTITY = const MetaFormFieldType._(20, 'DISPLAY_ENTITY');
  static const MetaFormFieldType CONTAINER = const MetaFormFieldType._(21, 'CONTAINER');
  static const MetaFormFieldType MENU = const MetaFormFieldType._(22, 'MENU');
  static const MetaFormFieldType FORM = const MetaFormFieldType._(23, 'FORM');
  static const MetaFormFieldType GRID = const MetaFormFieldType._(24, 'GRID');
  static const MetaFormFieldType SCREEN = const MetaFormFieldType._(25, 'SCREEN');

  static const List<MetaFormFieldType> values = const <MetaFormFieldType> [
    UNKNOWN,
    DISPLAY,
    HYPERLINK,
    TEXT,
    TEXTAREA,
    DATE_TIME,
    DROP_DOWN,
    CHECK,
    RADIO,
    SUBMIT,
    RESET,
    HIDDEN,
    IGNORED,
    TEXTQBE,
    DATEQBE,
    RANGEQBE,
    LOOKUP,
    FILE,
    PASSWORD,
    IMAGE,
    DISPLAY_ENTITY,
    CONTAINER,
    MENU,
    FORM,
    GRID,
    SCREEN,
  ];

  static final Map<int, MetaFormFieldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaFormFieldType valueOf(int value) => _byValue[value];

  const MetaFormFieldType._(int v, String n) : super(v, n);
}

