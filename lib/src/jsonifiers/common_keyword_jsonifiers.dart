import 'package:sagas_meta/src/models/common_keyword.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonKeywordJsonifier{
  static KeywordThesaurus extractKeywordThesaurus(dynamic json) {
    return KeywordThesaurus(
        entityId: create_id_from('KeywordThesaurus', ['enteredKeyword', 'alternateKeyword'], json),
        relationshipEnumId: json['relationshipEnumId'] as String,
        enteredKeyword: json['enteredKeyword'] as String,
        alternateKeyword: json['alternateKeyword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static KeywordThesaurus overridesKeywordThesaurus(Map<String, dynamic> map) {
    return KeywordThesaurus(
        entityId: create_id_from('KeywordThesaurus', ['enteredKeyword', 'alternateKeyword'], map),
        relationshipEnumId: map['relationshipEnumId'],
        enteredKeyword: map['enteredKeyword'],
        alternateKeyword: map['alternateKeyword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}