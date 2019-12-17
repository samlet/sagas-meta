import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CustomTimePeriod, CustomTimePeriod
class CustomTimePeriod extends EntityBase {

  /// this entity has only one pk
  final int periodNum;
  final String periodTypeId;
  final String periodName;
  final String parentPeriodId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String isClosed;
  final String organizationPartyId;
  final String customTimePeriodId; // pk
  CustomTimePeriod({entityId,
    this.periodNum, this.periodTypeId, this.periodName, this.parentPeriodId, this.thruDate, this.fromDate, this.isClosed, this.organizationPartyId, @required this.customTimePeriodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustomTimePeriod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'periodNum':periodNum, 'periodTypeId':periodTypeId, 'periodName':periodName, 'parentPeriodId':parentPeriodId, 'thruDate':thruDate, 'fromDate':fromDate, 'isClosed':isClosed, 'organizationPartyId':organizationPartyId, 'customTimePeriodId':customTimePeriodId};
  }

}

/// Entity PeriodType, Period Type
class PeriodType extends EntityBase {

  /// this entity has only one pk
  final String periodTypeId; // pk
  final String description;
  final int periodLength;
  final String uomId;
  PeriodType({entityId,
    @required this.periodTypeId, this.description, this.periodLength, this.uomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PeriodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'periodTypeId':periodTypeId, 'description':description, 'periodLength':periodLength, 'uomId':uomId};
  }

}