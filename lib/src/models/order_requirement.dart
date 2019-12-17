import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity DesiredFeature, Desired Feature
class DesiredFeature extends EntityBase {

  final String desiredFeatureId; // pk
  final String optionalInd;
  final String productFeatureId;
  final String requirementId; // pk
  DesiredFeature({entityId,
    @required this.desiredFeatureId, this.optionalInd, this.productFeatureId, @required this.requirementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DesiredFeature { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'desiredFeatureId':desiredFeatureId, 'optionalInd':optionalInd, 'productFeatureId':productFeatureId, 'requirementId':requirementId};
  }

}

/// Entity OrderRequirementCommitment, Order Requirement Commitment
class OrderRequirementCommitment extends EntityBase {

  final String orderItemSeqId; // pk
  final double quantity;
  final String orderId; // pk
  final String requirementId; // pk
  OrderRequirementCommitment({entityId,
    @required this.orderItemSeqId, this.quantity, @required this.orderId, @required this.requirementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderRequirementCommitment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'orderId':orderId, 'requirementId':requirementId};
  }

}

/// Entity Requirement, Requirement
class Requirement extends EntityBase {

  /// this entity has only one pk
  final String reason;
  final String facilityId;
  final double quantity;
  final String productId;
  final DateTime lastModifiedDate;
  final double estimatedBudget;
  final String description;
  final DateTime requiredByDate;
  final DateTime requirementStartDate;
  final String requirementTypeId;
  final String useCase;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String statusId;
  final String fixedAssetId;
  final String requirementId; // pk
  final String createdByUserLogin;
  final String deliverableId;
  Requirement({entityId,
    this.reason, this.facilityId, this.quantity, this.productId, this.lastModifiedDate, this.estimatedBudget, this.description, this.requiredByDate, this.requirementStartDate, this.requirementTypeId, this.useCase, this.lastModifiedByUserLogin, this.createdDate, this.statusId, this.fixedAssetId, @required this.requirementId, this.createdByUserLogin, this.deliverableId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Requirement { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reason':reason, 'facilityId':facilityId, 'quantity':quantity, 'productId':productId, 'lastModifiedDate':lastModifiedDate, 'estimatedBudget':estimatedBudget, 'description':description, 'requiredByDate':requiredByDate, 'requirementStartDate':requirementStartDate, 'requirementTypeId':requirementTypeId, 'useCase':useCase, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'requirementId':requirementId, 'createdByUserLogin':createdByUserLogin, 'deliverableId':deliverableId};
  }

}

/// Entity RequirementAttribute, Requirement Attribute
class RequirementAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String requirementId; // pk
  final String attrName; // pk
  RequirementAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.requirementId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'requirementId':requirementId, 'attrName':attrName};
  }

}

/// Entity RequirementBudgetAllocation, Requirement Budget Allocation
class RequirementBudgetAllocation extends EntityBase {

  final double amount;
  final String budgetItemSeqId; // pk
  final String budgetId; // pk
  final String requirementId; // pk
  RequirementBudgetAllocation({entityId,
    this.amount, @required this.budgetItemSeqId, @required this.budgetId, @required this.requirementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementBudgetAllocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'requirementId':requirementId};
  }

}

/// Entity RequirementCustRequest, Requirement Customer Request
class RequirementCustRequest extends EntityBase {

  final String custRequestId; // pk
  final String requirementId; // pk
  final String custRequestItemSeqId; // pk
  RequirementCustRequest({entityId,
    @required this.custRequestId, @required this.requirementId, @required this.custRequestItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementCustRequest { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestId':custRequestId, 'requirementId':requirementId, 'custRequestItemSeqId':custRequestItemSeqId};
  }

}

/// Entity RequirementRole, Requirement Role
class RequirementRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String requirementId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  RequirementRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.requirementId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'requirementId':requirementId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity RequirementStatus, Requirement Status
class RequirementStatus extends EntityBase {

  final DateTime statusDate;
  final String statusId; // pk
  final String requirementId; // pk
  final String changeByUserLoginId;
  RequirementStatus({entityId,
    this.statusDate, @required this.statusId, @required this.requirementId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'requirementId':requirementId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity RequirementType, Requirement Type
class RequirementType extends EntityBase {

  /// this entity has only one pk
  final String requirementTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  RequirementType({entityId,
    @required this.requirementTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'requirementTypeId':requirementTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity RequirementTypeAttr, Requirement Type Attribute
class RequirementTypeAttr extends EntityBase {

  final String requirementTypeId; // pk
  final String description;
  final String attrName; // pk
  RequirementTypeAttr({entityId,
    @required this.requirementTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'requirementTypeId':requirementTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity WorkReqFulfType, Work Requirement Fulfillment Type
class WorkReqFulfType extends EntityBase {

  /// this entity has only one pk
  final String workReqFulfTypeId; // pk
  final String description;
  WorkReqFulfType({entityId,
    @required this.workReqFulfTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkReqFulfType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workReqFulfTypeId':workReqFulfTypeId, 'description':description};
  }

}

/// Entity WorkRequirementFulfillment, Work Requirement Fulfillment
class WorkRequirementFulfillment extends EntityBase {

  final String workEffortId; // pk
  final String workReqFulfTypeId;
  final String requirementId; // pk
  WorkRequirementFulfillment({entityId,
    @required this.workEffortId, this.workReqFulfTypeId, @required this.requirementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkRequirementFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'workReqFulfTypeId':workReqFulfTypeId, 'requirementId':requirementId};
  }

}