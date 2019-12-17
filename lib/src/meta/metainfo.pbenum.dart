///
//  Generated code. Do not modify.
//  source: metainfo.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class MetaPayloadType extends $pb.ProtobufEnum {
  static const MetaPayloadType ERROR_INFO = const MetaPayloadType._(0, 'ERROR_INFO');
  static const MetaPayloadType META_ENTITY = const MetaPayloadType._(1, 'META_ENTITY');
  static const MetaPayloadType META_SERVICE = const MetaPayloadType._(2, 'META_SERVICE');
  static const MetaPayloadType ENTITY_VALUE = const MetaPayloadType._(3, 'ENTITY_VALUE');
  static const MetaPayloadType ENTITY_VALUE_LIST = const MetaPayloadType._(4, 'ENTITY_VALUE_LIST');
  static const MetaPayloadType META_FORM = const MetaPayloadType._(5, 'META_FORM');
  static const MetaPayloadType META_FORM_DATA = const MetaPayloadType._(6, 'META_FORM_DATA');
  static const MetaPayloadType ACTION_RESULT = const MetaPayloadType._(7, 'ACTION_RESULT');

  static const List<MetaPayloadType> values = const <MetaPayloadType> [
    ERROR_INFO,
    META_ENTITY,
    META_SERVICE,
    ENTITY_VALUE,
    ENTITY_VALUE_LIST,
    META_FORM,
    META_FORM_DATA,
    ACTION_RESULT,
  ];

  static final Map<int, MetaPayloadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaPayloadType valueOf(int value) => _byValue[value];

  const MetaPayloadType._(int v, String n) : super(v, n);
}

class ErrorType extends $pb.ProtobufEnum {
  static const ErrorType SUCCESS = const ErrorType._(0, 'SUCCESS');
  static const ErrorType NOT_FOUND = const ErrorType._(1, 'NOT_FOUND');
  static const ErrorType UNSUPPORT_META = const ErrorType._(2, 'UNSUPPORT_META');
  static const ErrorType RETRIEVE_INFO_FAIL = const ErrorType._(3, 'RETRIEVE_INFO_FAIL');

  static const List<ErrorType> values = const <ErrorType> [
    SUCCESS,
    NOT_FOUND,
    UNSUPPORT_META,
    RETRIEVE_INFO_FAIL,
  ];

  static final Map<int, ErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorType valueOf(int value) => _byValue[value];

  const ErrorType._(int v, String n) : super(v, n);
}

