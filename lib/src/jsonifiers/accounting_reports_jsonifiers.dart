import 'package:sagas_meta/src/models/accounting_reports.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingReportsJsonifier{
  static InvoiceExport extractInvoiceExport(dynamic json) {
    return InvoiceExport(
        entityId: create_id_from('InvoiceExport', ['invoiceId', 'invoiceItemSeqId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        partyIdTrans: json['partyIdTrans'] as String,
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        partyIdFromTrans: json['partyIdFromTrans'] as String,
        description: json['description'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        invoiceDate: check_dt(json['invoiceDate']),
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        productIdTrans: json['productIdTrans'] as String,
        currencyUomId: json['currencyUomId'] as String,
        referenceNumber: json['referenceNumber'] as String,
        invoiceId: json['invoiceId'] as String,
        itemDescription: json['itemDescription'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceExport overridesInvoiceExport(Map<String, dynamic> map) {
    return InvoiceExport(
        entityId: create_id_from('InvoiceExport', ['invoiceId', 'invoiceItemSeqId'], map),
        partyIdFrom: map['partyIdFrom'],
        partyIdTrans: map['partyIdTrans'],
        amount: map['amount'],
        quantity: map['quantity'],
        productId: map['productId'],
        invoiceTypeId: map['invoiceTypeId'],
        partyIdFromTrans: map['partyIdFromTrans'],
        description: map['description'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        invoiceDate: map['invoiceDate'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        productIdTrans: map['productIdTrans'],
        currencyUomId: map['currencyUomId'],
        referenceNumber: map['referenceNumber'],
        invoiceId: map['invoiceId'],
        itemDescription: map['itemDescription'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemCategorySummary extractInvoiceItemCategorySummary(dynamic json) {
    return InvoiceItemCategorySummary(
        entityId: create_id_from('InvoiceItemCategorySummary', ['productCategoryId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        quantityTotal: json['quantityTotal'] as double,
        currencyUomId: json['currencyUomId'] as String,
        productCategoryId: json['productCategoryId'] as String,
        statusId: json['statusId'] as String,
        productId: json['productId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        amountTotal: json['amountTotal'] as double,
        invoiceDate: check_dt(json['invoiceDate']),
        partyId: json['partyId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemCategorySummary overridesInvoiceItemCategorySummary(Map<String, dynamic> map) {
    return InvoiceItemCategorySummary(
        entityId: create_id_from('InvoiceItemCategorySummary', ['productCategoryId'], map),
        partyIdFrom: map['partyIdFrom'],
        quantityTotal: map['quantityTotal'],
        currencyUomId: map['currencyUomId'],
        productCategoryId: map['productCategoryId'],
        statusId: map['statusId'],
        productId: map['productId'],
        invoiceTypeId: map['invoiceTypeId'],
        amountTotal: map['amountTotal'],
        invoiceDate: map['invoiceDate'],
        partyId: map['partyId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemProductSummary extractInvoiceItemProductSummary(dynamic json) {
    return InvoiceItemProductSummary(
        entityId: create_id_from('InvoiceItemProductSummary', [], json),
        partyIdFrom: json['partyIdFrom'] as String,
        quantityTotal: json['quantityTotal'] as double,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        productId: json['productId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        amountTotal: json['amountTotal'] as double,
        invoiceDate: check_dt(json['invoiceDate']),
        partyId: json['partyId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemProductSummary overridesInvoiceItemProductSummary(Map<String, dynamic> map) {
    return InvoiceItemProductSummary(
        entityId: create_id_from('InvoiceItemProductSummary', [], map),
        partyIdFrom: map['partyIdFrom'],
        quantityTotal: map['quantityTotal'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        productId: map['productId'],
        invoiceTypeId: map['invoiceTypeId'],
        amountTotal: map['amountTotal'],
        invoiceDate: map['invoiceDate'],
        partyId: map['partyId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyExport extractPartyExport(dynamic json) {
    return PartyExport(
        entityId: create_id_from('PartyExport', ['partyId', 'companyPartyId', 'roleTypeId', 'contactMechPurposeTypeId', 'fromDate'], json),
        countryGeoId: json['countryGeoId'] as String,
        lastName: json['lastName'] as String,
        companyPartyId: json['companyPartyId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        telContactNumber: json['telContactNumber'] as String,
        address2: json['address2'] as String,
        city: json['city'] as String,
        address1: json['address1'] as String,
        companyName: json['companyName'] as String,
        postalCode: json['postalCode'] as String,
        telAreaCode: json['telAreaCode'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        telCountryCode: json['telCountryCode'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        emailAddress: json['emailAddress'] as String,
        statusId: json['statusId'] as String,
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        middleName: json['middleName'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyExport overridesPartyExport(Map<String, dynamic> map) {
    return PartyExport(
        entityId: create_id_from('PartyExport', ['partyId', 'companyPartyId', 'roleTypeId', 'contactMechPurposeTypeId', 'fromDate'], map),
        countryGeoId: map['countryGeoId'],
        lastName: map['lastName'],
        companyPartyId: map['companyPartyId'],
        roleTypeId: map['roleTypeId'],
        telContactNumber: map['telContactNumber'],
        address2: map['address2'],
        city: map['city'],
        address1: map['address1'],
        companyName: map['companyName'],
        postalCode: map['postalCode'],
        telAreaCode: map['telAreaCode'],
        contactMechTypeId: map['contactMechTypeId'],
        telCountryCode: map['telCountryCode'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        emailAddress: map['emailAddress'],
        statusId: map['statusId'],
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        middleName: map['middleName'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}