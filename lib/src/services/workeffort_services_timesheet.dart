import 'package:sagas_meta/src/models/workeffort_timesheet.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class WorkeffortServicesTimesheet{
  final SrvClient client;
  WorkeffortServicesTimesheet(this.client);

  /**
   * Add Timesheet to Invoice - Timesheet
   *
   * Requires timesheetId, invoiceId
   * Returns 
   */
  Future<OfResult> addTimesheetToInvoice(Timesheet ent, {@required String invoiceId}) =>
      client.invoke('addTimesheetToInvoice', ent, { 'invoiceId': invoiceId });

  /**
   * Add Timesheet to Invoice - Timesheet
   *
   * Requires timesheetId, partyIdFrom, partyId
   * Returns invoiceId[String]
   */
  Future<OfResult> addTimesheetToNewInvoice(Timesheet ent, {@required String partyIdFrom}) =>
      client.invoke('addTimesheetToNewInvoice', ent, { 'partyIdFrom': partyIdFrom });

  /**
   * Add WorkEffort Time to existing Invoice, with the option to combine all timeentries with the same rateType into one invoiceItem  - Timesheet
   *
   * Requires workEffortId, invoiceId
   * Returns 
   */
  Future<OfResult> addWorkEffortTimeToInvoice(Timesheet ent, {@required String workEffortId, @required String invoiceId, String combineInvoiceItem}) =>
      client.invoke('addWorkEffortTimeToInvoice', ent, { 'workEffortId': workEffortId, 'invoiceId': invoiceId, 'combineInvoiceItem': combineInvoiceItem });

  /**
   * Add WorkEffort Time to a new Invoice with the option to combine all time entries with the same rateType into one invoiceItem - Timesheet
   *
   * Requires workEffortId, partyIdFrom, partyId
   * Returns invoiceId[String]
   */
  Future<OfResult> addWorkEffortTimeToNewInvoice(Timesheet ent, {@required String workEffortId, @required String partyIdFrom, String combineInvoiceItem}) =>
      client.invoke('addWorkEffortTimeToNewInvoice', ent, { 'workEffortId': workEffortId, 'partyIdFrom': partyIdFrom, 'combineInvoiceItem': combineInvoiceItem });

  /**
   * Creates TimeEntry - TimeEntry
   *
   * Requires 
   * Returns timeEntryId[String]
   */
  Future<OfResult> createTimeEntry(TimeEntry ent, ) =>
      client.invoke('createTimeEntry', ent, {  });

  /**
   * Creates Timesheet - Timesheet
   *
   * Requires 
   * Returns timesheetId[String]
   */
  Future<OfResult> createTimesheet(Timesheet ent, ) =>
      client.invoke('createTimesheet', ent, {  });

  /**
   * Creates Timesheet for this week if no required date specified. - Timesheet
   *
   * Requires 
   * Returns timesheetId[String]
   */
  Future<OfResult> createTimesheetForThisWeek(Timesheet ent, {DateTime requiredDate}) =>
      client.invoke('createTimesheetForThisWeek', ent, { 'requiredDate': requiredDate });

  /**
   * Creates TimesheetRole - TimesheetRole
   *
   * Requires timesheetId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createTimesheetRole(TimesheetRole ent, ) =>
      client.invoke('createTimesheetRole', ent, {  });

  /**
   * Creates Timesheet for multiple Parties in a single shot - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createTimesheets({List<dynamic> partyIdList, String clientPartyId, String fromDate, String thruDate, String comments}) =>
      client.invoke('createTimesheets', null, { 'partyIdList': partyIdList, 'clientPartyId': clientPartyId, 'fromDate': fromDate, 'thruDate': thruDate, 'comments': comments });

  /**
   * Deletes TimeEntry - TimeEntry
   *
   * Requires timeEntryId
   * Returns 
   */
  Future<OfResult> deleteTimeEntry(TimeEntry ent, ) =>
      client.invoke('deleteTimeEntry', ent, {  });

  /**
   * Deletes Timesheet - Timesheet
   *
   * Requires timesheetId
   * Returns 
   */
  Future<OfResult> deleteTimesheet(Timesheet ent, ) =>
      client.invoke('deleteTimesheet', ent, {  });

  /**
   * Deletes TimesheetRole - TimesheetRole
   *
   * Requires timesheetId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteTimesheetRole(TimesheetRole ent, ) =>
      client.invoke('deleteTimesheetRole', ent, {  });

  /**
   * Creates TimeEntry - TimeEntry
   *
   * Requires timeEntryId
   * Returns rateAmount[BigDecimal]
   */
  Future<OfResult> getTimeEntryRate(TimeEntry ent, {String currencyUomId}) =>
      client.invoke('getTimeEntryRate', ent, { 'currencyUomId': currencyUomId });

  /**
   * Deletes TimeEntry - TimeEntry
   *
   * Requires timeEntryId, invoiceId
   * Returns invoiceId[String]
   */
  Future<OfResult> unlinkInvoiceFromTimeEntry(TimeEntry ent, ) =>
      client.invoke('unlinkInvoiceFromTimeEntry', ent, {  });

  /**
   * Updates TimeEntry - TimeEntry
   *
   * Requires timeEntryId
   * Returns 
   */
  Future<OfResult> updateTimeEntry(TimeEntry ent, ) =>
      client.invoke('updateTimeEntry', ent, {  });

  /**
   * Updates Timesheet - Timesheet
   *
   * Requires timesheetId
   * Returns 
   */
  Future<OfResult> updateTimesheet(Timesheet ent, ) =>
      client.invoke('updateTimesheet', ent, {  });

  /**
   * Updates the Timesheet status back to in process to be able to correct errors - Timesheet
   *
   * Requires timesheetId
   * Returns 
   */
  Future<OfResult> updateTimesheetToInProcess(Timesheet ent, ) =>
      client.invoke('updateTimesheetToInProcess', ent, {  });

}