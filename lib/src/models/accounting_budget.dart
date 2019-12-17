import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Budget, Budget
class Budget extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String budgetTypeId;
  final String budgetId; // pk
  final String customTimePeriodId;
  Budget({entityId,
    this.comments, this.budgetTypeId, @required this.budgetId, this.customTimePeriodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Budget { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'budgetTypeId':budgetTypeId, 'budgetId':budgetId, 'customTimePeriodId':customTimePeriodId};
  }

}

/// Entity BudgetAttribute, Budget Attribute
class BudgetAttribute extends EntityBase {

  final String attrDescription;
  final String budgetId; // pk
  final String attrValue;
  final String attrName; // pk
  BudgetAttribute({entityId,
    this.attrDescription, @required this.budgetId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'budgetId':budgetId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity BudgetItem, Budget Item
class BudgetItem extends EntityBase {

  final double amount;
  final String purpose;
  final String budgetItemSeqId; // pk
  final String budgetId; // pk
  final String budgetItemTypeId;
  final String justification;
  BudgetItem({entityId,
    this.amount, this.purpose, @required this.budgetItemSeqId, @required this.budgetId, this.budgetItemTypeId, this.justification,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'purpose':purpose, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'budgetItemTypeId':budgetItemTypeId, 'justification':justification};
  }

}

/// Entity BudgetItemAttribute, Budget Item Attribute
class BudgetItemAttribute extends EntityBase {

  final String attrDescription;
  final String budgetItemSeqId; // pk
  final String budgetId; // pk
  final String attrValue;
  final String attrName; // pk
  BudgetItemAttribute({entityId,
    this.attrDescription, @required this.budgetItemSeqId, @required this.budgetId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetItemAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity BudgetItemType, Budget Item Type
class BudgetItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String budgetItemTypeId; // pk
  BudgetItemType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.budgetItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'budgetItemTypeId':budgetItemTypeId};
  }

}

/// Entity BudgetItemTypeAttr, Budget Item Type Attribute
class BudgetItemTypeAttr extends EntityBase {

  final String description;
  final String budgetItemTypeId; // pk
  final String attrName; // pk
  BudgetItemTypeAttr({entityId,
    this.description, @required this.budgetItemTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetItemTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'budgetItemTypeId':budgetItemTypeId, 'attrName':attrName};
  }

}

/// Entity BudgetReview, Budget Review
class BudgetReview extends EntityBase {

  final DateTime reviewDate;
  final String budgetReviewResultTypeId; // pk
  final String budgetId; // pk
  final String partyId; // pk
  final String budgetReviewId; // pk
  BudgetReview({entityId,
    this.reviewDate, @required this.budgetReviewResultTypeId, @required this.budgetId, @required this.partyId, @required this.budgetReviewId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetReview { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reviewDate':reviewDate, 'budgetReviewResultTypeId':budgetReviewResultTypeId, 'budgetId':budgetId, 'partyId':partyId, 'budgetReviewId':budgetReviewId};
  }

}

/// Entity BudgetReviewResultType, Budget Review Result Type
class BudgetReviewResultType extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String budgetReviewResultTypeId; // pk
  final String description;
  BudgetReviewResultType({entityId,
    this.comments, @required this.budgetReviewResultTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetReviewResultType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'budgetReviewResultTypeId':budgetReviewResultTypeId, 'description':description};
  }

}

/// Entity BudgetRevision, Budget Revision
class BudgetRevision extends EntityBase {

  final String revisionSeqId; // pk
  final DateTime dateRevised;
  final String budgetId; // pk
  BudgetRevision({entityId,
    @required this.revisionSeqId, this.dateRevised, @required this.budgetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetRevision { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'revisionSeqId':revisionSeqId, 'dateRevised':dateRevised, 'budgetId':budgetId};
  }

}

/// Entity BudgetRevisionImpact, Budget Revision Impact
class BudgetRevisionImpact extends EntityBase {

  final String addDeleteFlag;
  final String revisionReason;
  final String revisionSeqId; // pk
  final String budgetItemSeqId; // pk
  final String budgetId; // pk
  final double revisedAmount;
  BudgetRevisionImpact({entityId,
    this.addDeleteFlag, this.revisionReason, @required this.revisionSeqId, @required this.budgetItemSeqId, @required this.budgetId, this.revisedAmount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetRevisionImpact { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'addDeleteFlag':addDeleteFlag, 'revisionReason':revisionReason, 'revisionSeqId':revisionSeqId, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'revisedAmount':revisedAmount};
  }

}

/// Entity BudgetRole, Budget Role
class BudgetRole extends EntityBase {

  final String roleTypeId; // pk
  final String budgetId; // pk
  final String partyId; // pk
  BudgetRole({entityId,
    @required this.roleTypeId, @required this.budgetId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'budgetId':budgetId, 'partyId':partyId};
  }

}

/// Entity BudgetScenario, Budget Scenario
class BudgetScenario extends EntityBase {

  /// this entity has only one pk
  final String budgetScenarioId; // pk
  final String description;
  BudgetScenario({entityId,
    @required this.budgetScenarioId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetScenario { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'budgetScenarioId':budgetScenarioId, 'description':description};
  }

}

/// Entity BudgetScenarioApplication, Budget Scenario Application
class BudgetScenarioApplication extends EntityBase {

  final double amountChange;
  final double percentageChange;
  final String budgetScenarioApplicId; // pk
  final String budgetScenarioId; // pk
  final String budgetItemSeqId;
  final String budgetId;
  BudgetScenarioApplication({entityId,
    this.amountChange, this.percentageChange, @required this.budgetScenarioApplicId, @required this.budgetScenarioId, this.budgetItemSeqId, this.budgetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetScenarioApplication { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amountChange':amountChange, 'percentageChange':percentageChange, 'budgetScenarioApplicId':budgetScenarioApplicId, 'budgetScenarioId':budgetScenarioId, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId};
  }

}

/// Entity BudgetScenarioRule, Budget Scenario Rule
class BudgetScenarioRule extends EntityBase {

  final double amountChange;
  final double percentageChange;
  final String budgetScenarioId; // pk
  final String budgetItemTypeId; // pk
  BudgetScenarioRule({entityId,
    this.amountChange, this.percentageChange, @required this.budgetScenarioId, @required this.budgetItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetScenarioRule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amountChange':amountChange, 'percentageChange':percentageChange, 'budgetScenarioId':budgetScenarioId, 'budgetItemTypeId':budgetItemTypeId};
  }

}

/// Entity BudgetStatus, Budget Status
class BudgetStatus extends EntityBase {

  final DateTime statusDate;
  final String comments;
  final String statusId; // pk
  final String budgetId; // pk
  final String changeByUserLoginId;
  BudgetStatus({entityId,
    this.statusDate, this.comments, @required this.statusId, @required this.budgetId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'comments':comments, 'statusId':statusId, 'budgetId':budgetId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity BudgetType, Budget Type
class BudgetType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String budgetTypeId; // pk
  final String hasTable;
  final String description;
  BudgetType({entityId,
    this.parentTypeId, @required this.budgetTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'budgetTypeId':budgetTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity BudgetTypeAttr, Budget Type Attribute
class BudgetTypeAttr extends EntityBase {

  final String budgetTypeId; // pk
  final String description;
  final String attrName; // pk
  BudgetTypeAttr({entityId,
    @required this.budgetTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BudgetTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'budgetTypeId':budgetTypeId, 'description':description, 'attrName':attrName};
  }

}