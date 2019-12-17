///
//  Generated code. Do not modify.
//  source: nlpserv.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class NlPinyinRequest_PinyinPresentation extends $pb.ProtobufEnum {
  static const NlPinyinRequest_PinyinPresentation NUMBER = const NlPinyinRequest_PinyinPresentation._(0, 'NUMBER');
  static const NlPinyinRequest_PinyinPresentation WITH_TONE_MARK = const NlPinyinRequest_PinyinPresentation._(1, 'WITH_TONE_MARK');
  static const NlPinyinRequest_PinyinPresentation WITHOUT_TONE = const NlPinyinRequest_PinyinPresentation._(2, 'WITHOUT_TONE');

  static const List<NlPinyinRequest_PinyinPresentation> values = const <NlPinyinRequest_PinyinPresentation> [
    NUMBER,
    WITH_TONE_MARK,
    WITHOUT_TONE,
  ];

  static final Map<int, NlPinyinRequest_PinyinPresentation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NlPinyinRequest_PinyinPresentation valueOf(int value) => _byValue[value];

  const NlPinyinRequest_PinyinPresentation._(int v, String n) : super(v, n);
}

