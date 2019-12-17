import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:sagas_meta/src/models/order_order.dart';
import 'package:sagas_meta/src/models/order_quote.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServices{
  final SrvClient client;
  OrderServices(this.client);

  /**
   * Move order items between ship groups - 
   *
   * Requires orderId, orderItemSeqId, fromGroupIndex, toGroupIndex, quantity
   * Returns 
   */
  Future<OfResult> MoveItemBetweenShipGroups({@required String orderId, @required String orderItemSeqId, @required String fromGroupIndex, @required String toGroupIndex, @required Decimal quantity}) =>
      client.invoke('MoveItemBetweenShipGroups', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'fromGroupIndex': fromGroupIndex, 'toGroupIndex': toGroupIndex, 'quantity': quantity });

  /**
   * Creates a new OrderItemShipGroup with maySplit and isGift filled. - OrderItemShipGroup
   *
   * Requires orderId
   * Returns shipGroupSeqId[String], shipGroupSeqId[String]
   */
  Future<OfResult> addOrderItemShipGroup(OrderItemShipGroup ent, ) =>
      client.invoke('addOrderItemShipGroup', ent, {  });

  /**
   * add Order Item Ship Group Assoc and if order item ship group not exit, create it before - OrderItemShipGroupAssoc
   *
   * Requires orderId, orderItemSeqId
   * Returns shipGroupSeqId[String]
   */
  Future<OfResult> addOrderItemShipGroupAssoc(OrderItemShipGroupAssoc ent, {String shipmentMethodTypeId, String supplierPartyId, String supplierAgreementId, String vendorPartyId, String carrierPartyId, String carrierRoleTypeId, String facilityId, String contactMechId, String telecomContactMechId, String trackingNumber, String shippingInstructions, String maySplit, String giftMessage, String isGift, DateTime shipAfterDate, DateTime shipByDate, DateTime estimatedShipDate, DateTime estimatedDeliveryDate}) =>
      client.invoke('addOrderItemShipGroupAssoc', ent, { 'shipmentMethodTypeId': shipmentMethodTypeId, 'supplierPartyId': supplierPartyId, 'supplierAgreementId': supplierAgreementId, 'vendorPartyId': vendorPartyId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'facilityId': facilityId, 'contactMechId': contactMechId, 'telecomContactMechId': telecomContactMechId, 'trackingNumber': trackingNumber, 'shippingInstructions': shippingInstructions, 'maySplit': maySplit, 'giftMessage': giftMessage, 'isGift': isGift, 'shipAfterDate': shipAfterDate, 'shipByDate': shipByDate, 'estimatedShipDate': estimatedShipDate, 'estimatedDeliveryDate': estimatedDeliveryDate });

  /**
   * Adds a RoleType to an order - 
   *
   * Requires orderId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> addOrderRole({bool removeOld, @required String orderId, @required String partyId, @required String roleTypeId}) =>
      client.invoke('addOrderRole', null, { 'removeOld': removeOld, 'orderId': orderId, 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Add Payment Method to Order.From this servicewe will call the createOrderPaymentPreference service to create OrderPaymentPreference - 
   *
   * Requires orderId, paymentMethodId, maxAmount
   * Returns orderPaymentPreferenceId[String]
   */
  Future<OfResult> addPaymentMethodToOrder({@required String orderId, @required String paymentMethodId, @required Decimal maxAmount}) =>
      client.invoke('addPaymentMethodToOrder', null, { 'orderId': orderId, 'paymentMethodId': paymentMethodId, 'maxAmount': maxAmount });

  /**
   * Batch service which automatically cancels sales order and/or sales order items.
                Sales orders : These will be cancelled if the order status equals CREATED and it has been
                  either 30 days or ProductStore.daysCancelNoPay since the order was created. A value of 0 for
                  ProductStore.daysCancelNoPay means do not auto-cancel.
                Sales order items : This is only for orders on the APPROVED status. Items will be cancelled if the
                  item is flagged with an autoCancelDate and does not have a dontCancelDate and dontCancelUserLogin
                  associated with it, and it is past the autoCancelDate. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> autoCancelOrderItems() =>
      client.invoke('autoCancelOrderItems', null, {  });

  /**
   * Cancels those back orders from suppliers whose cancel back order date (cancelBackOrderDate) has passed the current date - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> cancelAllBackOrders() =>
      client.invoke('cancelAllBackOrders', null, {  });

  /**
   * Cancel an Order Item Quantity. This is equal to cancelOrderItem but no ECAs are attached to this service. - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> cancelOrderItemNoActions({@required String orderId, String orderItemSeqId, String shipGroupSeqId, Decimal cancelQuantity}) =>
      client.invoke('cancelOrderItemNoActions', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'cancelQuantity': cancelQuantity });

  /**
   * Cancels remaining (unreceived) quantities for items of an order. Does not consider received-but-rejected quantities. - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> cancelRemainingPurchaseOrderItems({@required String orderId}) =>
      client.invoke('cancelRemainingPurchaseOrderItems', null, { 'orderId': orderId });

  /**
   * Change the status of an existing order item.  If no orderItemSeqId is specified, the status of all order items will be changed. - 
   *
   * Requires orderId, statusId
   * Returns 
   */
  Future<OfResult> changeOrderItemStatus({@required String orderId, String orderItemSeqId, String fromStatusId, @required String statusId, DateTime statusDateTime, String changeReason}) =>
      client.invoke('changeOrderItemStatus', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'fromStatusId': fromStatusId, 'statusId': statusId, 'statusDateTime': statusDateTime, 'changeReason': changeReason });

  /**
   * Change the payment status of an existing order - 
   *
   * Requires orderPaymentPreferenceId
   * Returns 
   */
  Future<OfResult> changeOrderPaymentStatus({@required String orderPaymentPreferenceId, String changeReason}) =>
      client.invoke('changeOrderPaymentStatus', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId, 'changeReason': changeReason });

  /**
   * Change the status of an existing order - 
   *
   * Requires orderId, statusId
   * Returns oldStatusId[String], orderStatusId[String], orderTypeId[String], needsInventoryIssuance[String], grandTotal[BigDecimal]
   */
  Future<OfResult> changeOrderStatus({@required String orderId, @required String statusId, String setItemStatus, String changeReason}) =>
      client.invoke('changeOrderStatus', null, { 'orderId': orderId, 'statusId': statusId, 'setItemStatus': setItemStatus, 'changeReason': changeReason });

  /**
   * If the order is a sales order, create purchase orders (drop shipments) for each ship group associated to a supplier - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> checkCreateDropShipPurchaseOrders({@required String orderId}) =>
      client.invoke('checkCreateDropShipPurchaseOrders', null, { 'orderId': orderId });

  /**
   * Check an order for digital items and invoice/capture + fulfill the items - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> checkDigitalItemFulfillment({@required String orderId}) =>
      client.invoke('checkDigitalItemFulfillment', null, { 'orderId': orderId });

  /**
   * Check if an Order is on Back Order - 
   *
   * Requires orderId
   * Returns isBackOrder[Boolean]
   */
  Future<OfResult> checkOrderIsOnBackOrder({@required String orderId}) =>
      client.invoke('checkOrderIsOnBackOrder', null, { 'orderId': orderId });

  /**
   * Check the status of all items and cancel/approve/complete the order if we can - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> checkOrderItemStatus({@required String orderId}) =>
      client.invoke('checkOrderItemStatus', null, { 'orderId': orderId });

  /**
   * Check Supplier Related Order Permission - 
   *
   * Requires orderId
   * Returns hasSupplierRelatedPermission[String]
   */
  Future<OfResult> checkSupplierRelatedOrderPermission({@required String orderId, String checkAction, String callingMethodName}) =>
      client.invoke('checkSupplierRelatedOrderPermission', null, { 'orderId': orderId, 'checkAction': checkAction, 'callingMethodName': callingMethodName });

  /**
   * Completes a purchase order by cancelling remaining (unreceived) item quantities and generating new product requirements
            from those quantities - 
   *
   * Requires orderId, facilityId
   * Returns 
   */
  Future<OfResult> completePurchaseOrder({@required String orderId, @required String facilityId}) =>
      client.invoke('completePurchaseOrder', null, { 'orderId': orderId, 'facilityId': facilityId });

  /**
   * count Product Quantity Ordered - 
   *
   * Requires productId, quantity
   * Returns 
   */
  Future<OfResult> countProductQuantityOrdered({@required String productId, @required Decimal quantity}) =>
      client.invoke('countProductQuantityOrdered', null, { 'productId': productId, 'quantity': quantity });

  /**
   * 
            Cycles through all newly created sales orders and creates ProductAssoc records (of type ALSO_BOUGHT) for products 
            that were purchased together.  If a ProductAssoc record already exists then the quantity field is incremented by one.
            Newly created orders are determined by looking for orders that were created after the JobSandbox.startDateTime of the
            previous async execution of this service, alternatively the service can be supplied with a orderEntryFromDateTime 
            parameter which will process all orders placed after that date/time or as a final option processAllOrders can be set
            to true to force a calculation of all orders ever placed with orderEntryFromDateTime being ignored.
         - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createAlsoBoughtProductAssocs({DateTime orderEntryFromDateTime, bool processAllOrders}) =>
      client.invoke('createAlsoBoughtProductAssocs', null, { 'orderEntryFromDateTime': orderEntryFromDateTime, 'processAllOrders': processAllOrders });

  /**
   * 
            Creates ProductAssoc records (of type ALSO_BOUGHT) for products that were purchased together in the Order.  If a ProductAssoc record already exists then the quantity field is incremented by one.  If a variant product has
            been ordered then the association is made to its parent product.
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> createAlsoBoughtProductAssocsForOrder({@required String orderId}) =>
      client.invoke('createAlsoBoughtProductAssocsForOrder', null, { 'orderId': orderId });

  /**
   * Create a Communication Event Order - CommunicationEventOrder
   *
   * Requires orderId, communicationEventId
   * Returns 
   */
  Future<OfResult> createCommunicationEventOrder(CommunicationEventOrder ent, ) =>
      client.invoke('createCommunicationEventOrder', ent, {  });

  /**
   * Creates a new order adjustment record - OrderAdjustment
   *
   * Requires orderAdjustmentTypeId, orderId, orderAdjustmentTypeId, orderId
   * Returns orderAdjustmentId[String]
   */
  Future<OfResult> createOrderAdjustment(OrderAdjustment ent, ) =>
      client.invoke('createOrderAdjustment', ent, {  });

  /**
   * Create a new order adjustment billing record - OrderAdjustmentBilling
   *
   * Requires orderAdjustmentId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> createOrderAdjustmentBilling(OrderAdjustmentBilling ent, ) =>
      client.invoke('createOrderAdjustmentBilling', ent, {  });

  /**
   * Create a OrderAdjustmentTypeAttr - OrderAdjustmentTypeAttr
   *
   * Requires orderAdjustmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createOrderAdjustmentTypeAttr(OrderAdjustmentTypeAttr ent, ) =>
      client.invoke('createOrderAdjustmentTypeAttr', ent, {  });

  /**
   * Create Order Contact Mech - OrderContactMech
   *
   * Requires orderId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> createOrderContactMech(OrderContactMech ent, ) =>
      client.invoke('createOrderContactMech', ent, {  });

  /**
   * Create a OrderContent - OrderContent
   *
   * Requires orderId, orderItemSeqId, contentId, orderContentTypeId, fromDate
   * Returns orderId[String], orderItemSeqId[String], contentId[String], orderContentTypeId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createOrderContent(OrderContent ent, ) =>
      client.invoke('createOrderContent', ent, {  });

  /**
   * Creates a delivery schedule for the specified order - OrderDeliverySchedule
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> createOrderDeliverySchedule(OrderDeliverySchedule ent, ) =>
      client.invoke('createOrderDeliverySchedule', ent, {  });

  /**
   * Create OrderHeader - OrderHeader
   *
   * Requires 
   * Returns orderId[String]
   */
  Future<OfResult> createOrderHeader(OrderHeader ent, ) =>
      client.invoke('createOrderHeader', ent, {  });

  /**
   * Create Order Item Attribute - OrderItemAttribute
   *
   * Requires orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createOrderItemAttribute(OrderItemAttribute ent, ) =>
      client.invoke('createOrderItemAttribute', ent, {  });

  /**
   * Create a new order item billing record - OrderItemBilling
   *
   * Requires orderId, orderItemSeqId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> createOrderItemBilling(OrderItemBilling ent, ) =>
      client.invoke('createOrderItemBilling', ent, {  });

  /**
   * Creates a new OrderItemChange record - OrderItemChange
   *
   * Requires orderId, orderItemSeqId, changeTypeEnumId, orderId, orderItemSeqId, changeTypeEnumId
   * Returns orderItemChangeId[String]
   */
  Future<OfResult> createOrderItemChange(OrderItemChange ent, ) =>
      client.invoke('createOrderItemChange', ent, {  });

  /**
   * Create Order Item Group Order - OrderItemGroupOrder
   *
   * Requires orderId, orderItemSeqId, groupOrderId
   * Returns 
   */
  Future<OfResult> createOrderItemGroupOrder(OrderItemGroupOrder ent, ) =>
      client.invoke('createOrderItemGroupOrder', ent, {  });

  /**
   * Creates a new OrderItemShipGroup. - OrderItemShipGroup
   *
   * Requires orderId
   * Returns shipGroupSeqId[String]
   */
  Future<OfResult> createOrderItemShipGroup(OrderItemShipGroup ent, ) =>
      client.invoke('createOrderItemShipGroup', ent, {  });

  /**
   * Create a note item and associate with a order header - 
   *
   * Requires orderId, note, internalNote
   * Returns 
   */
  Future<OfResult> createOrderNote({@required String orderId, @required String note, @required String internalNote, String noteName}) =>
      client.invoke('createOrderNote', null, { 'orderId': orderId, 'note': note, 'internalNote': internalNote, 'noteName': noteName });

  /**
   * Logs when a notification was sent - OrderNotification
   *
   * Requires orderId, emailType
   * Returns orderNotificationId[String]
   */
  Future<OfResult> createOrderNotificationLog(OrderNotification ent, ) =>
      client.invoke('createOrderNotificationLog', ent, {  });

  /**
   * Create Order Payment Application - 
   *
   * Requires paymentId
   * Returns 
   */
  Future<OfResult> createOrderPaymentApplication({@required String paymentId}) =>
      client.invoke('createOrderPaymentApplication', null, { 'paymentId': paymentId });

  /**
   * Creates an order payment preference - OrderPaymentPreference
   *
   * Requires 
   * Returns orderPaymentPreferenceId[String]
   */
  Future<OfResult> createOrderPaymentPreference(OrderPaymentPreference ent, ) =>
      client.invoke('createOrderPaymentPreference', ent, {  });

  /**
   * Create OrderShipment - OrderShipment
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> createOrderShipment(OrderShipment ent, ) =>
      client.invoke('createOrderShipment', ent, {  });

  /**
   * Create an Order Term - OrderTerm
   *
   * Requires termTypeId, orderId
   * Returns 
   */
  Future<OfResult> createOrderTerm(OrderTerm ent, ) =>
      client.invoke('createOrderTerm', ent, {  });

  /**
   * Creates a payment using the order payment preference - 
   *
   * Requires orderPaymentPreferenceId
   * Returns paymentId[String]
   */
  Future<OfResult> createPaymentFromPreference({@required String orderPaymentPreferenceId, String paymentFromId, String paymentRefNum, String comments, DateTime eventDate}) =>
      client.invoke('createPaymentFromPreference', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId, 'paymentFromId': paymentFromId, 'paymentRefNum': paymentRefNum, 'comments': comments, 'eventDate': eventDate });

  /**
   * Create a ProductOrderItem - ProductOrderItem
   *
   * Requires orderId, orderItemSeqId, engagementId, engagementItemSeqId
   * Returns orderId[String], orderItemSeqId[String], engagementId[String], engagementItemSeqId[String]
   */
  Future<OfResult> createProductOrderItem(ProductOrderItem ent, ) =>
      client.invoke('createProductOrderItem', ent, {  });

  /**
   * 
            Create a new Quate term.
         - QuoteTerm
   *
   * Requires termTypeId, quoteId
   * Returns 
   */
  Future<OfResult> createQuoteTerm(QuoteTerm ent, ) =>
      client.invoke('createQuoteTerm', ent, {  });

  /**
   * Create Test Order Rental of an asset which is shipped from and returned to inventory - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createTestOrderRentalProduct() =>
      client.invoke('createTestOrderRentalProduct', null, {  });

  /**
   * Bulk create test sales orders. Note that default-values depend on demo data in ecommerce/data. - 
   *
   * Requires 
   * Returns orderId[String]
   */
  Future<OfResult> createTestSalesOrderSingle({String productCategoryId, String productId, String productStoreId, String currencyUomId, String partyId, int numberOfProductsPerOrder, String salesChannel, bool shipOrder}) =>
      client.invoke('createTestSalesOrderSingle', null, { 'productCategoryId': productCategoryId, 'productId': productId, 'productStoreId': productStoreId, 'currencyUomId': currencyUomId, 'partyId': partyId, 'numberOfProductsPerOrder': numberOfProductsPerOrder, 'salesChannel': salesChannel, 'shipOrder': shipOrder });

  /**
   * Bulk create test sales orders. Note that default-values depend on demo data in ecommerce/data. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createTestSalesOrders({String productCategoryId, String productStoreId, String currencyUomId, String partyId, int numberOfOrders, bool shipOrder, int numberOfProductsPerOrder, String salesChannel}) =>
      client.invoke('createTestSalesOrders', null, { 'productCategoryId': productCategoryId, 'productStoreId': productStoreId, 'currencyUomId': currencyUomId, 'partyId': partyId, 'numberOfOrders': numberOfOrders, 'shipOrder': shipOrder, 'numberOfProductsPerOrder': numberOfProductsPerOrder, 'salesChannel': salesChannel });

  /**
   * Creates new billing address and update existing address - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createUpdateBillingAddress({String productStoreId, String setDefaultBilling, String keepAddressBook, String useShippingAddressForBilling, String partyId, Map<String,dynamic> userLogin, String billToAttnName, String billToName, String billToAddress1, String billToAddress2, String billToCity, String billToStateProvinceGeoId, String billToPostalCode, String billToCountryGeoId, String shipToContactMechId, String billToContactMechId}) =>
      client.invoke('createUpdateBillingAddress', null, { 'productStoreId': productStoreId, 'setDefaultBilling': setDefaultBilling, 'keepAddressBook': keepAddressBook, 'useShippingAddressForBilling': useShippingAddressForBilling, 'partyId': partyId, 'userLogin': userLogin, 'billToAttnName': billToAttnName, 'billToName': billToName, 'billToAddress1': billToAddress1, 'billToAddress2': billToAddress2, 'billToCity': billToCity, 'billToStateProvinceGeoId': billToStateProvinceGeoId, 'billToPostalCode': billToPostalCode, 'billToCountryGeoId': billToCountryGeoId, 'shipToContactMechId': shipToContactMechId, 'billToContactMechId': billToContactMechId });

  /**
   * Create/Update credit card - CreditCard
   *
   * Requires expMonth, expYear, cardType, cardNumber, firstNameOnCard, lastNameOnCard
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createUpdateCreditCard(CreditCard ent, {@required String expMonth, @required String expYear, String partyId}) =>
      client.invoke('createUpdateCreditCard', ent, { 'expMonth': expMonth, 'expYear': expYear, 'partyId': partyId });

  /**
   * Creates new shipping address and update existing address - 
   *
   * Requires shipToAddress1, shipToCity, shipToStateProvinceGeoId, shipToPostalCode, shipToCountryGeoId
   * Returns contactMechId[String]
   */
  Future<OfResult> createUpdateShippingAddress({String productStoreId, String setDefaultShipping, String keepAddressBook, String partyId, Map<String,dynamic> userLogin, String shipToAttnName, String shipToName, @required String shipToAddress1, String shipToAddress2, @required String shipToCity, @required String shipToStateProvinceGeoId, @required String shipToPostalCode, @required String shipToCountryGeoId, String shipToContactMechId, String billToContactMechId}) =>
      client.invoke('createUpdateShippingAddress', null, { 'productStoreId': productStoreId, 'setDefaultShipping': setDefaultShipping, 'keepAddressBook': keepAddressBook, 'partyId': partyId, 'userLogin': userLogin, 'shipToAttnName': shipToAttnName, 'shipToName': shipToName, 'shipToAddress1': shipToAddress1, 'shipToAddress2': shipToAddress2, 'shipToCity': shipToCity, 'shipToStateProvinceGeoId': shipToStateProvinceGeoId, 'shipToPostalCode': shipToPostalCode, 'shipToCountryGeoId': shipToCountryGeoId, 'shipToContactMechId': shipToContactMechId, 'billToContactMechId': billToContactMechId });

  /**
   * Delete an order adjustment record - OrderAdjustment
   *
   * Requires orderAdjustmentId, orderId
   * Returns 
   */
  Future<OfResult> deleteOrderAdjustment(OrderAdjustment ent, {String productPromoCodeId}) =>
      client.invoke('deleteOrderAdjustment', ent, { 'productPromoCodeId': productPromoCodeId });

  /**
   * Delete a OrderAdjustmentTypeAttr - OrderAdjustmentTypeAttr
   *
   * Requires orderAdjustmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderAdjustmentTypeAttr(OrderAdjustmentTypeAttr ent, ) =>
      client.invoke('deleteOrderAdjustmentTypeAttr', ent, {  });

  /**
   * Delete Order Item Attribute - OrderItemAttribute
   *
   * Requires orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderItemAttribute(OrderItemAttribute ent, ) =>
      client.invoke('deleteOrderItemAttribute', ent, {  });

  /**
   * delete Order Item Ship Group  - OrderItemShipGroup
   *
   * Requires orderId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> deleteOrderItemShipGroup(OrderItemShipGroup ent, ) =>
      client.invoke('deleteOrderItemShipGroup', ent, {  });

  /**
   * delete Order Item Ship Group Assoc - OrderItemShipGroupAssoc
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> deleteOrderItemShipGroupAssoc(OrderItemShipGroupAssoc ent, ) =>
      client.invoke('deleteOrderItemShipGroupAssoc', ent, {  });

  /**
   * Delete OrderShipment - OrderShipment
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> deleteOrderShipment(OrderShipment ent, ) =>
      client.invoke('deleteOrderShipment', ent, {  });

  /**
   * Delete a ProductOrderItem - ProductOrderItem
   *
   * Requires orderId, orderItemSeqId, engagementId, engagementItemSeqId
   * Returns 
   */
  Future<OfResult> deleteProductOrderItem(ProductOrderItem ent, ) =>
      client.invoke('deleteProductOrderItem', ent, {  });

  /**
   * 
            delete the Quate term.
         - QuoteTerm
   *
   * Requires termTypeId, quoteId, quoteItemSeqId
   * Returns 
   */
  Future<OfResult> deleteQuoteTerm(QuoteTerm ent, ) =>
      client.invoke('deleteQuoteTerm', ent, {  });

  /**
   * Expire a OrderContent - OrderContent
   *
   * Requires orderId, orderItemSeqId, contentId, orderContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireOrderContent(OrderContent ent, ) =>
      client.invoke('expireOrderContent', ent, {  });

  /**
   * Uses dynamic view entity to find orders; returns a list of Order (OrderHeader) objects - 
   *
   * Requires 
   * Returns viewIndex[Integer], viewSize[Integer], showAll[String], highIndex[Integer], lowIndex[Integer], filterInventoryProblemsList[List], filterPOsWithRejectedItemsList[List], filterPOsOpenPastTheirETAList[List], filterPartiallyReceivedPOsList[List], paramList[String], orderList[List], orderListSize[Integer]
   */
  Future<OfResult> findOrders({String orderId, String orderName, List<dynamic> orderTypeId, List<dynamic> orderStatusId, List<dynamic> productStoreId, List<dynamic> orderWebSiteId, List<dynamic> salesChannelEnumId, String createdBy, String terminalId, String transactionId, String externalId, String internalCode, String useEntryDate, String minDate, String maxDate, String hasBackOrders, String userLoginId, List<dynamic> roleTypeId, String partyId, String correspondingPoId, String subscriptionId, String productId, String budgetId, String quoteId, String goodIdentificationTypeId, String goodIdentificationIdValue, String billingAccountId, String finAccountId, String cardNumber, String accountNumber, String paymentStatusId, String inventoryItemId, String softIdentifier, String serialNumber, String shipmentId, String filterInventoryProblems, String filterPOsWithRejectedItems, String filterPOsOpenPastTheirETA, String filterPartiallyReceivedPOs, String isViewed, String shipmentMethod, String gatewayAvsResult, String gatewayScoreResult, String countryGeoId, String includeCountry, int viewIndex, int viewSize, String showAll}) =>
      client.invoke('findOrders', null, { 'orderId': orderId, 'orderName': orderName, 'orderTypeId': orderTypeId, 'orderStatusId': orderStatusId, 'productStoreId': productStoreId, 'orderWebSiteId': orderWebSiteId, 'salesChannelEnumId': salesChannelEnumId, 'createdBy': createdBy, 'terminalId': terminalId, 'transactionId': transactionId, 'externalId': externalId, 'internalCode': internalCode, 'useEntryDate': useEntryDate, 'minDate': minDate, 'maxDate': maxDate, 'hasBackOrders': hasBackOrders, 'userLoginId': userLoginId, 'roleTypeId': roleTypeId, 'partyId': partyId, 'correspondingPoId': correspondingPoId, 'subscriptionId': subscriptionId, 'productId': productId, 'budgetId': budgetId, 'quoteId': quoteId, 'goodIdentificationTypeId': goodIdentificationTypeId, 'goodIdentificationIdValue': goodIdentificationIdValue, 'billingAccountId': billingAccountId, 'finAccountId': finAccountId, 'cardNumber': cardNumber, 'accountNumber': accountNumber, 'paymentStatusId': paymentStatusId, 'inventoryItemId': inventoryItemId, 'softIdentifier': softIdentifier, 'serialNumber': serialNumber, 'shipmentId': shipmentId, 'filterInventoryProblems': filterInventoryProblems, 'filterPOsWithRejectedItems': filterPOsWithRejectedItems, 'filterPOsOpenPastTheirETA': filterPOsOpenPastTheirETA, 'filterPartiallyReceivedPOs': filterPartiallyReceivedPOs, 'isViewed': isViewed, 'shipmentMethod': shipmentMethod, 'gatewayAvsResult': gatewayAvsResult, 'gatewayScoreResult': gatewayScoreResult, 'countryGeoId': countryGeoId, 'includeCountry': includeCountry, 'viewIndex': viewIndex, 'viewSize': viewSize, 'showAll': showAll });

  /**
   * Order Fulfillment - 
   *
   * Requires orderId, orderItems
   * Returns 
   */
  Future<OfResult> fulfillDigitalItems({@required String orderId, @required List<dynamic> orderItems}) =>
      client.invoke('fulfillDigitalItems', null, { 'orderId': orderId, 'orderItems': orderItems });

  /**
   * Generates a product requirement for the total cancelled quantity over all order items for each product - 
   *
   * Requires orderId, facilityId
   * Returns 
   */
  Future<OfResult> generateReqsFromCancelledPOItems({@required String orderId, @required String facilityId}) =>
      client.invoke('generateReqsFromCancelledPOItems', null, { 'orderId': orderId, 'facilityId': facilityId });

  /**
   * Get basic order header information. - 
   *
   * Requires orderId
   * Returns orderId[String], orderTypeId[String], orderName[String], externalId[String], salesChannelEnumId[String], orderDate[java.sql.Timestamp], priority[String], entryDate[java.sql.Timestamp], pickSheetPrintedDate[java.sql.Timestamp], visitId[String], statusId[String], createdBy[String], firstAttemptOrderId[String], currencyUom[String], syncStatusId[String], billingAccountId[String], originFacilityId[String], webSiteId[String], productStoreId[String], agreementId[String], terminalId[String], transactionId[String], autoOrderShoppingListId[String], needsInventoryIssuance[String], isRushOrder[String], internalCode[String], remainingSubTotal[java.math.BigDecimal], grandTotal[java.math.BigDecimal], isViewed[String], invoicePerShipment[String]
   */
  Future<OfResult> getOrderHeaderInformation({@required String orderId}) =>
      client.invoke('getOrderHeaderInformation', null, { 'orderId': orderId });

  /**
   * Determines the total amount invoiced for a given order item over all invoices by totalling the item
            subtotal (via OrderItemBilling), any adjustments for that item (via OrderAdjustmentBilling), and the item's
            share of any order-level adjustments (that calculated by applying the percentage of the items total that the item represents
            to the order-level adjustments total (also via OrderAdjustmentBilling). Also returns the quantity invoiced for the item over
            all invoices, to aid in prorating. - 
   *
   * Requires orderId, orderItemSeqId
   * Returns invoicedAmount[BigDecimal], invoicedQuantity[BigDecimal]
   */
  Future<OfResult> getOrderItemInvoicedAmountAndQuantity({@required String orderId, @required String orderItemSeqId}) =>
      client.invoke('getOrderItemInvoicedAmountAndQuantity', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId });

  /**
   * Compute and return the OrderItemShipGroup estimated ship date based on the associated items. - 
   *
   * Requires orderId, shipGroupSeqId
   * Returns estimatedShipDate[Timestamp]
   */
  Future<OfResult> getOrderItemShipGroupEstimatedShipDate({@required String orderId, @required String shipGroupSeqId}) =>
      client.invoke('getOrderItemShipGroupEstimatedShipDate', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId });

  /**
   * Get the total shipping for an order - 
   *
   * Requires orderId
   * Returns shippingAmount[BigDecimal]
   */
  Future<OfResult> getOrderShippingAmount({@required String orderId}) =>
      client.invoke('getOrderShippingAmount', null, { 'orderId': orderId });

  /**
   * Gets the order status - 
   *
   * Requires orderId
   * Returns statusId[String]
   */
  Future<OfResult> getOrderStatus({@required String orderId}) =>
      client.invoke('getOrderStatus', null, { 'orderId': orderId });

  /**
   * Get Ordered Summary Information - 
   *
   * Requires partyId
   * Returns totalOrders[Long], totalGrandAmount[BigDecimal], totalSubRemainingAmount[BigDecimal]
   */
  Future<OfResult> getOrderedSummaryInformation({@required String partyId, String roleTypeId, String orderTypeId, String statusId, DateTime fromDate, DateTime thruDate, int monthsToInclude}) =>
      client.invoke('getOrderedSummaryInformation', null, { 'partyId': partyId, 'roleTypeId': roleTypeId, 'orderTypeId': orderTypeId, 'statusId': statusId, 'fromDate': fromDate, 'thruDate': thruDate, 'monthsToInclude': monthsToInclude });

  /**
   * Check an order for service items and invoice the items - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> invoiceServiceItems({@required String orderId}) =>
      client.invoke('invoiceServiceItems', null, { 'orderId': orderId });

  /**
   *  - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns 
   */
  Future<OfResult> itemFulfillmentInterface({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('itemFulfillmentInterface', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * Load an existing shopping cart - 
   *
   * Requires orderId
   * Returns orderId[String], shoppingCart[org.apache.ofbiz.order.shoppingcart.ShoppingCart]
   */
  Future<OfResult> loadCartForUpdate({@required String orderId}) =>
      client.invoke('loadCartForUpdate', null, { 'orderId': orderId });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massCancelOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massCancelOrders', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massCancelRemainingPurchaseOrderItems({@required List<dynamic> orderIdList}) =>
      client.invoke('massCancelRemainingPurchaseOrderItems', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massChangeOrderApproved({@required List<dynamic> orderIdList}) =>
      client.invoke('massChangeOrderApproved', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires screenLocation, orderIdList
   * Returns 
   */
  Future<OfResult> massCreateFileForOrders({@required String screenLocation, @required List<dynamic> orderIdList}) =>
      client.invoke('massCreateFileForOrders', null, { 'screenLocation': screenLocation, 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massHoldOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massHoldOrders', null, { 'orderIdList': orderIdList });

  /**
   * Interface for Mass Order Change Services - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massOrderChangeInterface({@required List<dynamic> orderIdList}) =>
      client.invoke('massOrderChangeInterface', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massPickOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massPickOrders', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires screenLocation, orderIdList
   * Returns 
   */
  Future<OfResult> massPrintOrders({@required String screenLocation, String printerName, @required List<dynamic> orderIdList}) =>
      client.invoke('massPrintOrders', null, { 'screenLocation': screenLocation, 'printerName': printerName, 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massProcessOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massProcessOrders', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massQuickShipOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massQuickShipOrders', null, { 'orderIdList': orderIdList });

  /**
   *  - 
   *
   * Requires orderIdList
   * Returns 
   */
  Future<OfResult> massRejectOrders({@required List<dynamic> orderIdList}) =>
      client.invoke('massRejectOrders', null, { 'orderIdList': orderIdList });

  /**
   * Permission service for the creation and editing of order adjustments - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> orderAdjustmentPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('orderAdjustmentPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires orderId
   * Returns emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], orderId[String], subject[String], communicationEventId[String]
   */
  Future<OfResult> orderNotificationInterface({@required String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('orderNotificationInterface', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Process payments for an order - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> processOrderPayments({@required String orderId}) =>
      client.invoke('processOrderPayments', null, { 'orderId': orderId });

  /**
   * 
            Calculate ATP and QOH According For each facility
         - 
   *
   * Requires productId
   * Returns availabalityList[List]
   */
  Future<OfResult> productAvailabalityByFacility({@required String productId, String ownerPartyId}) =>
      client.invoke('productAvailabalityByFacility', null, { 'productId': productId, 'ownerPartyId': ownerPartyId });

  /**
   * Adjust the order shipping amount - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> recalcShippingTotal({@required String orderId}) =>
      client.invoke('recalcShippingTotal', null, { 'orderId': orderId });

  /**
   * Adjust the order tax amount - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> recalcTaxTotal({@required String orderId, String orderItemSeqId}) =>
      client.invoke('recalcTaxTotal', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId });

  /**
   * Remove all existing order adjustments, recalc them and persist in OrderAdjustment. - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> recreateOrderAdjustments({@required String orderId}) =>
      client.invoke('recreateOrderAdjustments', null, { 'orderId': orderId });

  /**
   * Remove a Communication Event Order - CommunicationEventOrder
   *
   * Requires orderId, communicationEventId
   * Returns 
   */
  Future<OfResult> removeCommunicationEventOrder(CommunicationEventOrder ent, ) =>
      client.invoke('removeCommunicationEventOrder', ent, {  });

  /**
   * Remove Order Contact Mech - OrderContactMech
   *
   * Requires orderId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> removeOrderContactMech(OrderContactMech ent, ) =>
      client.invoke('removeOrderContactMech', ent, {  });

  /**
   * Removes a RoleType from an order - 
   *
   * Requires orderId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeOrderRole({@required String orderId, @required String partyId, @required String roleTypeId}) =>
      client.invoke('removeOrderRole', null, { 'orderId': orderId, 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Remove an Order Term - OrderTerm
   *
   * Requires termTypeId, orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> removeOrderTerm(OrderTerm ent, ) =>
      client.invoke('removeOrderTerm', ent, {  });

  /**
   * Reset the grandTotal of an existing order - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> resetGrandTotal({@required String orderId}) =>
      client.invoke('resetGrandTotal', null, { 'orderId': orderId });

  /**
   * A service designed to be automatically run by job scheduler to create orders from subscriptions which need to be extended.
            This is done by looking for all subscriptions which are active and where the automaticExtend flag is set to "Y" - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> runSubscriptionAutoReorders() =>
      client.invoke('runSubscriptionAutoReorders', null, {  });

  /**
   * Send a order notification - 
   *
   * Requires 
   * Returns orderId[String], emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], subject[String], communicationEventId[String]
   */
  Future<OfResult> sendOrderBackorderNotification({String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('sendOrderBackorderNotification', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Send a order notification - 
   *
   * Requires 
   * Returns orderId[String], emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], subject[String], communicationEventId[String]
   */
  Future<OfResult> sendOrderChangeNotification({String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('sendOrderChangeNotification', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Send a order notification - 
   *
   * Requires 
   * Returns orderId[String], emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], subject[String], communicationEventId[String]
   */
  Future<OfResult> sendOrderCompleteNotification({String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('sendOrderCompleteNotification', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Send a order confirmation - 
   *
   * Requires 
   * Returns orderId[String], emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], subject[String], communicationEventId[String]
   */
  Future<OfResult> sendOrderConfirmation({String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('sendOrderConfirmation', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Send Order Delivery Schedule Notification - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> sendOrderDeliveryScheduleNotification({@required String orderId, String orderItemSeqId}) =>
      client.invoke('sendOrderDeliveryScheduleNotification', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId });

  /**
   * Send a order notification - 
   *
   * Requires 
   * Returns orderId[String], emailType[String], body[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], subject[String], communicationEventId[String]
   */
  Future<OfResult> sendOrderPayRetryNotification({String orderId, String orderItemSeqId, String screenUri, String comments, String sendTo, String sendCc, String sendBcc, String note, Map<String,dynamic> temporaryAnonymousUserLogin}) =>
      client.invoke('sendOrderPayRetryNotification', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'screenUri': screenUri, 'comments': comments, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'note': note, 'temporaryAnonymousUserLogin': temporaryAnonymousUserLogin });

  /**
   * Limit Service for order processing workflow; sends activitiy notifications - 
   *
   * Requires workEffortId, adminEmailList
   * Returns 
   */
  Future<OfResult> sendProcessNotification({@required String workEffortId, @required String adminEmailList, String assignedPartyId, String assignedRoleTypeId}) =>
      client.invoke('sendProcessNotification', null, { 'workEffortId': workEffortId, 'adminEmailList': adminEmailList, 'assignedPartyId': assignedPartyId, 'assignedRoleTypeId': assignedRoleTypeId });

  /**
   * Set the Allow Split Flag To 'Y' (true) - 
   *
   * Requires orderId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> setAllowOrderSplit({@required String orderId, @required String shipGroupSeqId}) =>
      client.invoke('setAllowOrderSplit', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId });

  /**
   * Find all OrderHeaders with no grandTotal and call resetGrandTotal - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> setEmptyGrandTotals({bool forceAll}) =>
      client.invoke('setEmptyGrandTotals', null, { 'forceAll': forceAll });

  /**
   * Set Gift message for an order - 
   *
   * Requires orderId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> setGiftMessage({@required String orderId, @required String shipGroupSeqId, String giftMessage}) =>
      client.invoke('setGiftMessage', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'giftMessage': giftMessage });

  /**
   * Set the shipping instructions for an order - 
   *
   * Requires orderId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> setShippingInstructions({@required String orderId, @required String shipGroupSeqId, String shippingInstructions}) =>
      client.invoke('setShippingInstructions', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'shippingInstructions': shippingInstructions });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> shoppingCartTest() =>
      client.invoke('shoppingCartTest', null, {  });

  /**
   * Create an order using a shopping cart - only used internally in ShoppingCartTests.xml for test purpose - 
   *
   * Requires 
   * Returns orderMap[Map]
   */
  Future<OfResult> testCreateShoppinCartAndOrder() =>
      client.invoke('testCreateShoppinCartAndOrder', null, {  });

  /**
   * Update an order adjustment record - OrderAdjustment
   *
   * Requires orderAdjustmentId, orderId, orderId
   * Returns 
   */
  Future<OfResult> updateOrderAdjustment(OrderAdjustment ent, ) =>
      client.invoke('updateOrderAdjustment', ent, {  });

  /**
   * Update a OrderAdjustmentTypeAttr - OrderAdjustmentTypeAttr
   *
   * Requires orderAdjustmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderAdjustmentTypeAttr(OrderAdjustmentTypeAttr ent, ) =>
      client.invoke('updateOrderAdjustmentTypeAttr', ent, {  });

  /**
   * Update Order Contact Mech - OrderContactMech
   *
   * Requires orderId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> updateOrderContactMech(OrderContactMech ent, {String oldContactMechId}) =>
      client.invoke('updateOrderContactMech', ent, { 'oldContactMechId': oldContactMechId });

  /**
   * Update an existing delivery schedule for a specified purchase order - OrderDeliverySchedule
   *
   * Requires orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> updateOrderDeliverySchedule(OrderDeliverySchedule ent, ) =>
      client.invoke('updateOrderDeliverySchedule', ent, {  });

  /**
   * Update OrderHeader - OrderHeader
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> updateOrderHeader(OrderHeader ent, ) =>
      client.invoke('updateOrderHeader', ent, {  });

  /**
   * Update Order Item Attribute - OrderItemAttribute
   *
   * Requires orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderItemAttribute(OrderItemAttribute ent, ) =>
      client.invoke('updateOrderItemAttribute', ent, {  });

  /**
   * Updates OrderItemShipGroup.  The shipmentMethod field is of the format ${shipmentMethodTypeId}@${carrierPartyId} - OrderItemShipGroup
   *
   * Requires orderId, shipGroupSeqId
   * Returns 
   */
  Future<OfResult> updateOrderItemShipGroup(OrderItemShipGroup ent, {String oldContactMechId, String shipmentMethod, String contactMechPurposeTypeId}) =>
      client.invoke('updateOrderItemShipGroup', ent, { 'oldContactMechId': oldContactMechId, 'shipmentMethod': shipmentMethod, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * update OrderItem from OISG, totalQuantity is used only if controller is a multi services  - OrderItemShipGroupAssoc
   *
   * Requires 
   * Returns totalQuantity[BigDecimal], rowNumber[Integer]
   */
  Future<OfResult> updateOrderItemShipGroupAssoc(OrderItemShipGroupAssoc ent, {Decimal totalQuantity, int rowCount, int rowNumber}) =>
      client.invoke('updateOrderItemShipGroupAssoc', ent, { 'totalQuantity': totalQuantity, 'rowCount': rowCount, 'rowNumber': rowNumber });

  /**
   * Toggle Order Note and make it either Public or Private - OrderHeaderNote
   *
   * Requires orderId, noteId, internalNote
   * Returns 
   */
  Future<OfResult> updateOrderNote(OrderHeaderNote ent, ) =>
      client.invoke('updateOrderNote', ent, {  });

  /**
   *  - OrderPaymentPreference
   *
   * Requires orderPaymentPreferenceId
   * Returns orderPaymentPreferenceId[String]
   */
  Future<OfResult> updateOrderPaymentPreference(OrderPaymentPreference ent, {String checkOutPaymentId}) =>
      client.invoke('updateOrderPaymentPreference', ent, { 'checkOutPaymentId': checkOutPaymentId });

  /**
   * Update OrderShipment - OrderShipment
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> updateOrderShipment(OrderShipment ent, ) =>
      client.invoke('updateOrderShipment', ent, {  });

  /**
   * Updates the (purchase) order/order item status based on receipt - 
   *
   * Requires orderId
   * Returns currentStatusId[String]
   */
  Future<OfResult> updateOrderStatusFromReceipt({@required String orderId}) =>
      client.invoke('updateOrderStatusFromReceipt', null, { 'orderId': orderId });

  /**
   * Update an Order Term - OrderTerm
   *
   * Requires termTypeId, orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> updateOrderTerm(OrderTerm ent, ) =>
      client.invoke('updateOrderTerm', ent, {  });

  /**
   * Update a ProductOrderItem - ProductOrderItem
   *
   * Requires orderId, orderItemSeqId, engagementId, engagementItemSeqId
   * Returns 
   */
  Future<OfResult> updateProductOrderItem(ProductOrderItem ent, ) =>
      client.invoke('updateProductOrderItem', ent, {  });

  /**
   * 
            Edit the Quate term.
         - QuoteTerm
   *
   * Requires termTypeId, quoteId, quoteItemSeqId
   * Returns 
   */
  Future<OfResult> updateQuoteTerm(QuoteTerm ent, ) =>
      client.invoke('updateQuoteTerm', ent, {  });

  /**
   * Update Shipping Information on Order View - 
   *
   * Requires contactMechId
   * Returns 
   */
  Future<OfResult> updateShipGroupShipInfo({@required String contactMechId, String orderId, String oldContactMechId, String shipGroupSeqId, String shipmentMethod}) =>
      client.invoke('updateShipGroupShipInfo', null, { 'contactMechId': contactMechId, 'orderId': orderId, 'oldContactMechId': oldContactMechId, 'shipGroupSeqId': shipGroupSeqId, 'shipmentMethod': shipmentMethod });

  /**
   * Compare order's shipping amount and new shipping amount(based on weight and dimension of packages).If new shipping amount is more then or less than default percentage (defined in shipment.properties) of Order's shipping amount, then shipping method and shipping charges are updated. And if new shipping amount is not more then or less than default percentage (defined in shipment.properties)% of Order's shipping amount then only shipping method is updated.Also updates record in ShipmentRouteSegment entity - 
   *
   * Requires orderId, shipGroupSeqId, oldContactMechId, shipmentMethodAndAmount, contactMechPurposeTypeId, orderAdjustmentId, shippingAmount, shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> updateShippingMethodAndCharges({@required String orderId, @required String shipGroupSeqId, @required String oldContactMechId, @required String shipmentMethodAndAmount, @required String contactMechPurposeTypeId, @required String orderAdjustmentId, @required String shippingAmount, @required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('updateShippingMethodAndCharges', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'oldContactMechId': oldContactMechId, 'shipmentMethodAndAmount': shipmentMethodAndAmount, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'orderAdjustmentId': orderAdjustmentId, 'shippingAmount': shippingAmount, 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * Given an orderId, this service will look through all its OrderItems and for each shoppingListItemId
              and shoppingListItemSeqId, update the quantity purchased in the ShoppingListItem entity.  Used for
              tracking how many of shopping list items are purchased.  This service is mounted as a seca on storeOrder. - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> updateShoppingListQuantitiesFromOrder({@required String orderId}) =>
      client.invoke('updateShoppingListQuantitiesFromOrder', null, { 'orderId': orderId });

  /**
   * Sets the tracking number on a shipment preference - 
   *
   * Requires orderId, shipGroupSeqId, trackingNumber
   * Returns 
   */
  Future<OfResult> updateTrackingNumber({@required String orderId, @required String shipGroupSeqId, @required String trackingNumber}) =>
      client.invoke('updateTrackingNumber', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'trackingNumber': trackingNumber });

}