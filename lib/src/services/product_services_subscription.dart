import 'package:sagas_meta/src/models/product_subscription.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesSubscription{
  final SrvClient client;
  ProductServicesSubscription(this.client);

  /**
   * Create a ProductSubscriptionResource Record - ProductSubscriptionResource
   *
   * Requires productId, subscriptionResourceId
   * Returns 
   */
  Future<OfResult> createProductSubscriptionResource(ProductSubscriptionResource ent, ) =>
      client.invoke('createProductSubscriptionResource', ent, {  });

  /**
   * Create a Subscription Record - Subscription
   *
   * Requires 
   * Returns subscriptionId[String]
   */
  Future<OfResult> createSubscription(Subscription ent, ) =>
      client.invoke('createSubscription', ent, {  });

  /**
   * Create a SubscriptionActivity - SubscriptionActivity
   *
   * Requires 
   * Returns subscriptionActivityId[String]
   */
  Future<OfResult> createSubscriptionActivity(SubscriptionActivity ent, ) =>
      client.invoke('createSubscriptionActivity', ent, {  });

  /**
   * Create a SubscriptionAttribute - SubscriptionAttribute
   *
   * Requires subscriptionId, attrName
   * Returns subscriptionId[String], attrName[String]
   */
  Future<OfResult> createSubscriptionAttribute(SubscriptionAttribute ent, ) =>
      client.invoke('createSubscriptionAttribute', ent, {  });

  /**
   * Create a Subscription Communication Event - SubscriptionCommEvent
   *
   * Requires subscriptionId, communicationEventId
   * Returns 
   */
  Future<OfResult> createSubscriptionCommEvent(SubscriptionCommEvent ent, ) =>
      client.invoke('createSubscriptionCommEvent', ent, {  });

  /**
   * Create a SubscriptionResource Record - SubscriptionResource
   *
   * Requires 
   * Returns subscriptionResourceId[String]
   */
  Future<OfResult> createSubscriptionResource(SubscriptionResource ent, ) =>
      client.invoke('createSubscriptionResource', ent, {  });

  /**
   * Create a SubscriptionType - SubscriptionType
   *
   * Requires 
   * Returns subscriptionTypeId[String]
   */
  Future<OfResult> createSubscriptionType(SubscriptionType ent, ) =>
      client.invoke('createSubscriptionType', ent, {  });

  /**
   * Create a SubscriptionTypeAttr - SubscriptionTypeAttr
   *
   * Requires subscriptionTypeId, attrName
   * Returns subscriptionTypeId[String], attrName[String]
   */
  Future<OfResult> createSubscriptionTypeAttr(SubscriptionTypeAttr ent, ) =>
      client.invoke('createSubscriptionTypeAttr', ent, {  });

  /**
   * Delete a ProductSubscriptionResource Record - ProductSubscriptionResource
   *
   * Requires productId, subscriptionResourceId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductSubscriptionResource(ProductSubscriptionResource ent, ) =>
      client.invoke('deleteProductSubscriptionResource', ent, {  });

  /**
   * Delete a SubscriptionActivity - SubscriptionActivity
   *
   * Requires subscriptionActivityId
   * Returns 
   */
  Future<OfResult> deleteSubscriptionActivity(SubscriptionActivity ent, ) =>
      client.invoke('deleteSubscriptionActivity', ent, {  });

  /**
   * Delete a SubscriptionAttribute - SubscriptionAttribute
   *
   * Requires subscriptionId, attrName
   * Returns 
   */
  Future<OfResult> deleteSubscriptionAttribute(SubscriptionAttribute ent, ) =>
      client.invoke('deleteSubscriptionAttribute', ent, {  });

  /**
   * Delete a SubscriptionType - SubscriptionType
   *
   * Requires subscriptionTypeId
   * Returns 
   */
  Future<OfResult> deleteSubscriptionType(SubscriptionType ent, ) =>
      client.invoke('deleteSubscriptionType', ent, {  });

  /**
   * Delete a SubscriptionTypeAttr - SubscriptionTypeAttr
   *
   * Requires subscriptionTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteSubscriptionTypeAttr(SubscriptionTypeAttr ent, ) =>
      client.invoke('deleteSubscriptionTypeAttr', ent, {  });

  /**
   * Retrieve a single Subscription Entity Record - Subscription
   *
   * Requires subscriptionId
   * Returns subscriptionId[String], subscription[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getSubscriptionEnt(Subscription ent, ) =>
      client.invoke('getSubscriptionEnt', ent, {  });

  /**
   * Check if a particular party has at this moment a subscription - Subscription
   *
   * Requires partyId, partyId
   * Returns isSubscribed[Boolean], subscriptionId[String]
   */
  Future<OfResult> isSubscribed(Subscription ent, {String filterByDate}) =>
      client.invoke('isSubscribed', ent, { 'filterByDate': filterByDate });

  /**
   * Creates or updates Subscription record - 
   *
   * Requires partyId, subscriptionResourceId, useTimeUomId, useTime
   * Returns subscriptionId[String]
   */
  Future<OfResult> processExtendSubscription({@required String partyId, @required String subscriptionResourceId, String productId, String orderId, String orderItemSeqId, String inventoryItemId, String useRoleTypeId, @required String useTimeUomId, @required int useTime, String automaticExtend, int canclAutmExtTime, String canclAutmExtTimeUomId, String alwaysCreateNewRecord, int gracePeriodOnExpiry, String gracePeriodOnExpiryUomId}) =>
      client.invoke('processExtendSubscription', null, { 'partyId': partyId, 'subscriptionResourceId': subscriptionResourceId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'useRoleTypeId': useRoleTypeId, 'useTimeUomId': useTimeUomId, 'useTime': useTime, 'automaticExtend': automaticExtend, 'canclAutmExtTime': canclAutmExtTime, 'canclAutmExtTimeUomId': canclAutmExtTimeUomId, 'alwaysCreateNewRecord': alwaysCreateNewRecord, 'gracePeriodOnExpiry': gracePeriodOnExpiry, 'gracePeriodOnExpiryUomId': gracePeriodOnExpiryUomId });

  /**
   * Creates or updates Subscription record - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> processExtendSubscriptionByOrder({@required String orderId}) =>
      client.invoke('processExtendSubscriptionByOrder', null, { 'orderId': orderId });

  /**
   * Creates or updates Subscription record - 
   *
   * Requires partyId, productId, quantity
   * Returns 
   */
  Future<OfResult> processExtendSubscriptionByProduct({@required String partyId, @required String productId, String orderId, String orderItemSeqId, String inventoryItemId, DateTime orderCreatedDate, @required int quantity}) =>
      client.invoke('processExtendSubscriptionByProduct', null, { 'partyId': partyId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'orderCreatedDate': orderCreatedDate, 'quantity': quantity });

  /**
   * Remove a Subscription Communication Event - SubscriptionCommEvent
   *
   * Requires subscriptionId, communicationEventId
   * Returns 
   */
  Future<OfResult> removeSubscriptionCommEvent(SubscriptionCommEvent ent, ) =>
      client.invoke('removeSubscriptionCommEvent', ent, {  });

  /**
   * A service designed to be automatically run by job scheduler to trigger another service to run for each subscription which has expired.
            This is done by looking for all subscriptions for which thruDate and gracePeriodOnExpiry are expired and where the automaticExtend flag is set to "N".
            The service to run is found in SubscriptionResource.ServiceNameOnExpiry (by default OOTB: runSubscriptionExpired, see below) - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> runServiceOnSubscriptionExpiry() =>
      client.invoke('runServiceOnSubscriptionExpiry', null, {  });

  /**
   * A dummy service to test subscription expiration, expected to change depending upon the specific service logic that providers will write. 
            See https://issues.apache.org/jira/browse/OFBIZ-5333 for more information - 
   *
   * Requires subscriptionId
   * Returns 
   */
  Future<OfResult> runSubscriptionExpired({@required String subscriptionId}) =>
      client.invoke('runSubscriptionExpired', null, { 'subscriptionId': subscriptionId });

  /**
   * Subscription Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> subscriptionPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('subscriptionPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Update a ProductSubscriptionResource Record - ProductSubscriptionResource
   *
   * Requires productId, subscriptionResourceId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductSubscriptionResource(ProductSubscriptionResource ent, ) =>
      client.invoke('updateProductSubscriptionResource', ent, {  });

  /**
   * Update a Subscription Record - Subscription
   *
   * Requires subscriptionId
   * Returns 
   */
  Future<OfResult> updateSubscription(Subscription ent, ) =>
      client.invoke('updateSubscription', ent, {  });

  /**
   * Update a SubscriptionActivity - SubscriptionActivity
   *
   * Requires subscriptionActivityId
   * Returns 
   */
  Future<OfResult> updateSubscriptionActivity(SubscriptionActivity ent, ) =>
      client.invoke('updateSubscriptionActivity', ent, {  });

  /**
   * Create (when not exist) or update (when exist) a Subscription attribute - SubscriptionAttribute
   *
   * Requires subscriptionId, attrName
   * Returns subscriptionId[String]
   */
  Future<OfResult> updateSubscriptionAttribute(SubscriptionAttribute ent, ) =>
      client.invoke('updateSubscriptionAttribute', ent, {  });

  /**
   * Update a SubscriptionResource Record - SubscriptionResource
   *
   * Requires subscriptionResourceId
   * Returns 
   */
  Future<OfResult> updateSubscriptionResource(SubscriptionResource ent, ) =>
      client.invoke('updateSubscriptionResource', ent, {  });

  /**
   * Update a SubscriptionType - SubscriptionType
   *
   * Requires subscriptionTypeId
   * Returns 
   */
  Future<OfResult> updateSubscriptionType(SubscriptionType ent, ) =>
      client.invoke('updateSubscriptionType', ent, {  });

  /**
   * Update a SubscriptionTypeAttr - SubscriptionTypeAttr
   *
   * Requires subscriptionTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateSubscriptionTypeAttr(SubscriptionTypeAttr ent, ) =>
      client.invoke('updateSubscriptionTypeAttr', ent, {  });

}