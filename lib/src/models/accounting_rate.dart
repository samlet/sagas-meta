import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity PartyRate, Party Rate
class PartyRate extends EntityBase {

  final double percentageUsed;
  final DateTime fromDate; // pk
  final String rateTypeId; // pk
  final String defaultRate;
  final String partyId; // pk
  final DateTime thruDate;
  PartyRate({entityId,
    this.percentageUsed, @required this.fromDate, @required this.rateTypeId, this.defaultRate, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'percentageUsed':percentageUsed, 'fromDate':fromDate, 'rateTypeId':rateTypeId, 'defaultRate':defaultRate, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity RateAmount, RateAmount
class RateAmount extends EntityBase {

  final String workEffortId; // pk
  final String rateTypeId; // pk
  final double rateAmount;
  final String periodTypeId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String emplPositionTypeId; // pk
  final String rateCurrencyUomId; // pk
  final String partyId; // pk
  RateAmount({entityId,
    @required this.workEffortId, @required this.rateTypeId, this.rateAmount, @required this.periodTypeId, this.thruDate, @required this.fromDate, @required this.emplPositionTypeId, @required this.rateCurrencyUomId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RateAmount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'rateTypeId':rateTypeId, 'rateAmount':rateAmount, 'periodTypeId':periodTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'emplPositionTypeId':emplPositionTypeId, 'rateCurrencyUomId':rateCurrencyUomId, 'partyId':partyId};
  }

}

/// Entity RateAmountAndRelations, RateAmountAndRelations
class RateAmountAndRelations extends EntityBase {

  final String workEffortId; // pk
  final String lastName;
  final String rateTypeId; // pk
  final String employeePositionDescription;
  final String periodDescription;
  final double rateAmount;
  final String periodTypeId; // pk
  final String workEffortName;
  final String rateDescription;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String firstName;
  final String groupName;
  final String emplPositionTypeId; // pk
  final String rateCurrencyUomId; // pk
  final String middleName;
  final String partyId; // pk
  RateAmountAndRelations({entityId,
    @required this.workEffortId, this.lastName, @required this.rateTypeId, this.employeePositionDescription, this.periodDescription, this.rateAmount, @required this.periodTypeId, this.workEffortName, this.rateDescription, this.thruDate, @required this.fromDate, this.firstName, this.groupName, @required this.emplPositionTypeId, @required this.rateCurrencyUomId, this.middleName, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RateAmountAndRelations { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'lastName':lastName, 'rateTypeId':rateTypeId, 'employeePositionDescription':employeePositionDescription, 'periodDescription':periodDescription, 'rateAmount':rateAmount, 'periodTypeId':periodTypeId, 'workEffortName':workEffortName, 'rateDescription':rateDescription, 'thruDate':thruDate, 'fromDate':fromDate, 'firstName':firstName, 'groupName':groupName, 'emplPositionTypeId':emplPositionTypeId, 'rateCurrencyUomId':rateCurrencyUomId, 'middleName':middleName, 'partyId':partyId};
  }

}

/// Entity RateType, Rate Type
class RateType extends EntityBase {

  /// this entity has only one pk
  final String rateTypeId; // pk
  final String description;
  RateType({entityId,
    @required this.rateTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RateType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'rateTypeId':rateTypeId, 'description':description};
  }

}