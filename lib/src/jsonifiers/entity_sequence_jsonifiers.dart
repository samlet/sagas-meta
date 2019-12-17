import 'package:sagas_meta/src/models/entity_sequence.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntitySequenceJsonifier{
  static SequenceValueItem extractSequenceValueItem(dynamic json) {
    return SequenceValueItem(
        entityId: create_id_from('SequenceValueItem', ['seqName'], json),
        seqName: json['seqName'] as String,
        seqId: json['seqId'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SequenceValueItem overridesSequenceValueItem(Map<String, dynamic> map) {
    return SequenceValueItem(
        entityId: create_id_from('SequenceValueItem', ['seqName'], map),
        seqName: map['seqName'],
        seqId: map['seqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}