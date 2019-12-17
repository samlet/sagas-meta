import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EmplPosition, EmplPosition
class EmplPosition extends EntityBase {

  /// this entity has only one pk
  final DateTime estimatedThruDate;
  final DateTime actualThruDate;
  final String exemptFlag;
  final String temporaryFlag;
  final String fulltimeFlag;
  final String emplPositionId; // pk
  final DateTime actualFromDate;
  final String budgetItemSeqId;
  final String budgetId;
  final String salaryFlag;
  final String statusId;
  final DateTime estimatedFromDate;
  final String emplPositionTypeId;
  final String partyId;
  EmplPosition({entityId,
    this.estimatedThruDate, this.actualThruDate, this.exemptFlag, this.temporaryFlag, this.fulltimeFlag, @required this.emplPositionId, this.actualFromDate, this.budgetItemSeqId, this.budgetId, this.salaryFlag, this.statusId, this.estimatedFromDate, this.emplPositionTypeId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPosition { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'estimatedThruDate':estimatedThruDate, 'actualThruDate':actualThruDate, 'exemptFlag':exemptFlag, 'temporaryFlag':temporaryFlag, 'fulltimeFlag':fulltimeFlag, 'emplPositionId':emplPositionId, 'actualFromDate':actualFromDate, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'salaryFlag':salaryFlag, 'statusId':statusId, 'estimatedFromDate':estimatedFromDate, 'emplPositionTypeId':emplPositionTypeId, 'partyId':partyId};
  }

}

/// Entity EmplPositionAndFulfillment, EmplPosition Fulfillment
class EmplPositionAndFulfillment extends EntityBase {

  final String employeePartyId; // pk
  final DateTime estimatedThruDate;
  final DateTime actualThruDate;
  final String exemptFlag;
  final String temporaryFlag;
  final String fulltimeFlag;
  final String emplPositionId; // pk
  final DateTime actualFromDate;
  final String budgetItemSeqId;
  final String budgetId;
  final String salaryFlag;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String statusId;
  final DateTime estimatedFromDate;
  final String emplPositionTypeId;
  final String partyId;
  EmplPositionAndFulfillment({entityId,
    @required this.employeePartyId, this.estimatedThruDate, this.actualThruDate, this.exemptFlag, this.temporaryFlag, this.fulltimeFlag, @required this.emplPositionId, this.actualFromDate, this.budgetItemSeqId, this.budgetId, this.salaryFlag, this.thruDate, @required this.fromDate, this.statusId, this.estimatedFromDate, this.emplPositionTypeId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionAndFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'employeePartyId':employeePartyId, 'estimatedThruDate':estimatedThruDate, 'actualThruDate':actualThruDate, 'exemptFlag':exemptFlag, 'temporaryFlag':temporaryFlag, 'fulltimeFlag':fulltimeFlag, 'emplPositionId':emplPositionId, 'actualFromDate':actualFromDate, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId, 'salaryFlag':salaryFlag, 'thruDate':thruDate, 'fromDate':fromDate, 'statusId':statusId, 'estimatedFromDate':estimatedFromDate, 'emplPositionTypeId':emplPositionTypeId, 'partyId':partyId};
  }

}

/// Entity EmplPositionClassType, EmplPosition Classification Type
class EmplPositionClassType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String emplPositionClassTypeId; // pk
  EmplPositionClassType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.emplPositionClassTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionClassType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'emplPositionClassTypeId':emplPositionClassTypeId};
  }

}

/// Entity EmplPositionFulfillment, EmplPosition Fulfillment
class EmplPositionFulfillment extends EntityBase {

  final DateTime fromDate; // pk
  final String comments;
  final String emplPositionId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  EmplPositionFulfillment({entityId,
    @required this.fromDate, this.comments, @required this.emplPositionId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'comments':comments, 'emplPositionId':emplPositionId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity EmplPositionReportingStruct, EmplPosition Reporting Structure
class EmplPositionReportingStruct extends EntityBase {

  final DateTime fromDate; // pk
  final String comments;
  final String emplPositionIdManagedBy; // pk
  final String emplPositionIdReportingTo; // pk
  final String primaryFlag;
  final DateTime thruDate;
  EmplPositionReportingStruct({entityId,
    @required this.fromDate, this.comments, @required this.emplPositionIdManagedBy, @required this.emplPositionIdReportingTo, this.primaryFlag, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionReportingStruct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'comments':comments, 'emplPositionIdManagedBy':emplPositionIdManagedBy, 'emplPositionIdReportingTo':emplPositionIdReportingTo, 'primaryFlag':primaryFlag, 'thruDate':thruDate};
  }

}

/// Entity EmplPositionResponsibility, EmplPosition Responsibility
class EmplPositionResponsibility extends EntityBase {

  final DateTime fromDate; // pk
  final String comments;
  final String responsibilityTypeId; // pk
  final String emplPositionId; // pk
  final DateTime thruDate;
  EmplPositionResponsibility({entityId,
    @required this.fromDate, this.comments, @required this.responsibilityTypeId, @required this.emplPositionId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionResponsibility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'comments':comments, 'responsibilityTypeId':responsibilityTypeId, 'emplPositionId':emplPositionId, 'thruDate':thruDate};
  }

}

/// Entity EmplPositionType, EmplPosition Type
class EmplPositionType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String emplPositionTypeId; // pk
  final String description;
  EmplPositionType({entityId,
    this.parentTypeId, this.hasTable, @required this.emplPositionTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'emplPositionTypeId':emplPositionTypeId, 'description':description};
  }

}

/// Entity EmplPositionTypeClass, EmplPosition Type Class
class EmplPositionTypeClass extends EntityBase {

  final DateTime fromDate; // pk
  final double standardHoursPerWeek;
  final String emplPositionTypeId; // pk
  final String emplPositionClassTypeId; // pk
  final DateTime thruDate;
  EmplPositionTypeClass({entityId,
    @required this.fromDate, this.standardHoursPerWeek, @required this.emplPositionTypeId, @required this.emplPositionClassTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionTypeClass { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'standardHoursPerWeek':standardHoursPerWeek, 'emplPositionTypeId':emplPositionTypeId, 'emplPositionClassTypeId':emplPositionClassTypeId, 'thruDate':thruDate};
  }

}

/// Entity EmplPositionTypeRate, EmplPosition Type Rate
class EmplPositionTypeRate extends EntityBase {

  final DateTime fromDate; // pk
  final String rateTypeId; // pk
  final String emplPositionTypeId; // pk
  final String salaryStepSeqId;
  final String payGradeId;
  final DateTime thruDate;
  EmplPositionTypeRate({entityId,
    @required this.fromDate, @required this.rateTypeId, @required this.emplPositionTypeId, this.salaryStepSeqId, this.payGradeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionTypeRate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'rateTypeId':rateTypeId, 'emplPositionTypeId':emplPositionTypeId, 'salaryStepSeqId':salaryStepSeqId, 'payGradeId':payGradeId, 'thruDate':thruDate};
  }

}

/// Entity EmplPositionTypeRateAndAmount, EmplPosition Type Rate Entity and Rate Amount
class EmplPositionTypeRateAndAmount extends EntityBase {

  final DateTime fromDate; // pk
  final String rateTypeId; // pk
  final DateTime rateAmountThruDate;
  final double rateAmount;
  final DateTime rateAmountFromDate; // pk
  final String periodTypeId; // pk
  final String emplPositionTypeId; // pk
  final String salaryStepSeqId;
  final String rateCurrencyUomId; // pk
  final String payGradeId;
  final DateTime thruDate;
  EmplPositionTypeRateAndAmount({entityId,
    @required this.fromDate, @required this.rateTypeId, this.rateAmountThruDate, this.rateAmount, @required this.rateAmountFromDate, @required this.periodTypeId, @required this.emplPositionTypeId, this.salaryStepSeqId, @required this.rateCurrencyUomId, this.payGradeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionTypeRateAndAmount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'rateTypeId':rateTypeId, 'rateAmountThruDate':rateAmountThruDate, 'rateAmount':rateAmount, 'rateAmountFromDate':rateAmountFromDate, 'periodTypeId':periodTypeId, 'emplPositionTypeId':emplPositionTypeId, 'salaryStepSeqId':salaryStepSeqId, 'rateCurrencyUomId':rateCurrencyUomId, 'payGradeId':payGradeId, 'thruDate':thruDate};
  }

}

/// Entity ValidResponsibility, Valid Responsibility
class ValidResponsibility extends EntityBase {

  final DateTime fromDate; // pk
  final String comments;
  final String responsibilityTypeId; // pk
  final String emplPositionTypeId; // pk
  final DateTime thruDate;
  ValidResponsibility({entityId,
    @required this.fromDate, this.comments, @required this.responsibilityTypeId, @required this.emplPositionTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ValidResponsibility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'comments':comments, 'responsibilityTypeId':responsibilityTypeId, 'emplPositionTypeId':emplPositionTypeId, 'thruDate':thruDate};
  }

}