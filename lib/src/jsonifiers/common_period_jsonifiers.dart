import 'package:sagas_meta/src/models/common_period.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonPeriodJsonifier{
  static CustomTimePeriod extractCustomTimePeriod(dynamic json) {
    return CustomTimePeriod(
        entityId: create_id_from('CustomTimePeriod', ['customTimePeriodId'], json),
        periodNum: json['periodNum'] as int,
        periodTypeId: json['periodTypeId'] as String,
        periodName: json['periodName'] as String,
        parentPeriodId: json['parentPeriodId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        isClosed: json['isClosed'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        customTimePeriodId: json['customTimePeriodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustomTimePeriod overridesCustomTimePeriod(Map<String, dynamic> map) {
    return CustomTimePeriod(
        entityId: create_id_from('CustomTimePeriod', ['customTimePeriodId'], map),
        periodNum: map['periodNum'],
        periodTypeId: map['periodTypeId'],
        periodName: map['periodName'],
        parentPeriodId: map['parentPeriodId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        isClosed: map['isClosed'],
        organizationPartyId: map['organizationPartyId'],
        customTimePeriodId: map['customTimePeriodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PeriodType extractPeriodType(dynamic json) {
    return PeriodType(
        entityId: create_id_from('PeriodType', ['periodTypeId'], json),
        periodTypeId: json['periodTypeId'] as String,
        description: json['description'] as String,
        periodLength: json['periodLength'] as int,
        uomId: json['uomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PeriodType overridesPeriodType(Map<String, dynamic> map) {
    return PeriodType(
        entityId: create_id_from('PeriodType', ['periodTypeId'], map),
        periodTypeId: map['periodTypeId'],
        description: map['description'],
        periodLength: map['periodLength'],
        uomId: map['uomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}