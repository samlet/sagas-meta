import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity TechDataCalendar, Calendar
class TechDataCalendar extends EntityBase {

  /// this entity has only one pk
  final String calendarWeekId;
  final String calendarId; // pk
  final String description;
  TechDataCalendar({entityId,
    this.calendarWeekId, @required this.calendarId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TechDataCalendar { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'calendarWeekId':calendarWeekId, 'calendarId':calendarId, 'description':description};
  }

}

/// Entity TechDataCalendarExcDay, Calendar Exception Day
class TechDataCalendarExcDay extends EntityBase {

  final DateTime exceptionDateStartTime; // pk
  final String calendarId; // pk
  final double exceptionCapacity;
  final double usedCapacity;
  final String description;
  TechDataCalendarExcDay({entityId,
    @required this.exceptionDateStartTime, @required this.calendarId, this.exceptionCapacity, this.usedCapacity, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TechDataCalendarExcDay { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'exceptionDateStartTime':exceptionDateStartTime, 'calendarId':calendarId, 'exceptionCapacity':exceptionCapacity, 'usedCapacity':usedCapacity, 'description':description};
  }

}

/// Entity TechDataCalendarExcWeek, Calendar Exception Week
class TechDataCalendarExcWeek extends EntityBase {

  final String calendarWeekId;
  final DateTime exceptionDateStart; // pk
  final String calendarId; // pk
  final String description;
  TechDataCalendarExcWeek({entityId,
    this.calendarWeekId, @required this.exceptionDateStart, @required this.calendarId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TechDataCalendarExcWeek { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'calendarWeekId':calendarWeekId, 'exceptionDateStart':exceptionDateStart, 'calendarId':calendarId, 'description':description};
  }

}

/// Entity TechDataCalendarWeek, Week definition
class TechDataCalendarWeek extends EntityBase {

  /// this entity has only one pk
  final String calendarWeekId; // pk
  final double sundayCapacity;
  final DateTime wednesdayStartTime;
  final double thursdayCapacity;
  final DateTime tuesdayStartTime;
  final double wednesdayCapacity;
  final DateTime fridayStartTime;
  final String description;
  final double saturdayCapacity;
  final double mondayCapacity;
  final DateTime mondayStartTime;
  final DateTime saturdayStartTime;
  final DateTime thursdayStartTime;
  final DateTime sundayStartTime;
  final double fridayCapacity;
  final double tuesdayCapacity;
  TechDataCalendarWeek({entityId,
    @required this.calendarWeekId, this.sundayCapacity, this.wednesdayStartTime, this.thursdayCapacity, this.tuesdayStartTime, this.wednesdayCapacity, this.fridayStartTime, this.description, this.saturdayCapacity, this.mondayCapacity, this.mondayStartTime, this.saturdayStartTime, this.thursdayStartTime, this.sundayStartTime, this.fridayCapacity, this.tuesdayCapacity,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TechDataCalendarWeek { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'calendarWeekId':calendarWeekId, 'sundayCapacity':sundayCapacity, 'wednesdayStartTime':wednesdayStartTime, 'thursdayCapacity':thursdayCapacity, 'tuesdayStartTime':tuesdayStartTime, 'wednesdayCapacity':wednesdayCapacity, 'fridayStartTime':fridayStartTime, 'description':description, 'saturdayCapacity':saturdayCapacity, 'mondayCapacity':mondayCapacity, 'mondayStartTime':mondayStartTime, 'saturdayStartTime':saturdayStartTime, 'thursdayStartTime':thursdayStartTime, 'sundayStartTime':sundayStartTime, 'fridayCapacity':fridayCapacity, 'tuesdayCapacity':tuesdayCapacity};
  }

}