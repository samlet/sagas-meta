///
//  Generated code. Do not modify.
//  source: values.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class JsonDataType extends $pb.ProtobufEnum {
  static const JsonDataType MAP = const JsonDataType._(0, 'MAP');
  static const JsonDataType LIST = const JsonDataType._(1, 'LIST');
  static const JsonDataType SCALAR = const JsonDataType._(2, 'SCALAR');

  static const List<JsonDataType> values = const <JsonDataType> [
    MAP,
    LIST,
    SCALAR,
  ];

  static final Map<int, JsonDataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JsonDataType valueOf(int value) => _byValue[value];

  const JsonDataType._(int v, String n) : super(v, n);
}

