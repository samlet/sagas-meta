import 'package:sagas_meta/src/models/accounting_rate.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingRateJsonifier{
  static PartyRate extractPartyRate(dynamic json) {
    return PartyRate(
        entityId: create_id_from('PartyRate', ['partyId', 'rateTypeId', 'fromDate'], json),
        percentageUsed: json['percentageUsed'] as double,
        fromDate: check_dt(json['fromDate']),
        rateTypeId: json['rateTypeId'] as String,
        defaultRate: json['defaultRate'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRate overridesPartyRate(Map<String, dynamic> map) {
    return PartyRate(
        entityId: create_id_from('PartyRate', ['partyId', 'rateTypeId', 'fromDate'], map),
        percentageUsed: map['percentageUsed'],
        fromDate: map['fromDate'],
        rateTypeId: map['rateTypeId'],
        defaultRate: map['defaultRate'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RateAmount extractRateAmount(dynamic json) {
    return RateAmount(
        entityId: create_id_from('RateAmount', ['rateTypeId', 'rateCurrencyUomId', 'periodTypeId', 'partyId', 'workEffortId', 'emplPositionTypeId', 'fromDate'], json),
        workEffortId: json['workEffortId'] as String,
        rateTypeId: json['rateTypeId'] as String,
        rateAmount: json['rateAmount'] as double,
        periodTypeId: json['periodTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        rateCurrencyUomId: json['rateCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RateAmount overridesRateAmount(Map<String, dynamic> map) {
    return RateAmount(
        entityId: create_id_from('RateAmount', ['rateTypeId', 'rateCurrencyUomId', 'periodTypeId', 'partyId', 'workEffortId', 'emplPositionTypeId', 'fromDate'], map),
        workEffortId: map['workEffortId'],
        rateTypeId: map['rateTypeId'],
        rateAmount: map['rateAmount'],
        periodTypeId: map['periodTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        emplPositionTypeId: map['emplPositionTypeId'],
        rateCurrencyUomId: map['rateCurrencyUomId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RateAmountAndRelations extractRateAmountAndRelations(dynamic json) {
    return RateAmountAndRelations(
        entityId: create_id_from('RateAmountAndRelations', ['workEffortId', 'rateTypeId', 'periodTypeId', 'fromDate', 'emplPositionTypeId', 'rateCurrencyUomId', 'partyId'], json),
        workEffortId: json['workEffortId'] as String,
        lastName: json['lastName'] as String,
        rateTypeId: json['rateTypeId'] as String,
        employeePositionDescription: json['employeePositionDescription'] as String,
        periodDescription: json['periodDescription'] as String,
        rateAmount: json['rateAmount'] as double,
        periodTypeId: json['periodTypeId'] as String,
        workEffortName: json['workEffortName'] as String,
        rateDescription: json['rateDescription'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        rateCurrencyUomId: json['rateCurrencyUomId'] as String,
        middleName: json['middleName'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RateAmountAndRelations overridesRateAmountAndRelations(Map<String, dynamic> map) {
    return RateAmountAndRelations(
        entityId: create_id_from('RateAmountAndRelations', ['workEffortId', 'rateTypeId', 'periodTypeId', 'fromDate', 'emplPositionTypeId', 'rateCurrencyUomId', 'partyId'], map),
        workEffortId: map['workEffortId'],
        lastName: map['lastName'],
        rateTypeId: map['rateTypeId'],
        employeePositionDescription: map['employeePositionDescription'],
        periodDescription: map['periodDescription'],
        rateAmount: map['rateAmount'],
        periodTypeId: map['periodTypeId'],
        workEffortName: map['workEffortName'],
        rateDescription: map['rateDescription'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        emplPositionTypeId: map['emplPositionTypeId'],
        rateCurrencyUomId: map['rateCurrencyUomId'],
        middleName: map['middleName'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RateType extractRateType(dynamic json) {
    return RateType(
        entityId: create_id_from('RateType', ['rateTypeId'], json),
        rateTypeId: json['rateTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RateType overridesRateType(Map<String, dynamic> map) {
    return RateType(
        entityId: create_id_from('RateType', ['rateTypeId'], map),
        rateTypeId: map['rateTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}