import 'package:sagas_meta/src/models/accounting_budget.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingBudgetJsonifier{
  static Budget extractBudget(dynamic json) {
    return Budget(
        entityId: create_id_from('Budget', ['budgetId'], json),
        comments: json['comments'] as String,
        budgetTypeId: json['budgetTypeId'] as String,
        budgetId: json['budgetId'] as String,
        customTimePeriodId: json['customTimePeriodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Budget overridesBudget(Map<String, dynamic> map) {
    return Budget(
        entityId: create_id_from('Budget', ['budgetId'], map),
        comments: map['comments'],
        budgetTypeId: map['budgetTypeId'],
        budgetId: map['budgetId'],
        customTimePeriodId: map['customTimePeriodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetAttribute extractBudgetAttribute(dynamic json) {
    return BudgetAttribute(
        entityId: create_id_from('BudgetAttribute', ['budgetId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        budgetId: json['budgetId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetAttribute overridesBudgetAttribute(Map<String, dynamic> map) {
    return BudgetAttribute(
        entityId: create_id_from('BudgetAttribute', ['budgetId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        budgetId: map['budgetId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetItem extractBudgetItem(dynamic json) {
    return BudgetItem(
        entityId: create_id_from('BudgetItem', ['budgetId', 'budgetItemSeqId'], json),
        amount: json['amount'] as double,
        purpose: json['purpose'] as String,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        budgetItemTypeId: json['budgetItemTypeId'] as String,
        justification: json['justification'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetItem overridesBudgetItem(Map<String, dynamic> map) {
    return BudgetItem(
        entityId: create_id_from('BudgetItem', ['budgetId', 'budgetItemSeqId'], map),
        amount: map['amount'],
        purpose: map['purpose'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        budgetItemTypeId: map['budgetItemTypeId'],
        justification: map['justification'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetItemAttribute extractBudgetItemAttribute(dynamic json) {
    return BudgetItemAttribute(
        entityId: create_id_from('BudgetItemAttribute', ['budgetId', 'budgetItemSeqId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetItemAttribute overridesBudgetItemAttribute(Map<String, dynamic> map) {
    return BudgetItemAttribute(
        entityId: create_id_from('BudgetItemAttribute', ['budgetId', 'budgetItemSeqId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetItemType extractBudgetItemType(dynamic json) {
    return BudgetItemType(
        entityId: create_id_from('BudgetItemType', ['budgetItemTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        budgetItemTypeId: json['budgetItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetItemType overridesBudgetItemType(Map<String, dynamic> map) {
    return BudgetItemType(
        entityId: create_id_from('BudgetItemType', ['budgetItemTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        budgetItemTypeId: map['budgetItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetItemTypeAttr extractBudgetItemTypeAttr(dynamic json) {
    return BudgetItemTypeAttr(
        entityId: create_id_from('BudgetItemTypeAttr', ['budgetItemTypeId', 'attrName'], json),
        description: json['description'] as String,
        budgetItemTypeId: json['budgetItemTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetItemTypeAttr overridesBudgetItemTypeAttr(Map<String, dynamic> map) {
    return BudgetItemTypeAttr(
        entityId: create_id_from('BudgetItemTypeAttr', ['budgetItemTypeId', 'attrName'], map),
        description: map['description'],
        budgetItemTypeId: map['budgetItemTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetReview extractBudgetReview(dynamic json) {
    return BudgetReview(
        entityId: create_id_from('BudgetReview', ['budgetId', 'budgetReviewId', 'partyId', 'budgetReviewResultTypeId'], json),
        reviewDate: check_dt(json['reviewDate']),
        budgetReviewResultTypeId: json['budgetReviewResultTypeId'] as String,
        budgetId: json['budgetId'] as String,
        partyId: json['partyId'] as String,
        budgetReviewId: json['budgetReviewId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetReview overridesBudgetReview(Map<String, dynamic> map) {
    return BudgetReview(
        entityId: create_id_from('BudgetReview', ['budgetId', 'budgetReviewId', 'partyId', 'budgetReviewResultTypeId'], map),
        reviewDate: map['reviewDate'],
        budgetReviewResultTypeId: map['budgetReviewResultTypeId'],
        budgetId: map['budgetId'],
        partyId: map['partyId'],
        budgetReviewId: map['budgetReviewId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetReviewResultType extractBudgetReviewResultType(dynamic json) {
    return BudgetReviewResultType(
        entityId: create_id_from('BudgetReviewResultType', ['budgetReviewResultTypeId'], json),
        comments: json['comments'] as String,
        budgetReviewResultTypeId: json['budgetReviewResultTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetReviewResultType overridesBudgetReviewResultType(Map<String, dynamic> map) {
    return BudgetReviewResultType(
        entityId: create_id_from('BudgetReviewResultType', ['budgetReviewResultTypeId'], map),
        comments: map['comments'],
        budgetReviewResultTypeId: map['budgetReviewResultTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetRevision extractBudgetRevision(dynamic json) {
    return BudgetRevision(
        entityId: create_id_from('BudgetRevision', ['budgetId', 'revisionSeqId'], json),
        revisionSeqId: json['revisionSeqId'] as String,
        dateRevised: check_dt(json['dateRevised']),
        budgetId: json['budgetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetRevision overridesBudgetRevision(Map<String, dynamic> map) {
    return BudgetRevision(
        entityId: create_id_from('BudgetRevision', ['budgetId', 'revisionSeqId'], map),
        revisionSeqId: map['revisionSeqId'],
        dateRevised: map['dateRevised'],
        budgetId: map['budgetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetRevisionImpact extractBudgetRevisionImpact(dynamic json) {
    return BudgetRevisionImpact(
        entityId: create_id_from('BudgetRevisionImpact', ['budgetId', 'budgetItemSeqId', 'revisionSeqId'], json),
        addDeleteFlag: json['addDeleteFlag'] as String,
        revisionReason: json['revisionReason'] as String,
        revisionSeqId: json['revisionSeqId'] as String,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        revisedAmount: json['revisedAmount'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetRevisionImpact overridesBudgetRevisionImpact(Map<String, dynamic> map) {
    return BudgetRevisionImpact(
        entityId: create_id_from('BudgetRevisionImpact', ['budgetId', 'budgetItemSeqId', 'revisionSeqId'], map),
        addDeleteFlag: map['addDeleteFlag'],
        revisionReason: map['revisionReason'],
        revisionSeqId: map['revisionSeqId'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        revisedAmount: map['revisedAmount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetRole extractBudgetRole(dynamic json) {
    return BudgetRole(
        entityId: create_id_from('BudgetRole', ['budgetId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        budgetId: json['budgetId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetRole overridesBudgetRole(Map<String, dynamic> map) {
    return BudgetRole(
        entityId: create_id_from('BudgetRole', ['budgetId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        budgetId: map['budgetId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetScenario extractBudgetScenario(dynamic json) {
    return BudgetScenario(
        entityId: create_id_from('BudgetScenario', ['budgetScenarioId'], json),
        budgetScenarioId: json['budgetScenarioId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetScenario overridesBudgetScenario(Map<String, dynamic> map) {
    return BudgetScenario(
        entityId: create_id_from('BudgetScenario', ['budgetScenarioId'], map),
        budgetScenarioId: map['budgetScenarioId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetScenarioApplication extractBudgetScenarioApplication(dynamic json) {
    return BudgetScenarioApplication(
        entityId: create_id_from('BudgetScenarioApplication', ['budgetScenarioApplicId', 'budgetScenarioId'], json),
        amountChange: json['amountChange'] as double,
        percentageChange: json['percentageChange'] as double,
        budgetScenarioApplicId: json['budgetScenarioApplicId'] as String,
        budgetScenarioId: json['budgetScenarioId'] as String,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetScenarioApplication overridesBudgetScenarioApplication(Map<String, dynamic> map) {
    return BudgetScenarioApplication(
        entityId: create_id_from('BudgetScenarioApplication', ['budgetScenarioApplicId', 'budgetScenarioId'], map),
        amountChange: map['amountChange'],
        percentageChange: map['percentageChange'],
        budgetScenarioApplicId: map['budgetScenarioApplicId'],
        budgetScenarioId: map['budgetScenarioId'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetScenarioRule extractBudgetScenarioRule(dynamic json) {
    return BudgetScenarioRule(
        entityId: create_id_from('BudgetScenarioRule', ['budgetScenarioId', 'budgetItemTypeId'], json),
        amountChange: json['amountChange'] as double,
        percentageChange: json['percentageChange'] as double,
        budgetScenarioId: json['budgetScenarioId'] as String,
        budgetItemTypeId: json['budgetItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetScenarioRule overridesBudgetScenarioRule(Map<String, dynamic> map) {
    return BudgetScenarioRule(
        entityId: create_id_from('BudgetScenarioRule', ['budgetScenarioId', 'budgetItemTypeId'], map),
        amountChange: map['amountChange'],
        percentageChange: map['percentageChange'],
        budgetScenarioId: map['budgetScenarioId'],
        budgetItemTypeId: map['budgetItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetStatus extractBudgetStatus(dynamic json) {
    return BudgetStatus(
        entityId: create_id_from('BudgetStatus', ['budgetId', 'statusId'], json),
        statusDate: check_dt(json['statusDate']),
        comments: json['comments'] as String,
        statusId: json['statusId'] as String,
        budgetId: json['budgetId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetStatus overridesBudgetStatus(Map<String, dynamic> map) {
    return BudgetStatus(
        entityId: create_id_from('BudgetStatus', ['budgetId', 'statusId'], map),
        statusDate: map['statusDate'],
        comments: map['comments'],
        statusId: map['statusId'],
        budgetId: map['budgetId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetType extractBudgetType(dynamic json) {
    return BudgetType(
        entityId: create_id_from('BudgetType', ['budgetTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        budgetTypeId: json['budgetTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetType overridesBudgetType(Map<String, dynamic> map) {
    return BudgetType(
        entityId: create_id_from('BudgetType', ['budgetTypeId'], map),
        parentTypeId: map['parentTypeId'],
        budgetTypeId: map['budgetTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BudgetTypeAttr extractBudgetTypeAttr(dynamic json) {
    return BudgetTypeAttr(
        entityId: create_id_from('BudgetTypeAttr', ['budgetTypeId', 'attrName'], json),
        budgetTypeId: json['budgetTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BudgetTypeAttr overridesBudgetTypeAttr(Map<String, dynamic> map) {
    return BudgetTypeAttr(
        entityId: create_id_from('BudgetTypeAttr', ['budgetTypeId', 'attrName'], map),
        budgetTypeId: map['budgetTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}