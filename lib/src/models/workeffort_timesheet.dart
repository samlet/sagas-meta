import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity TimeEntry, Time Entry
class TimeEntry extends EntityBase {

  /// this entity has only one pk
  final String workEffortId;
  final String rateTypeId;
  final double hours;
  final String comments;
  final String invoiceItemSeqId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String timesheetId;
  final String timeEntryId; // pk
  final String invoiceId;
  final String partyId;
  TimeEntry({entityId,
    this.workEffortId, this.rateTypeId, this.hours, this.comments, this.invoiceItemSeqId, this.thruDate, this.fromDate, this.timesheetId, @required this.timeEntryId, this.invoiceId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TimeEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'rateTypeId':rateTypeId, 'hours':hours, 'comments':comments, 'invoiceItemSeqId':invoiceItemSeqId, 'thruDate':thruDate, 'fromDate':fromDate, 'timesheetId':timesheetId, 'timeEntryId':timeEntryId, 'invoiceId':invoiceId, 'partyId':partyId};
  }

}

/// Entity Timesheet, Timesheet
class Timesheet extends EntityBase {

  /// this entity has only one pk
  final String timesheetId; // pk
  final DateTime fromDate;
  final String comments;
  final String statusId;
  final String approvedByUserLoginId;
  final String partyId;
  final String clientPartyId;
  final DateTime thruDate;
  Timesheet({entityId,
    @required this.timesheetId, this.fromDate, this.comments, this.statusId, this.approvedByUserLoginId, this.partyId, this.clientPartyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Timesheet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'timesheetId':timesheetId, 'fromDate':fromDate, 'comments':comments, 'statusId':statusId, 'approvedByUserLoginId':approvedByUserLoginId, 'partyId':partyId, 'clientPartyId':clientPartyId, 'thruDate':thruDate};
  }

}

/// Entity TimesheetRole, Timesheet Role
class TimesheetRole extends EntityBase {

  final String timesheetId; // pk
  final String roleTypeId; // pk
  final String partyId; // pk
  TimesheetRole({entityId,
    @required this.timesheetId, @required this.roleTypeId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TimesheetRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'timesheetId':timesheetId, 'roleTypeId':roleTypeId, 'partyId':partyId};
  }

}