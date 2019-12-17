import 'package:sagas_meta/src/models/order_return.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderReturnJsonifier{
  static CommunicationEventReturn extractCommunicationEventReturn(dynamic json) {
    return CommunicationEventReturn(
        entityId: create_id_from('CommunicationEventReturn', ['returnId', 'communicationEventId'], json),
        returnId: json['returnId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventReturn overridesCommunicationEventReturn(Map<String, dynamic> map) {
    return CommunicationEventReturn(
        entityId: create_id_from('CommunicationEventReturn', ['returnId', 'communicationEventId'], map),
        returnId: map['returnId'],
        communicationEventId: map['communicationEventId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnAdjustment extractReturnAdjustment(dynamic json) {
    return ReturnAdjustment(
        entityId: create_id_from('ReturnAdjustment', ['returnAdjustmentId'], json),
        customerReferenceId: json['customerReferenceId'] as String,
        correspondingProductId: json['correspondingProductId'] as String,
        includeInShipping: json['includeInShipping'] as String,
        description: json['description'] as String,
        returnTypeId: json['returnTypeId'] as String,
        exemptAmount: json['exemptAmount'] as double,
        productPromoId: json['productPromoId'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        returnAdjustmentTypeId: json['returnAdjustmentTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        primaryGeoId: json['primaryGeoId'] as String,
        returnId: json['returnId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        secondaryGeoId: json['secondaryGeoId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        orderAdjustmentId: json['orderAdjustmentId'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        sourceReferenceId: json['sourceReferenceId'] as String,
        productPromoRuleId: json['productPromoRuleId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        taxAuthorityRateSeqId: json['taxAuthorityRateSeqId'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        includeInTax: json['includeInTax'] as String,
        returnAdjustmentId: json['returnAdjustmentId'] as String,
        createdDate: check_dt(json['createdDate']),
        productPromoActionSeqId: json['productPromoActionSeqId'] as String,
        sourcePercentage: json['sourcePercentage'] as double,
        returnItemSeqId: json['returnItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnAdjustment overridesReturnAdjustment(Map<String, dynamic> map) {
    return ReturnAdjustment(
        entityId: create_id_from('ReturnAdjustment', ['returnAdjustmentId'], map),
        customerReferenceId: map['customerReferenceId'],
        correspondingProductId: map['correspondingProductId'],
        includeInShipping: map['includeInShipping'],
        description: map['description'],
        returnTypeId: map['returnTypeId'],
        exemptAmount: map['exemptAmount'],
        productPromoId: map['productPromoId'],
        taxAuthPartyId: map['taxAuthPartyId'],
        returnAdjustmentTypeId: map['returnAdjustmentTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        primaryGeoId: map['primaryGeoId'],
        returnId: map['returnId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        secondaryGeoId: map['secondaryGeoId'],
        createdByUserLogin: map['createdByUserLogin'],
        orderAdjustmentId: map['orderAdjustmentId'],
        amount: map['amount'],
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        sourceReferenceId: map['sourceReferenceId'],
        productPromoRuleId: map['productPromoRuleId'],
        productFeatureId: map['productFeatureId'],
        taxAuthorityRateSeqId: map['taxAuthorityRateSeqId'],
        overrideGlAccountId: map['overrideGlAccountId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        includeInTax: map['includeInTax'],
        returnAdjustmentId: map['returnAdjustmentId'],
        createdDate: map['createdDate'],
        productPromoActionSeqId: map['productPromoActionSeqId'],
        sourcePercentage: map['sourcePercentage'],
        returnItemSeqId: map['returnItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnAdjustmentType extractReturnAdjustmentType(dynamic json) {
    return ReturnAdjustmentType(
        entityId: create_id_from('ReturnAdjustmentType', ['returnAdjustmentTypeId'], json),
        returnAdjustmentTypeId: json['returnAdjustmentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnAdjustmentType overridesReturnAdjustmentType(Map<String, dynamic> map) {
    return ReturnAdjustmentType(
        entityId: create_id_from('ReturnAdjustmentType', ['returnAdjustmentTypeId'], map),
        returnAdjustmentTypeId: map['returnAdjustmentTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnContactMech extractReturnContactMech(dynamic json) {
    return ReturnContactMech(
        entityId: create_id_from('ReturnContactMech', ['returnId', 'contactMechPurposeTypeId', 'contactMechId'], json),
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        returnId: json['returnId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnContactMech overridesReturnContactMech(Map<String, dynamic> map) {
    return ReturnContactMech(
        entityId: create_id_from('ReturnContactMech', ['returnId', 'contactMechPurposeTypeId', 'contactMechId'], map),
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        returnId: map['returnId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnHeader extractReturnHeader(dynamic json) {
    return ReturnHeader(
        entityId: create_id_from('ReturnHeader', ['returnId'], json),
        fromPartyId: json['fromPartyId'] as String,
        entryDate: check_dt(json['entryDate']),
        originContactMechId: json['originContactMechId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        returnHeaderTypeId: json['returnHeaderTypeId'] as String,
        finAccountId: json['finAccountId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        createdBy: json['createdBy'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        needsInventoryReceive: json['needsInventoryReceive'] as String,
        returnId: json['returnId'] as String,
        toPartyId: json['toPartyId'] as String,
        destinationFacilityId: json['destinationFacilityId'] as String,
        supplierRmaId: json['supplierRmaId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnHeader overridesReturnHeader(Map<String, dynamic> map) {
    return ReturnHeader(
        entityId: create_id_from('ReturnHeader', ['returnId'], map),
        fromPartyId: map['fromPartyId'],
        entryDate: map['entryDate'],
        originContactMechId: map['originContactMechId'],
        billingAccountId: map['billingAccountId'],
        returnHeaderTypeId: map['returnHeaderTypeId'],
        finAccountId: map['finAccountId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        createdBy: map['createdBy'],
        paymentMethodId: map['paymentMethodId'],
        needsInventoryReceive: map['needsInventoryReceive'],
        returnId: map['returnId'],
        toPartyId: map['toPartyId'],
        destinationFacilityId: map['destinationFacilityId'],
        supplierRmaId: map['supplierRmaId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnHeaderType extractReturnHeaderType(dynamic json) {
    return ReturnHeaderType(
        entityId: create_id_from('ReturnHeaderType', ['returnHeaderTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        returnHeaderTypeId: json['returnHeaderTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnHeaderType overridesReturnHeaderType(Map<String, dynamic> map) {
    return ReturnHeaderType(
        entityId: create_id_from('ReturnHeaderType', ['returnHeaderTypeId'], map),
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        returnHeaderTypeId: map['returnHeaderTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItem extractReturnItem(dynamic json) {
    return ReturnItem(
        entityId: create_id_from('ReturnItem', ['returnId', 'returnItemSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        returnQuantity: json['returnQuantity'] as double,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        returnTypeId: json['returnTypeId'] as String,
        description: json['description'] as String,
        returnPrice: json['returnPrice'] as double,
        returnItemResponseId: json['returnItemResponseId'] as String,
        statusId: json['statusId'] as String,
        returnReasonId: json['returnReasonId'] as String,
        returnItemTypeId: json['returnItemTypeId'] as String,
        receivedQuantity: json['receivedQuantity'] as double,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        expectedItemStatus: json['expectedItemStatus'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItem overridesReturnItem(Map<String, dynamic> map) {
    return ReturnItem(
        entityId: create_id_from('ReturnItem', ['returnId', 'returnItemSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        returnQuantity: map['returnQuantity'],
        productId: map['productId'],
        orderId: map['orderId'],
        returnTypeId: map['returnTypeId'],
        description: map['description'],
        returnPrice: map['returnPrice'],
        returnItemResponseId: map['returnItemResponseId'],
        statusId: map['statusId'],
        returnReasonId: map['returnReasonId'],
        returnItemTypeId: map['returnItemTypeId'],
        receivedQuantity: map['receivedQuantity'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        expectedItemStatus: map['expectedItemStatus'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItemBilling extractReturnItemBilling(dynamic json) {
    return ReturnItemBilling(
        entityId: create_id_from('ReturnItemBilling', ['returnId', 'returnItemSeqId', 'invoiceId', 'invoiceItemSeqId'], json),
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        shipmentReceiptId: json['shipmentReceiptId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItemBilling overridesReturnItemBilling(Map<String, dynamic> map) {
    return ReturnItemBilling(
        entityId: create_id_from('ReturnItemBilling', ['returnId', 'returnItemSeqId', 'invoiceId', 'invoiceItemSeqId'], map),
        amount: map['amount'],
        quantity: map['quantity'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        invoiceId: map['invoiceId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        shipmentReceiptId: map['shipmentReceiptId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItemResponse extractReturnItemResponse(dynamic json) {
    return ReturnItemResponse(
        entityId: create_id_from('ReturnItemResponse', ['returnItemResponseId'], json),
        replacementOrderId: json['replacementOrderId'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        returnItemResponseId: json['returnItemResponseId'] as String,
        orderPaymentPreferenceId: json['orderPaymentPreferenceId'] as String,
        responseAmount: json['responseAmount'] as double,
        paymentId: json['paymentId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        responseDate: check_dt(json['responseDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItemResponse overridesReturnItemResponse(Map<String, dynamic> map) {
    return ReturnItemResponse(
        entityId: create_id_from('ReturnItemResponse', ['returnItemResponseId'], map),
        replacementOrderId: map['replacementOrderId'],
        finAccountTransId: map['finAccountTransId'],
        returnItemResponseId: map['returnItemResponseId'],
        orderPaymentPreferenceId: map['orderPaymentPreferenceId'],
        responseAmount: map['responseAmount'],
        paymentId: map['paymentId'],
        billingAccountId: map['billingAccountId'],
        responseDate: map['responseDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItemShipment extractReturnItemShipment(dynamic json) {
    return ReturnItemShipment(
        entityId: create_id_from('ReturnItemShipment', ['returnId', 'returnItemSeqId', 'shipmentId', 'shipmentItemSeqId'], json),
        quantity: json['quantity'] as double,
        shipmentId: json['shipmentId'] as String,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItemShipment overridesReturnItemShipment(Map<String, dynamic> map) {
    return ReturnItemShipment(
        entityId: create_id_from('ReturnItemShipment', ['returnId', 'returnItemSeqId', 'shipmentId', 'shipmentItemSeqId'], map),
        quantity: map['quantity'],
        shipmentId: map['shipmentId'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItemType extractReturnItemType(dynamic json) {
    return ReturnItemType(
        entityId: create_id_from('ReturnItemType', ['returnItemTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        returnItemTypeId: json['returnItemTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItemType overridesReturnItemType(Map<String, dynamic> map) {
    return ReturnItemType(
        entityId: create_id_from('ReturnItemType', ['returnItemTypeId'], map),
        parentTypeId: map['parentTypeId'],
        returnItemTypeId: map['returnItemTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnItemTypeMap extractReturnItemTypeMap(dynamic json) {
    return ReturnItemTypeMap(
        entityId: create_id_from('ReturnItemTypeMap', ['returnItemMapKey', 'returnHeaderTypeId'], json),
        returnItemTypeId: json['returnItemTypeId'] as String,
        returnItemMapKey: json['returnItemMapKey'] as String,
        returnHeaderTypeId: json['returnHeaderTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnItemTypeMap overridesReturnItemTypeMap(Map<String, dynamic> map) {
    return ReturnItemTypeMap(
        entityId: create_id_from('ReturnItemTypeMap', ['returnItemMapKey', 'returnHeaderTypeId'], map),
        returnItemTypeId: map['returnItemTypeId'],
        returnItemMapKey: map['returnItemMapKey'],
        returnHeaderTypeId: map['returnHeaderTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnReason extractReturnReason(dynamic json) {
    return ReturnReason(
        entityId: create_id_from('ReturnReason', ['returnReasonId'], json),
        returnReasonId: json['returnReasonId'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnReason overridesReturnReason(Map<String, dynamic> map) {
    return ReturnReason(
        entityId: create_id_from('ReturnReason', ['returnReasonId'], map),
        returnReasonId: map['returnReasonId'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnStatus extractReturnStatus(dynamic json) {
    return ReturnStatus(
        entityId: create_id_from('ReturnStatus', ['returnStatusId'], json),
        statusId: json['statusId'] as String,
        returnStatusId: json['returnStatusId'] as String,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        statusDatetime: check_dt(json['statusDatetime']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnStatus overridesReturnStatus(Map<String, dynamic> map) {
    return ReturnStatus(
        entityId: create_id_from('ReturnStatus', ['returnStatusId'], map),
        statusId: map['statusId'],
        returnStatusId: map['returnStatusId'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        statusDatetime: map['statusDatetime'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReturnType extractReturnType(dynamic json) {
    return ReturnType(
        entityId: create_id_from('ReturnType', ['returnTypeId'], json),
        returnTypeId: json['returnTypeId'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReturnType overridesReturnType(Map<String, dynamic> map) {
    return ReturnType(
        entityId: create_id_from('ReturnType', ['returnTypeId'], map),
        returnTypeId: map['returnTypeId'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}