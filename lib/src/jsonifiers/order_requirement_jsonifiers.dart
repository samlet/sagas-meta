import 'package:sagas_meta/src/models/order_requirement.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderRequirementJsonifier{
  static DesiredFeature extractDesiredFeature(dynamic json) {
    return DesiredFeature(
        entityId: create_id_from('DesiredFeature', ['desiredFeatureId', 'requirementId'], json),
        desiredFeatureId: json['desiredFeatureId'] as String,
        optionalInd: json['optionalInd'] as String,
        productFeatureId: json['productFeatureId'] as String,
        requirementId: json['requirementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DesiredFeature overridesDesiredFeature(Map<String, dynamic> map) {
    return DesiredFeature(
        entityId: create_id_from('DesiredFeature', ['desiredFeatureId', 'requirementId'], map),
        desiredFeatureId: map['desiredFeatureId'],
        optionalInd: map['optionalInd'],
        productFeatureId: map['productFeatureId'],
        requirementId: map['requirementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static OrderRequirementCommitment extractOrderRequirementCommitment(dynamic json) {
    return OrderRequirementCommitment(
        entityId: create_id_from('OrderRequirementCommitment', ['orderId', 'orderItemSeqId', 'requirementId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        quantity: json['quantity'] as double,
        orderId: json['orderId'] as String,
        requirementId: json['requirementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static OrderRequirementCommitment overridesOrderRequirementCommitment(Map<String, dynamic> map) {
    return OrderRequirementCommitment(
        entityId: create_id_from('OrderRequirementCommitment', ['orderId', 'orderItemSeqId', 'requirementId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        quantity: map['quantity'],
        orderId: map['orderId'],
        requirementId: map['requirementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Requirement extractRequirement(dynamic json) {
    return Requirement(
        entityId: create_id_from('Requirement', ['requirementId'], json),
        reason: json['reason'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        estimatedBudget: json['estimatedBudget'] as double,
        description: json['description'] as String,
        requiredByDate: check_dt(json['requiredByDate']),
        requirementStartDate: check_dt(json['requirementStartDate']),
        requirementTypeId: json['requirementTypeId'] as String,
        useCase: json['useCase'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        requirementId: json['requirementId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        deliverableId: json['deliverableId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Requirement overridesRequirement(Map<String, dynamic> map) {
    return Requirement(
        entityId: create_id_from('Requirement', ['requirementId'], map),
        reason: map['reason'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        productId: map['productId'],
        lastModifiedDate: map['lastModifiedDate'],
        estimatedBudget: map['estimatedBudget'],
        description: map['description'],
        requiredByDate: map['requiredByDate'],
        requirementStartDate: map['requirementStartDate'],
        requirementTypeId: map['requirementTypeId'],
        useCase: map['useCase'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        fixedAssetId: map['fixedAssetId'],
        requirementId: map['requirementId'],
        createdByUserLogin: map['createdByUserLogin'],
        deliverableId: map['deliverableId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementAttribute extractRequirementAttribute(dynamic json) {
    return RequirementAttribute(
        entityId: create_id_from('RequirementAttribute', ['requirementId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        requirementId: json['requirementId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementAttribute overridesRequirementAttribute(Map<String, dynamic> map) {
    return RequirementAttribute(
        entityId: create_id_from('RequirementAttribute', ['requirementId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        requirementId: map['requirementId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementBudgetAllocation extractRequirementBudgetAllocation(dynamic json) {
    return RequirementBudgetAllocation(
        entityId: create_id_from('RequirementBudgetAllocation', ['budgetId', 'budgetItemSeqId', 'requirementId'], json),
        amount: json['amount'] as double,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        requirementId: json['requirementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementBudgetAllocation overridesRequirementBudgetAllocation(Map<String, dynamic> map) {
    return RequirementBudgetAllocation(
        entityId: create_id_from('RequirementBudgetAllocation', ['budgetId', 'budgetItemSeqId', 'requirementId'], map),
        amount: map['amount'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        requirementId: map['requirementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementCustRequest extractRequirementCustRequest(dynamic json) {
    return RequirementCustRequest(
        entityId: create_id_from('RequirementCustRequest', ['custRequestId', 'custRequestItemSeqId', 'requirementId'], json),
        custRequestId: json['custRequestId'] as String,
        requirementId: json['requirementId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementCustRequest overridesRequirementCustRequest(Map<String, dynamic> map) {
    return RequirementCustRequest(
        entityId: create_id_from('RequirementCustRequest', ['custRequestId', 'custRequestItemSeqId', 'requirementId'], map),
        custRequestId: map['custRequestId'],
        requirementId: map['requirementId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementRole extractRequirementRole(dynamic json) {
    return RequirementRole(
        entityId: create_id_from('RequirementRole', ['requirementId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        requirementId: json['requirementId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementRole overridesRequirementRole(Map<String, dynamic> map) {
    return RequirementRole(
        entityId: create_id_from('RequirementRole', ['requirementId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        requirementId: map['requirementId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementStatus extractRequirementStatus(dynamic json) {
    return RequirementStatus(
        entityId: create_id_from('RequirementStatus', ['requirementId', 'statusId'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        requirementId: json['requirementId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementStatus overridesRequirementStatus(Map<String, dynamic> map) {
    return RequirementStatus(
        entityId: create_id_from('RequirementStatus', ['requirementId', 'statusId'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        requirementId: map['requirementId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementType extractRequirementType(dynamic json) {
    return RequirementType(
        entityId: create_id_from('RequirementType', ['requirementTypeId'], json),
        requirementTypeId: json['requirementTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementType overridesRequirementType(Map<String, dynamic> map) {
    return RequirementType(
        entityId: create_id_from('RequirementType', ['requirementTypeId'], map),
        requirementTypeId: map['requirementTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementTypeAttr extractRequirementTypeAttr(dynamic json) {
    return RequirementTypeAttr(
        entityId: create_id_from('RequirementTypeAttr', ['requirementTypeId', 'attrName'], json),
        requirementTypeId: json['requirementTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementTypeAttr overridesRequirementTypeAttr(Map<String, dynamic> map) {
    return RequirementTypeAttr(
        entityId: create_id_from('RequirementTypeAttr', ['requirementTypeId', 'attrName'], map),
        requirementTypeId: map['requirementTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WorkReqFulfType extractWorkReqFulfType(dynamic json) {
    return WorkReqFulfType(
        entityId: create_id_from('WorkReqFulfType', ['workReqFulfTypeId'], json),
        workReqFulfTypeId: json['workReqFulfTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WorkReqFulfType overridesWorkReqFulfType(Map<String, dynamic> map) {
    return WorkReqFulfType(
        entityId: create_id_from('WorkReqFulfType', ['workReqFulfTypeId'], map),
        workReqFulfTypeId: map['workReqFulfTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WorkRequirementFulfillment extractWorkRequirementFulfillment(dynamic json) {
    return WorkRequirementFulfillment(
        entityId: create_id_from('WorkRequirementFulfillment', ['requirementId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        workReqFulfTypeId: json['workReqFulfTypeId'] as String,
        requirementId: json['requirementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WorkRequirementFulfillment overridesWorkRequirementFulfillment(Map<String, dynamic> map) {
    return WorkRequirementFulfillment(
        entityId: create_id_from('WorkRequirementFulfillment', ['requirementId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        workReqFulfTypeId: map['workReqFulfTypeId'],
        requirementId: map['requirementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}