import 'package:sagas_meta/src/models/order_shoppinglist.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesShoppinglist{
  final SrvClient client;
  OrderServicesShoppinglist(this.client);

  /**
   * Adds a shopping list item if one with the same productId does not exist - 
   *
   * Requires shoppingListId, productId
   * Returns productStoreId[String], shoppingListItemSeqId[String]
   */
  Future<OfResult> addDistinctShoppingListItem({@required String shoppingListId, String productStoreId, @required String productId, Decimal quantity, Decimal modifiedPrice, DateTime reservStart, Decimal reservLength, Decimal reservPersons, Decimal quantityPurchased, String configId}) =>
      client.invoke('addDistinctShoppingListItem', null, { 'shoppingListId': shoppingListId, 'productStoreId': productStoreId, 'productId': productId, 'quantity': quantity, 'modifiedPrice': modifiedPrice, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'quantityPurchased': quantityPurchased, 'configId': configId });

  /**
   * Add suggestions to a shopping list - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> addSuggestionsToShoppingList({@required String orderId}) =>
      client.invoke('addSuggestionsToShoppingList', null, { 'orderId': orderId });

  /**
   * 
                Automatic delete auto save shopping list for anonymous users that are not updated in last 30 days.
                Default to 30 days unless no configuration is specified.
             - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> autoDeleteAutoSaveShoppingList() =>
      client.invoke('autoDeleteAutoSaveShoppingList', null, {  });

  /**
   * Remove a shopping list entity - 
   *
   * Requires shoppingListId, prodCatalogId, webSiteId
   * Returns totalPrice[BigDecimal]
   */
  Future<OfResult> calculateShoppingListDeepTotalPrice({@required String shoppingListId, @required String prodCatalogId, @required String webSiteId, String partyId, String productStoreId, String productStoreGroupId, Decimal quantity, String currencyUomId, Map<String,dynamic> autoUserLogin}) =>
      client.invoke('calculateShoppingListDeepTotalPrice', null, { 'shoppingListId': shoppingListId, 'prodCatalogId': prodCatalogId, 'webSiteId': webSiteId, 'partyId': partyId, 'productStoreId': productStoreId, 'productStoreGroupId': productStoreGroupId, 'quantity': quantity, 'currencyUomId': currencyUomId, 'autoUserLogin': autoUserLogin });

  /**
   * Checks security on a ShoppingListItem - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> checkShoppingListItemSecurity({String partyId, String shoppingListId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('checkShoppingListItemSecurity', null, { 'partyId': partyId, 'shoppingListId': shoppingListId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Checks security on a ShoppingList - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> checkShoppingListSecurity({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('checkShoppingListSecurity', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Create a shopping list entity - 
   *
   * Requires 
   * Returns shoppingListId[String], recurrenceInfoId[String]
   */
  Future<OfResult> createShoppingList({DateTime startDateTime, DateTime endDateTime, int frequency, int intervalNumber, String recurrenceInfoId, String shoppingListTypeId, String parentShoppingListId, String productStoreId, String visitorId, String partyId, String listName, String description, String isPublic, String isActive, String currencyUom, String shipmentMethodTypeId, String carrierPartyId, String carrierRoleTypeId, String contactMechId, String paymentMethodId, DateTime lastOrderedDate, DateTime lastAdminModified, String productPromoCodeId, String shippingMethodString}) =>
      client.invoke('createShoppingList', null, { 'startDateTime': startDateTime, 'endDateTime': endDateTime, 'frequency': frequency, 'intervalNumber': intervalNumber, 'recurrenceInfoId': recurrenceInfoId, 'shoppingListTypeId': shoppingListTypeId, 'parentShoppingListId': parentShoppingListId, 'productStoreId': productStoreId, 'visitorId': visitorId, 'partyId': partyId, 'listName': listName, 'description': description, 'isPublic': isPublic, 'isActive': isActive, 'currencyUom': currencyUom, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'lastOrderedDate': lastOrderedDate, 'lastAdminModified': lastAdminModified, 'productPromoCodeId': productPromoCodeId, 'shippingMethodString': shippingMethodString });

  /**
   * Create a shopping list item - 
   *
   * Requires productId
   * Returns productStoreId[String], shoppingListItemSeqId[String]
   */
  Future<OfResult> createShoppingListItem({String shoppingListId, String productStoreId, @required String productId, Decimal quantity, Decimal modifiedPrice, DateTime reservStart, Decimal reservLength, Decimal reservPersons, Decimal quantityPurchased, String configId}) =>
      client.invoke('createShoppingListItem', null, { 'shoppingListId': shoppingListId, 'productStoreId': productStoreId, 'productId': productId, 'quantity': quantity, 'modifiedPrice': modifiedPrice, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'quantityPurchased': quantityPurchased, 'configId': configId });

  /**
   * Create a ShoppingListItemSurvey Record - ShoppingListItemSurvey
   *
   * Requires shoppingListId, shoppingListItemSeqId, surveyResponseId
   * Returns 
   */
  Future<OfResult> createShoppingListItemSurvey(ShoppingListItemSurvey ent, ) =>
      client.invoke('createShoppingListItemSurvey', ent, {  });

  /**
   * Creates Recurrence Info For Auto-Reorder Lists - 
   *
   * Requires 
   * Returns recurrenceInfoId[String]
   */
  Future<OfResult> createShoppingListRecurrence({DateTime startDateTime, DateTime endDateTime, int frequency, int intervalNumber}) =>
      client.invoke('createShoppingListRecurrence', null, { 'startDateTime': startDateTime, 'endDateTime': endDateTime, 'frequency': frequency, 'intervalNumber': intervalNumber });

  /**
   * Create a ShoppingListType - ShoppingListType
   *
   * Requires shoppingListTypeId
   * Returns 
   */
  Future<OfResult> createShoppingListType(ShoppingListType ent, ) =>
      client.invoke('createShoppingListType', ent, {  });

  /**
   * Delete a ShoppingListItemSurvey Record - ShoppingListItemSurvey
   *
   * Requires shoppingListId, shoppingListItemSeqId, surveyResponseId
   * Returns 
   */
  Future<OfResult> deleteShoppingListItemSurvey(ShoppingListItemSurvey ent, ) =>
      client.invoke('deleteShoppingListItemSurvey', ent, {  });

  /**
   * Delete a ShoppingListType - ShoppingListType
   *
   * Requires shoppingListTypeId
   * Returns 
   */
  Future<OfResult> deleteShoppingListType(ShoppingListType ent, ) =>
      client.invoke('deleteShoppingListType', ent, {  });

  /**
   * Create/Update a shopping list from an order - 
   *
   * Requires orderId
   * Returns shoppingListId[String], recurrenceInfoId[String]
   */
  Future<OfResult> makeShoppingListFromOrder({String shoppingListTypeId, String shoppingListId, @required String orderId, String partyId, DateTime startDateTime, DateTime endDateTime, int frequency, int intervalNumber}) =>
      client.invoke('makeShoppingListFromOrder', null, { 'shoppingListTypeId': shoppingListTypeId, 'shoppingListId': shoppingListId, 'orderId': orderId, 'partyId': partyId, 'startDateTime': startDateTime, 'endDateTime': endDateTime, 'frequency': frequency, 'intervalNumber': intervalNumber });

  /**
   * Remove a shopping list entity - 
   *
   * Requires shoppingListId
   * Returns 
   */
  Future<OfResult> removeShoppingList({@required String shoppingListId}) =>
      client.invoke('removeShoppingList', null, { 'shoppingListId': shoppingListId });

  /**
   * Remove a shopping list item - 
   *
   * Requires shoppingListId, shoppingListItemSeqId
   * Returns 
   */
  Future<OfResult> removeShoppingListItem({@required String shoppingListId, @required String shoppingListItemSeqId}) =>
      client.invoke('removeShoppingListItem', null, { 'shoppingListId': shoppingListId, 'shoppingListItemSeqId': shoppingListItemSeqId });

  /**
   * A service designed to be automatically run by job scheduler to create orders from auto-order shopping lists.
            This is done by looking for all auto-order shopping lists which are active
            comparing the lastOrderedDate and the defined recurrenceInfo with the time when the service is run. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> runShoppingListAutoReorder() =>
      client.invoke('runShoppingListAutoReorder', null, {  });

  /**
   * Shopping List Interface - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> shoppingListInterface({String shoppingListTypeId, String parentShoppingListId, String productStoreId, String visitorId, String partyId, String listName, String description, String isPublic, String isActive, String currencyUom, String shipmentMethodTypeId, String carrierPartyId, String carrierRoleTypeId, String contactMechId, String paymentMethodId, String recurrenceInfoId, DateTime lastOrderedDate, DateTime lastAdminModified, String productPromoCodeId, String shippingMethodString}) =>
      client.invoke('shoppingListInterface', null, { 'shoppingListTypeId': shoppingListTypeId, 'parentShoppingListId': parentShoppingListId, 'productStoreId': productStoreId, 'visitorId': visitorId, 'partyId': partyId, 'listName': listName, 'description': description, 'isPublic': isPublic, 'isActive': isActive, 'currencyUom': currencyUom, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'recurrenceInfoId': recurrenceInfoId, 'lastOrderedDate': lastOrderedDate, 'lastAdminModified': lastAdminModified, 'productPromoCodeId': productPromoCodeId, 'shippingMethodString': shippingMethodString });

  /**
   * Interface of shopping list items - 
   *
   * Requires shoppingListId
   * Returns 
   */
  Future<OfResult> shoppingListItemInterface({@required String shoppingListId, String productId, Decimal quantity, Decimal modifiedPrice, DateTime reservStart, Decimal reservLength, Decimal reservPersons, Decimal quantityPurchased, String configId}) =>
      client.invoke('shoppingListItemInterface', null, { 'shoppingListId': shoppingListId, 'productId': productId, 'quantity': quantity, 'modifiedPrice': modifiedPrice, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'quantityPurchased': quantityPurchased, 'configId': configId });

  /**
   * Splits the shipping method string - 
   *
   * Requires 
   * Returns shipmentMethodTypeId[String], carrierPartyId[String]
   */
  Future<OfResult> splitShipmentMethodString({String shippingMethodString}) =>
      client.invoke('splitShipmentMethodString', null, { 'shippingMethodString': shippingMethodString });

  /**
   * Update a shopping list entity - 
   *
   * Requires shoppingListId
   * Returns recurrenceInfoId[String]
   */
  Future<OfResult> updateShoppingList({@required String shoppingListId, DateTime startDateTime, DateTime endDateTime, int frequency, int intervalNumber, String recurrenceInfoId, String shoppingListTypeId, String parentShoppingListId, String productStoreId, String visitorId, String partyId, String listName, String description, String isPublic, String isActive, String currencyUom, String shipmentMethodTypeId, String carrierPartyId, String carrierRoleTypeId, String contactMechId, String paymentMethodId, DateTime lastOrderedDate, DateTime lastAdminModified, String productPromoCodeId, String shippingMethodString}) =>
      client.invoke('updateShoppingList', null, { 'shoppingListId': shoppingListId, 'startDateTime': startDateTime, 'endDateTime': endDateTime, 'frequency': frequency, 'intervalNumber': intervalNumber, 'recurrenceInfoId': recurrenceInfoId, 'shoppingListTypeId': shoppingListTypeId, 'parentShoppingListId': parentShoppingListId, 'productStoreId': productStoreId, 'visitorId': visitorId, 'partyId': partyId, 'listName': listName, 'description': description, 'isPublic': isPublic, 'isActive': isActive, 'currencyUom': currencyUom, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'lastOrderedDate': lastOrderedDate, 'lastAdminModified': lastAdminModified, 'productPromoCodeId': productPromoCodeId, 'shippingMethodString': shippingMethodString });

  /**
   * Update a shopping list item - 
   *
   * Requires shoppingListItemSeqId, shoppingListId
   * Returns 
   */
  Future<OfResult> updateShoppingListItem({@required String shoppingListItemSeqId, @required String shoppingListId, String productId, Decimal quantity, Decimal modifiedPrice, DateTime reservStart, Decimal reservLength, Decimal reservPersons, Decimal quantityPurchased, String configId}) =>
      client.invoke('updateShoppingListItem', null, { 'shoppingListItemSeqId': shoppingListItemSeqId, 'shoppingListId': shoppingListId, 'productId': productId, 'quantity': quantity, 'modifiedPrice': modifiedPrice, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'quantityPurchased': quantityPurchased, 'configId': configId });

  /**
   * Update a ShoppingListType - ShoppingListType
   *
   * Requires shoppingListTypeId
   * Returns 
   */
  Future<OfResult> updateShoppingListType(ShoppingListType ent, ) =>
      client.invoke('updateShoppingListType', ent, {  });

}