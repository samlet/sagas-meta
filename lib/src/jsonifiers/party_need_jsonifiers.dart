import 'package:sagas_meta/src/models/party_need.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class PartyNeedJsonifier{
  static NeedType extractNeedType(dynamic json) {
    return NeedType(
        entityId: create_id_from('NeedType', ['needTypeId'], json),
        needTypeId: json['needTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static NeedType overridesNeedType(Map<String, dynamic> map) {
    return NeedType(
        entityId: create_id_from('NeedType', ['needTypeId'], map),
        needTypeId: map['needTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNeed extractPartyNeed(dynamic json) {
    return PartyNeed(
        entityId: create_id_from('PartyNeed', ['partyNeedId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        needTypeId: json['needTypeId'] as String,
        productId: json['productId'] as String,
        description: json['description'] as String,
        partyTypeId: json['partyTypeId'] as String,
        productCategoryId: json['productCategoryId'] as String,
        visitId: json['visitId'] as String,
        partyNeedId: json['partyNeedId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        partyId: json['partyId'] as String,
        datetimeRecorded: check_dt(json['datetimeRecorded']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNeed overridesPartyNeed(Map<String, dynamic> map) {
    return PartyNeed(
        entityId: create_id_from('PartyNeed', ['partyNeedId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        needTypeId: map['needTypeId'],
        productId: map['productId'],
        description: map['description'],
        partyTypeId: map['partyTypeId'],
        productCategoryId: map['productCategoryId'],
        visitId: map['visitId'],
        partyNeedId: map['partyNeedId'],
        communicationEventId: map['communicationEventId'],
        partyId: map['partyId'],
        datetimeRecorded: map['datetimeRecorded'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}