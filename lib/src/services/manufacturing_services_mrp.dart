import 'package:sagas_meta/src/models/manufacturing_mrp.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesMrp{
  final SrvClient client;
  ManufacturingServicesMrp(this.client);

  /**
   * create an MrpEvent - 
   *
   * Requires mrpId, productId, eventDate, mrpEventTypeId, quantity
   * Returns 
   */
  Future<OfResult> createMrpEvent({@required String mrpId, @required String productId, @required DateTime eventDate, @required String mrpEventTypeId, @required Decimal quantity, String facilityId, String eventName}) =>
      client.invoke('createMrpEvent', null, { 'mrpId': mrpId, 'productId': productId, 'eventDate': eventDate, 'mrpEventTypeId': mrpEventTypeId, 'quantity': quantity, 'facilityId': facilityId, 'eventName': eventName });

  /**
   * Create a MrpEventType record - MrpEventType
   *
   * Requires 
   * Returns mrpEventTypeId[String]
   */
  Future<OfResult> createMrpEventType(MrpEventType ent, ) =>
      client.invoke('createMrpEventType', ent, {  });

  /**
   * Delete a MrpEventType record - MrpEventType
   *
   * Requires mrpEventTypeId
   * Returns 
   */
  Future<OfResult> deleteMrpEventType(MrpEventType ent, ) =>
      client.invoke('deleteMrpEventType', ent, {  });

  /**
   * Performs a run of Mrp - 
   *
   * Requires 
   * Returns msgResult[List]
   */
  Future<OfResult> executeMrp({String facilityGroupId, String facilityId, String mrpName, int defaultYearsOffset}) =>
      client.invoke('executeMrp', null, { 'facilityGroupId': facilityGroupId, 'facilityId': facilityId, 'mrpName': mrpName, 'defaultYearsOffset': defaultYearsOffset });

  /**
   * Find the quantity on hand of products for the MRP - 
   *
   * Requires productId
   * Returns quantityOnHandTotal[BigDecimal]
   */
  Future<OfResult> findProductMrpQoh({@required String productId}) =>
      client.invoke('findProductMrpQoh', null, { 'productId': productId });

  /**
   * Initialize data for the MRP - 
   *
   * Requires mrpId, facilityId, manufacturingFacilityId, reInitialize
   * Returns 
   */
  Future<OfResult> initMrpEvents({@required String mrpId, @required String facilityId, @required String manufacturingFacilityId, @required bool reInitialize, int defaultYearsOffset}) =>
      client.invoke('initMrpEvents', null, { 'mrpId': mrpId, 'facilityId': facilityId, 'manufacturingFacilityId': manufacturingFacilityId, 'reInitialize': reInitialize, 'defaultYearsOffset': defaultYearsOffset });

  /**
   * Set estimated ship dates for order items based on outstanding production runs - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> setEstimatedDeliveryDates() =>
      client.invoke('setEstimatedDeliveryDates', null, {  });

  /**
   * Update a MrpEventType record - MrpEventType
   *
   * Requires mrpEventTypeId
   * Returns 
   */
  Future<OfResult> updateMrpEventType(MrpEventType ent, ) =>
      client.invoke('updateMrpEventType', ent, {  });

}