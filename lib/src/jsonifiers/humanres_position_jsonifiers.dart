import 'package:sagas_meta/src/models/humanres_position.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class HumanresPositionJsonifier{
  static EmplPosition extractEmplPosition(dynamic json) {
    return EmplPosition(
        entityId: create_id_from('EmplPosition', ['emplPositionId'], json),
        estimatedThruDate: check_dt(json['estimatedThruDate']),
        actualThruDate: check_dt(json['actualThruDate']),
        exemptFlag: json['exemptFlag'] as String,
        temporaryFlag: json['temporaryFlag'] as String,
        fulltimeFlag: json['fulltimeFlag'] as String,
        emplPositionId: json['emplPositionId'] as String,
        actualFromDate: check_dt(json['actualFromDate']),
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        salaryFlag: json['salaryFlag'] as String,
        statusId: json['statusId'] as String,
        estimatedFromDate: check_dt(json['estimatedFromDate']),
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPosition overridesEmplPosition(Map<String, dynamic> map) {
    return EmplPosition(
        entityId: create_id_from('EmplPosition', ['emplPositionId'], map),
        estimatedThruDate: map['estimatedThruDate'],
        actualThruDate: map['actualThruDate'],
        exemptFlag: map['exemptFlag'],
        temporaryFlag: map['temporaryFlag'],
        fulltimeFlag: map['fulltimeFlag'],
        emplPositionId: map['emplPositionId'],
        actualFromDate: map['actualFromDate'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        salaryFlag: map['salaryFlag'],
        statusId: map['statusId'],
        estimatedFromDate: map['estimatedFromDate'],
        emplPositionTypeId: map['emplPositionTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionAndFulfillment extractEmplPositionAndFulfillment(dynamic json) {
    return EmplPositionAndFulfillment(
        entityId: create_id_from('EmplPositionAndFulfillment', ['employeePartyId', 'fromDate', 'emplPositionId'], json),
        employeePartyId: json['employeePartyId'] as String,
        estimatedThruDate: check_dt(json['estimatedThruDate']),
        actualThruDate: check_dt(json['actualThruDate']),
        exemptFlag: json['exemptFlag'] as String,
        temporaryFlag: json['temporaryFlag'] as String,
        fulltimeFlag: json['fulltimeFlag'] as String,
        emplPositionId: json['emplPositionId'] as String,
        actualFromDate: check_dt(json['actualFromDate']),
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        salaryFlag: json['salaryFlag'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        statusId: json['statusId'] as String,
        estimatedFromDate: check_dt(json['estimatedFromDate']),
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionAndFulfillment overridesEmplPositionAndFulfillment(Map<String, dynamic> map) {
    return EmplPositionAndFulfillment(
        entityId: create_id_from('EmplPositionAndFulfillment', ['employeePartyId', 'fromDate', 'emplPositionId'], map),
        employeePartyId: map['employeePartyId'],
        estimatedThruDate: map['estimatedThruDate'],
        actualThruDate: map['actualThruDate'],
        exemptFlag: map['exemptFlag'],
        temporaryFlag: map['temporaryFlag'],
        fulltimeFlag: map['fulltimeFlag'],
        emplPositionId: map['emplPositionId'],
        actualFromDate: map['actualFromDate'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        salaryFlag: map['salaryFlag'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        statusId: map['statusId'],
        estimatedFromDate: map['estimatedFromDate'],
        emplPositionTypeId: map['emplPositionTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionClassType extractEmplPositionClassType(dynamic json) {
    return EmplPositionClassType(
        entityId: create_id_from('EmplPositionClassType', ['emplPositionClassTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        emplPositionClassTypeId: json['emplPositionClassTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionClassType overridesEmplPositionClassType(Map<String, dynamic> map) {
    return EmplPositionClassType(
        entityId: create_id_from('EmplPositionClassType', ['emplPositionClassTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        emplPositionClassTypeId: map['emplPositionClassTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionFulfillment extractEmplPositionFulfillment(dynamic json) {
    return EmplPositionFulfillment(
        entityId: create_id_from('EmplPositionFulfillment', ['emplPositionId', 'partyId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        comments: json['comments'] as String,
        emplPositionId: json['emplPositionId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionFulfillment overridesEmplPositionFulfillment(Map<String, dynamic> map) {
    return EmplPositionFulfillment(
        entityId: create_id_from('EmplPositionFulfillment', ['emplPositionId', 'partyId', 'fromDate'], map),
        fromDate: map['fromDate'],
        comments: map['comments'],
        emplPositionId: map['emplPositionId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionReportingStruct extractEmplPositionReportingStruct(dynamic json) {
    return EmplPositionReportingStruct(
        entityId: create_id_from('EmplPositionReportingStruct', ['emplPositionIdReportingTo', 'emplPositionIdManagedBy', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        comments: json['comments'] as String,
        emplPositionIdManagedBy: json['emplPositionIdManagedBy'] as String,
        emplPositionIdReportingTo: json['emplPositionIdReportingTo'] as String,
        primaryFlag: json['primaryFlag'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionReportingStruct overridesEmplPositionReportingStruct(Map<String, dynamic> map) {
    return EmplPositionReportingStruct(
        entityId: create_id_from('EmplPositionReportingStruct', ['emplPositionIdReportingTo', 'emplPositionIdManagedBy', 'fromDate'], map),
        fromDate: map['fromDate'],
        comments: map['comments'],
        emplPositionIdManagedBy: map['emplPositionIdManagedBy'],
        emplPositionIdReportingTo: map['emplPositionIdReportingTo'],
        primaryFlag: map['primaryFlag'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionResponsibility extractEmplPositionResponsibility(dynamic json) {
    return EmplPositionResponsibility(
        entityId: create_id_from('EmplPositionResponsibility', ['emplPositionId', 'responsibilityTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        comments: json['comments'] as String,
        responsibilityTypeId: json['responsibilityTypeId'] as String,
        emplPositionId: json['emplPositionId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionResponsibility overridesEmplPositionResponsibility(Map<String, dynamic> map) {
    return EmplPositionResponsibility(
        entityId: create_id_from('EmplPositionResponsibility', ['emplPositionId', 'responsibilityTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        comments: map['comments'],
        responsibilityTypeId: map['responsibilityTypeId'],
        emplPositionId: map['emplPositionId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionType extractEmplPositionType(dynamic json) {
    return EmplPositionType(
        entityId: create_id_from('EmplPositionType', ['emplPositionTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionType overridesEmplPositionType(Map<String, dynamic> map) {
    return EmplPositionType(
        entityId: create_id_from('EmplPositionType', ['emplPositionTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        emplPositionTypeId: map['emplPositionTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionTypeClass extractEmplPositionTypeClass(dynamic json) {
    return EmplPositionTypeClass(
        entityId: create_id_from('EmplPositionTypeClass', ['emplPositionTypeId', 'emplPositionClassTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        standardHoursPerWeek: json['standardHoursPerWeek'] as double,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        emplPositionClassTypeId: json['emplPositionClassTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionTypeClass overridesEmplPositionTypeClass(Map<String, dynamic> map) {
    return EmplPositionTypeClass(
        entityId: create_id_from('EmplPositionTypeClass', ['emplPositionTypeId', 'emplPositionClassTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        standardHoursPerWeek: map['standardHoursPerWeek'],
        emplPositionTypeId: map['emplPositionTypeId'],
        emplPositionClassTypeId: map['emplPositionClassTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionTypeRate extractEmplPositionTypeRate(dynamic json) {
    return EmplPositionTypeRate(
        entityId: create_id_from('EmplPositionTypeRate', ['emplPositionTypeId', 'rateTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        rateTypeId: json['rateTypeId'] as String,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        salaryStepSeqId: json['salaryStepSeqId'] as String,
        payGradeId: json['payGradeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionTypeRate overridesEmplPositionTypeRate(Map<String, dynamic> map) {
    return EmplPositionTypeRate(
        entityId: create_id_from('EmplPositionTypeRate', ['emplPositionTypeId', 'rateTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        rateTypeId: map['rateTypeId'],
        emplPositionTypeId: map['emplPositionTypeId'],
        salaryStepSeqId: map['salaryStepSeqId'],
        payGradeId: map['payGradeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplPositionTypeRateAndAmount extractEmplPositionTypeRateAndAmount(dynamic json) {
    return EmplPositionTypeRateAndAmount(
        entityId: create_id_from('EmplPositionTypeRateAndAmount', ['periodTypeId', 'rateCurrencyUomId', 'rateAmountFromDate', 'fromDate', 'rateTypeId', 'emplPositionTypeId'], json),
        fromDate: check_dt(json['fromDate']),
        rateTypeId: json['rateTypeId'] as String,
        rateAmountThruDate: check_dt(json['rateAmountThruDate']),
        rateAmount: json['rateAmount'] as double,
        rateAmountFromDate: check_dt(json['rateAmountFromDate']),
        periodTypeId: json['periodTypeId'] as String,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        salaryStepSeqId: json['salaryStepSeqId'] as String,
        rateCurrencyUomId: json['rateCurrencyUomId'] as String,
        payGradeId: json['payGradeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionTypeRateAndAmount overridesEmplPositionTypeRateAndAmount(Map<String, dynamic> map) {
    return EmplPositionTypeRateAndAmount(
        entityId: create_id_from('EmplPositionTypeRateAndAmount', ['periodTypeId', 'rateCurrencyUomId', 'rateAmountFromDate', 'fromDate', 'rateTypeId', 'emplPositionTypeId'], map),
        fromDate: map['fromDate'],
        rateTypeId: map['rateTypeId'],
        rateAmountThruDate: map['rateAmountThruDate'],
        rateAmount: map['rateAmount'],
        rateAmountFromDate: map['rateAmountFromDate'],
        periodTypeId: map['periodTypeId'],
        emplPositionTypeId: map['emplPositionTypeId'],
        salaryStepSeqId: map['salaryStepSeqId'],
        rateCurrencyUomId: map['rateCurrencyUomId'],
        payGradeId: map['payGradeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ValidResponsibility extractValidResponsibility(dynamic json) {
    return ValidResponsibility(
        entityId: create_id_from('ValidResponsibility', ['emplPositionTypeId', 'responsibilityTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        comments: json['comments'] as String,
        responsibilityTypeId: json['responsibilityTypeId'] as String,
        emplPositionTypeId: json['emplPositionTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ValidResponsibility overridesValidResponsibility(Map<String, dynamic> map) {
    return ValidResponsibility(
        entityId: create_id_from('ValidResponsibility', ['emplPositionTypeId', 'responsibilityTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        comments: map['comments'],
        responsibilityTypeId: map['responsibilityTypeId'],
        emplPositionTypeId: map['emplPositionTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}