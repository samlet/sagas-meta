import 'package:sagas_meta/src/models/common_language.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonLanguageJsonifier{
  static StandardLanguage extractStandardLanguage(dynamic json) {
    return StandardLanguage(
        entityId: create_id_from('StandardLanguage', ['standardLanguageId'], json),
        langCode3t: json['langCode3t'] as String,
        langCode2: json['langCode2'] as String,
        standardLanguageId: json['standardLanguageId'] as String,
        langCode3b: json['langCode3b'] as String,
        langFamily: json['langFamily'] as String,
        langName: json['langName'] as String,
        langCharset: json['langCharset'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static StandardLanguage overridesStandardLanguage(Map<String, dynamic> map) {
    return StandardLanguage(
        entityId: create_id_from('StandardLanguage', ['standardLanguageId'], map),
        langCode3t: map['langCode3t'],
        langCode2: map['langCode2'],
        standardLanguageId: map['standardLanguageId'],
        langCode3b: map['langCode3b'],
        langFamily: map['langFamily'],
        langName: map['langName'],
        langCharset: map['langCharset'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}