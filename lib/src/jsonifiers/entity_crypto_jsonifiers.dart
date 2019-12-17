import 'package:sagas_meta/src/models/entity_crypto.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityCryptoJsonifier{
  static EntityKeyStore extractEntityKeyStore(dynamic json) {
    return EntityKeyStore(
        entityId: create_id_from('EntityKeyStore', ['keyName'], json),
        keyName: json['keyName'] as String,
        keyText: json['keyText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntityKeyStore overridesEntityKeyStore(Map<String, dynamic> map) {
    return EntityKeyStore(
        entityId: create_id_from('EntityKeyStore', ['keyName'], map),
        keyName: map['keyName'],
        keyText: map['keyText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}