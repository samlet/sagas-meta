import 'package:sagas_meta/src/models/accounting_invoice.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingInvoiceJsonifier{
  static AgreementContentAndInfo extractAgreementContentAndInfo(dynamic json) {
    return AgreementContentAndInfo(
        entityId: create_id_from('AgreementContentAndInfo', ['fromDate', 'agreementId', 'contentId', 'agreementItemSeqId', 'agreementContentTypeId', 'drDataResourceId'], json),
        drDataResourceId: json['drDataResourceId'] as String,
        drSurveyResponseId: json['drSurveyResponseId'] as String,
        ownerContentId: json['ownerContentId'] as String,
        drStatusId: json['drStatusId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        drRelatedDetailId: json['drRelatedDetailId'] as String,
        drDataCategoryId: json['drDataCategoryId'] as String,
        drIsPublic: json['drIsPublic'] as String,
        drDataResourceTypeId: json['drDataResourceTypeId'] as String,
        drCreatedByUserLogin: json['drCreatedByUserLogin'] as String,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        drDataTemplateTypeId: json['drDataTemplateTypeId'] as String,
        agreementId: json['agreementId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        drSurveyId: json['drSurveyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        drObjectInfo: json['drObjectInfo'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        drCharacterSetId: json['drCharacterSetId'] as String,
        drLastModifiedByUserLogin: json['drLastModifiedByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        fromDate: check_dt(json['fromDate']),
        drCreatedDate: check_dt(json['drCreatedDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        drLastModifiedDate: check_dt(json['drLastModifiedDate']),
        drDataResourceName: json['drDataResourceName'] as String,
        drDataSourceId: json['drDataSourceId'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        drMimeTypeId: json['drMimeTypeId'] as String,
        drLocaleString: json['drLocaleString'] as String,
        agreementContentTypeId: json['agreementContentTypeId'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementContentAndInfo overridesAgreementContentAndInfo(Map<String, dynamic> map) {
    return AgreementContentAndInfo(
        entityId: create_id_from('AgreementContentAndInfo', ['fromDate', 'agreementId', 'contentId', 'agreementItemSeqId', 'agreementContentTypeId', 'drDataResourceId'], map),
        drDataResourceId: map['drDataResourceId'],
        drSurveyResponseId: map['drSurveyResponseId'],
        ownerContentId: map['ownerContentId'],
        drStatusId: map['drStatusId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        drRelatedDetailId: map['drRelatedDetailId'],
        drDataCategoryId: map['drDataCategoryId'],
        drIsPublic: map['drIsPublic'],
        drDataResourceTypeId: map['drDataResourceTypeId'],
        drCreatedByUserLogin: map['drCreatedByUserLogin'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        drDataTemplateTypeId: map['drDataTemplateTypeId'],
        agreementId: map['agreementId'],
        dataResourceId: map['dataResourceId'],
        drSurveyId: map['drSurveyId'],
        createdByUserLogin: map['createdByUserLogin'],
        drObjectInfo: map['drObjectInfo'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        drCharacterSetId: map['drCharacterSetId'],
        drLastModifiedByUserLogin: map['drLastModifiedByUserLogin'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        fromDate: map['fromDate'],
        drCreatedDate: map['drCreatedDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        drLastModifiedDate: map['drLastModifiedDate'],
        drDataResourceName: map['drDataResourceName'],
        drDataSourceId: map['drDataSourceId'],
        decoratorContentId: map['decoratorContentId'],
        drMimeTypeId: map['drMimeTypeId'],
        drLocaleString: map['drLocaleString'],
        agreementContentTypeId: map['agreementContentTypeId'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvItemAndOrdItem extractInvItemAndOrdItem(dynamic json) {
    return InvItemAndOrdItem(
        entityId: create_id_from('InvItemAndOrdItem', ['orderId', 'orderItemSeqId', 'invoiceItemSeqId', 'invoiceId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        overrideOrgPartyId: json['overrideOrgPartyId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        taxableFlag: json['taxableFlag'] as String,
        taxAuthorityRateSeqId: json['taxAuthorityRateSeqId'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        description: json['description'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        uomId: json['uomId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        parentInvoiceId: json['parentInvoiceId'] as String,
        parentInvoiceItemSeqId: json['parentInvoiceItemSeqId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        invoiceId: json['invoiceId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvItemAndOrdItem overridesInvItemAndOrdItem(Map<String, dynamic> map) {
    return InvItemAndOrdItem(
        entityId: create_id_from('InvItemAndOrdItem', ['orderId', 'orderItemSeqId', 'invoiceItemSeqId', 'invoiceId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        amount: map['amount'],
        quantity: map['quantity'],
        productId: map['productId'],
        orderId: map['orderId'],
        overrideOrgPartyId: map['overrideOrgPartyId'],
        productFeatureId: map['productFeatureId'],
        taxableFlag: map['taxableFlag'],
        taxAuthorityRateSeqId: map['taxAuthorityRateSeqId'],
        overrideGlAccountId: map['overrideGlAccountId'],
        description: map['description'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        uomId: map['uomId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        inventoryItemId: map['inventoryItemId'],
        taxAuthPartyId: map['taxAuthPartyId'],
        parentInvoiceId: map['parentInvoiceId'],
        parentInvoiceItemSeqId: map['parentInvoiceItemSeqId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        invoiceId: map['invoiceId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Invoice extractInvoice(dynamic json) {
    return Invoice(
        entityId: create_id_from('Invoice', ['invoiceId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        roleTypeId: json['roleTypeId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        dueDate: check_dt(json['dueDate']),
        description: json['description'] as String,
        billingAccountId: json['billingAccountId'] as String,
        invoiceDate: check_dt(json['invoiceDate']),
        contactMechId: json['contactMechId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        paidDate: check_dt(json['paidDate']),
        referenceNumber: json['referenceNumber'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceMessage: json['invoiceMessage'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Invoice overridesInvoice(Map<String, dynamic> map) {
    return Invoice(
        entityId: create_id_from('Invoice', ['invoiceId'], map),
        partyIdFrom: map['partyIdFrom'],
        roleTypeId: map['roleTypeId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        invoiceTypeId: map['invoiceTypeId'],
        dueDate: map['dueDate'],
        description: map['description'],
        billingAccountId: map['billingAccountId'],
        invoiceDate: map['invoiceDate'],
        contactMechId: map['contactMechId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        paidDate: map['paidDate'],
        referenceNumber: map['referenceNumber'],
        invoiceId: map['invoiceId'],
        invoiceMessage: map['invoiceMessage'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceAndApplAndPayment extractInvoiceAndApplAndPayment(dynamic json) {
    return InvoiceAndApplAndPayment(
        entityId: create_id_from('InvoiceAndApplAndPayment', ['invoiceId', 'paymentApplicationId', 'pmPaymentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        toPaymentId: json['toPaymentId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        dueDate: check_dt(json['dueDate']),
        description: json['description'] as String,
        pmFinAccountTransId: json['pmFinAccountTransId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        pmPaymentTypeId: json['pmPaymentTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        pmPaymentRefNum: json['pmPaymentRefNum'] as String,
        paidDate: check_dt(json['paidDate']),
        referenceNumber: json['referenceNumber'] as String,
        paymentId: json['paymentId'] as String,
        pmPaymentMethodId: json['pmPaymentMethodId'] as String,
        pmActualCurrencyUomId: json['pmActualCurrencyUomId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        pmPaymentId: json['pmPaymentId'] as String,
        pmCurrencyUomId: json['pmCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        pmOverrideGlAccountId: json['pmOverrideGlAccountId'] as String,
        pmAmount: json['pmAmount'] as double,
        pmRoleTypeIdTo: json['pmRoleTypeIdTo'] as String,
        pmPaymentMethodTypeId: json['pmPaymentMethodTypeId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        pmPartyIdFrom: json['pmPartyIdFrom'] as String,
        amountApplied: json['amountApplied'] as double,
        pmComments: json['pmComments'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        paymentApplicationId: json['paymentApplicationId'] as String,
        invoiceDate: check_dt(json['invoiceDate']),
        pmActualCurrencyAmount: json['pmActualCurrencyAmount'] as double,
        pmEffectiveDate: check_dt(json['pmEffectiveDate']),
        pmStatusId: json['pmStatusId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        pmPartyIdTo: json['pmPartyIdTo'] as String,
        statusId: json['statusId'] as String,
        pmPaymentGatewayResponseId: json['pmPaymentGatewayResponseId'] as String,
        pmPaymentPreferenceId: json['pmPaymentPreferenceId'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceMessage: json['invoiceMessage'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceAndApplAndPayment overridesInvoiceAndApplAndPayment(Map<String, dynamic> map) {
    return InvoiceAndApplAndPayment(
        entityId: create_id_from('InvoiceAndApplAndPayment', ['invoiceId', 'paymentApplicationId', 'pmPaymentId'], map),
        partyIdFrom: map['partyIdFrom'],
        recurrenceInfoId: map['recurrenceInfoId'],
        toPaymentId: map['toPaymentId'],
        invoiceTypeId: map['invoiceTypeId'],
        dueDate: map['dueDate'],
        description: map['description'],
        pmFinAccountTransId: map['pmFinAccountTransId'],
        billingAccountId: map['billingAccountId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        pmPaymentTypeId: map['pmPaymentTypeId'],
        contactMechId: map['contactMechId'],
        pmPaymentRefNum: map['pmPaymentRefNum'],
        paidDate: map['paidDate'],
        referenceNumber: map['referenceNumber'],
        paymentId: map['paymentId'],
        pmPaymentMethodId: map['pmPaymentMethodId'],
        pmActualCurrencyUomId: map['pmActualCurrencyUomId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        pmPaymentId: map['pmPaymentId'],
        pmCurrencyUomId: map['pmCurrencyUomId'],
        partyId: map['partyId'],
        pmOverrideGlAccountId: map['pmOverrideGlAccountId'],
        pmAmount: map['pmAmount'],
        pmRoleTypeIdTo: map['pmRoleTypeIdTo'],
        pmPaymentMethodTypeId: map['pmPaymentMethodTypeId'],
        roleTypeId: map['roleTypeId'],
        pmPartyIdFrom: map['pmPartyIdFrom'],
        amountApplied: map['amountApplied'],
        pmComments: map['pmComments'],
        overrideGlAccountId: map['overrideGlAccountId'],
        paymentApplicationId: map['paymentApplicationId'],
        invoiceDate: map['invoiceDate'],
        pmActualCurrencyAmount: map['pmActualCurrencyAmount'],
        pmEffectiveDate: map['pmEffectiveDate'],
        pmStatusId: map['pmStatusId'],
        currencyUomId: map['currencyUomId'],
        pmPartyIdTo: map['pmPartyIdTo'],
        statusId: map['statusId'],
        pmPaymentGatewayResponseId: map['pmPaymentGatewayResponseId'],
        pmPaymentPreferenceId: map['pmPaymentPreferenceId'],
        invoiceId: map['invoiceId'],
        invoiceMessage: map['invoiceMessage'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceAndRole extractInvoiceAndRole(dynamic json) {
    return InvoiceAndRole(
        entityId: create_id_from('InvoiceAndRole', ['invoiceRolePartyId', 'invoiceRoleTypeId', 'invoiceId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        roleTypeId: json['roleTypeId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        dueDate: check_dt(json['dueDate']),
        description: json['description'] as String,
        billingAccountId: json['billingAccountId'] as String,
        invoiceDate: check_dt(json['invoiceDate']),
        invoiceRolePartyId: json['invoiceRolePartyId'] as String,
        contactMechId: json['contactMechId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        paidDate: check_dt(json['paidDate']),
        invoiceRoleTypeId: json['invoiceRoleTypeId'] as String,
        referenceNumber: json['referenceNumber'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceMessage: json['invoiceMessage'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceAndRole overridesInvoiceAndRole(Map<String, dynamic> map) {
    return InvoiceAndRole(
        entityId: create_id_from('InvoiceAndRole', ['invoiceRolePartyId', 'invoiceRoleTypeId', 'invoiceId'], map),
        partyIdFrom: map['partyIdFrom'],
        roleTypeId: map['roleTypeId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        invoiceTypeId: map['invoiceTypeId'],
        dueDate: map['dueDate'],
        description: map['description'],
        billingAccountId: map['billingAccountId'],
        invoiceDate: map['invoiceDate'],
        invoiceRolePartyId: map['invoiceRolePartyId'],
        contactMechId: map['contactMechId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        paidDate: map['paidDate'],
        invoiceRoleTypeId: map['invoiceRoleTypeId'],
        referenceNumber: map['referenceNumber'],
        invoiceId: map['invoiceId'],
        invoiceMessage: map['invoiceMessage'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceAndType extractInvoiceAndType(dynamic json) {
    return InvoiceAndType(
        entityId: create_id_from('InvoiceAndType', ['invoiceId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        roleTypeId: json['roleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        dueDate: check_dt(json['dueDate']),
        description: json['description'] as String,
        billingAccountId: json['billingAccountId'] as String,
        invoiceDate: check_dt(json['invoiceDate']),
        contactMechId: json['contactMechId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        paidDate: check_dt(json['paidDate']),
        invoiceTypeDesc: json['invoiceTypeDesc'] as String,
        referenceNumber: json['referenceNumber'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceMessage: json['invoiceMessage'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceAndType overridesInvoiceAndType(Map<String, dynamic> map) {
    return InvoiceAndType(
        entityId: create_id_from('InvoiceAndType', ['invoiceId'], map),
        partyIdFrom: map['partyIdFrom'],
        roleTypeId: map['roleTypeId'],
        parentTypeId: map['parentTypeId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        invoiceTypeId: map['invoiceTypeId'],
        dueDate: map['dueDate'],
        description: map['description'],
        billingAccountId: map['billingAccountId'],
        invoiceDate: map['invoiceDate'],
        contactMechId: map['contactMechId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        paidDate: map['paidDate'],
        invoiceTypeDesc: map['invoiceTypeDesc'],
        referenceNumber: map['referenceNumber'],
        invoiceId: map['invoiceId'],
        invoiceMessage: map['invoiceMessage'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceAttribute extractInvoiceAttribute(dynamic json) {
    return InvoiceAttribute(
        entityId: create_id_from('InvoiceAttribute', ['invoiceId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        invoiceId: json['invoiceId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceAttribute overridesInvoiceAttribute(Map<String, dynamic> map) {
    return InvoiceAttribute(
        entityId: create_id_from('InvoiceAttribute', ['invoiceId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        invoiceId: map['invoiceId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceContactMech extractInvoiceContactMech(dynamic json) {
    return InvoiceContactMech(
        entityId: create_id_from('InvoiceContactMech', ['invoiceId', 'contactMechPurposeTypeId', 'contactMechId'], json),
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        invoiceId: json['invoiceId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceContactMech overridesInvoiceContactMech(Map<String, dynamic> map) {
    return InvoiceContactMech(
        entityId: create_id_from('InvoiceContactMech', ['invoiceId', 'contactMechPurposeTypeId', 'contactMechId'], map),
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        invoiceId: map['invoiceId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceContent extractInvoiceContent(dynamic json) {
    return InvoiceContent(
        entityId: create_id_from('InvoiceContent', ['contentId', 'invoiceId', 'invoiceContentTypeId', 'fromDate'], json),
        invoiceContentTypeId: json['invoiceContentTypeId'] as String,
        fromDate: check_dt(json['fromDate']),
        contentId: json['contentId'] as String,
        invoiceId: json['invoiceId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceContent overridesInvoiceContent(Map<String, dynamic> map) {
    return InvoiceContent(
        entityId: create_id_from('InvoiceContent', ['contentId', 'invoiceId', 'invoiceContentTypeId', 'fromDate'], map),
        invoiceContentTypeId: map['invoiceContentTypeId'],
        fromDate: map['fromDate'],
        contentId: map['contentId'],
        invoiceId: map['invoiceId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceContentAndInfo extractInvoiceContentAndInfo(dynamic json) {
    return InvoiceContentAndInfo(
        entityId: create_id_from('InvoiceContentAndInfo', ['invoiceContentTypeId', 'fromDate', 'contentId', 'invoiceId', 'drDataResourceId'], json),
        drDataResourceId: json['drDataResourceId'] as String,
        drSurveyResponseId: json['drSurveyResponseId'] as String,
        ownerContentId: json['ownerContentId'] as String,
        drStatusId: json['drStatusId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        drRelatedDetailId: json['drRelatedDetailId'] as String,
        drDataCategoryId: json['drDataCategoryId'] as String,
        drIsPublic: json['drIsPublic'] as String,
        drDataResourceTypeId: json['drDataResourceTypeId'] as String,
        drCreatedByUserLogin: json['drCreatedByUserLogin'] as String,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        drDataTemplateTypeId: json['drDataTemplateTypeId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        drSurveyId: json['drSurveyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        drObjectInfo: json['drObjectInfo'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        drCharacterSetId: json['drCharacterSetId'] as String,
        drLastModifiedByUserLogin: json['drLastModifiedByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        invoiceContentTypeId: json['invoiceContentTypeId'] as String,
        fromDate: check_dt(json['fromDate']),
        drCreatedDate: check_dt(json['drCreatedDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        drLastModifiedDate: check_dt(json['drLastModifiedDate']),
        drDataResourceName: json['drDataResourceName'] as String,
        drDataSourceId: json['drDataSourceId'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        drMimeTypeId: json['drMimeTypeId'] as String,
        invoiceId: json['invoiceId'] as String,
        drLocaleString: json['drLocaleString'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceContentAndInfo overridesInvoiceContentAndInfo(Map<String, dynamic> map) {
    return InvoiceContentAndInfo(
        entityId: create_id_from('InvoiceContentAndInfo', ['invoiceContentTypeId', 'fromDate', 'contentId', 'invoiceId', 'drDataResourceId'], map),
        drDataResourceId: map['drDataResourceId'],
        drSurveyResponseId: map['drSurveyResponseId'],
        ownerContentId: map['ownerContentId'],
        drStatusId: map['drStatusId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        drRelatedDetailId: map['drRelatedDetailId'],
        drDataCategoryId: map['drDataCategoryId'],
        drIsPublic: map['drIsPublic'],
        drDataResourceTypeId: map['drDataResourceTypeId'],
        drCreatedByUserLogin: map['drCreatedByUserLogin'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        drDataTemplateTypeId: map['drDataTemplateTypeId'],
        dataResourceId: map['dataResourceId'],
        drSurveyId: map['drSurveyId'],
        createdByUserLogin: map['createdByUserLogin'],
        drObjectInfo: map['drObjectInfo'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        drCharacterSetId: map['drCharacterSetId'],
        drLastModifiedByUserLogin: map['drLastModifiedByUserLogin'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        invoiceContentTypeId: map['invoiceContentTypeId'],
        fromDate: map['fromDate'],
        drCreatedDate: map['drCreatedDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        drLastModifiedDate: map['drLastModifiedDate'],
        drDataResourceName: map['drDataResourceName'],
        drDataSourceId: map['drDataSourceId'],
        decoratorContentId: map['decoratorContentId'],
        drMimeTypeId: map['drMimeTypeId'],
        invoiceId: map['invoiceId'],
        drLocaleString: map['drLocaleString'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceContentType extractInvoiceContentType(dynamic json) {
    return InvoiceContentType(
        entityId: create_id_from('InvoiceContentType', ['invoiceContentTypeId'], json),
        invoiceContentTypeId: json['invoiceContentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceContentType overridesInvoiceContentType(Map<String, dynamic> map) {
    return InvoiceContentType(
        entityId: create_id_from('InvoiceContentType', ['invoiceContentTypeId'], map),
        invoiceContentTypeId: map['invoiceContentTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItem extractInvoiceItem(dynamic json) {
    return InvoiceItem(
        entityId: create_id_from('InvoiceItem', ['invoiceId', 'invoiceItemSeqId'], json),
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        overrideOrgPartyId: json['overrideOrgPartyId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        taxableFlag: json['taxableFlag'] as String,
        taxAuthorityRateSeqId: json['taxAuthorityRateSeqId'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        description: json['description'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        uomId: json['uomId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        parentInvoiceId: json['parentInvoiceId'] as String,
        parentInvoiceItemSeqId: json['parentInvoiceItemSeqId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        invoiceId: json['invoiceId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItem overridesInvoiceItem(Map<String, dynamic> map) {
    return InvoiceItem(
        entityId: create_id_from('InvoiceItem', ['invoiceId', 'invoiceItemSeqId'], map),
        amount: map['amount'],
        quantity: map['quantity'],
        productId: map['productId'],
        overrideOrgPartyId: map['overrideOrgPartyId'],
        productFeatureId: map['productFeatureId'],
        taxableFlag: map['taxableFlag'],
        taxAuthorityRateSeqId: map['taxAuthorityRateSeqId'],
        overrideGlAccountId: map['overrideGlAccountId'],
        description: map['description'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        uomId: map['uomId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        inventoryItemId: map['inventoryItemId'],
        taxAuthPartyId: map['taxAuthPartyId'],
        parentInvoiceId: map['parentInvoiceId'],
        parentInvoiceItemSeqId: map['parentInvoiceItemSeqId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        invoiceId: map['invoiceId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemAndAssocProduct extractInvoiceItemAndAssocProduct(dynamic json) {
    return InvoiceItemAndAssocProduct(
        entityId: create_id_from('InvoiceItemAndAssocProduct', ['productId', 'invoiceItemSeqIdFrom', 'fromDate', 'invoiceIdFrom', 'invoiceItemSeqIdTo', 'invoiceItemAssocTypeId', 'invoiceIdTo'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        invoiceItemSeqIdFrom: json['invoiceItemSeqIdFrom'] as String,
        productName: json['productName'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        invoiceIdFrom: json['invoiceIdFrom'] as String,
        invoiceItemSeqIdTo: json['invoiceItemSeqIdTo'] as String,
        termAmount: json['termAmount'] as double,
        invoiceItemAssocTypeId: json['invoiceItemAssocTypeId'] as String,
        invoiceIdTo: json['invoiceIdTo'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemAndAssocProduct overridesInvoiceItemAndAssocProduct(Map<String, dynamic> map) {
    return InvoiceItemAndAssocProduct(
        entityId: create_id_from('InvoiceItemAndAssocProduct', ['productId', 'invoiceItemSeqIdFrom', 'fromDate', 'invoiceIdFrom', 'invoiceItemSeqIdTo', 'invoiceItemAssocTypeId', 'invoiceIdTo'], map),
        partyIdFrom: map['partyIdFrom'],
        amount: map['amount'],
        quantity: map['quantity'],
        productId: map['productId'],
        invoiceItemSeqIdFrom: map['invoiceItemSeqIdFrom'],
        productName: map['productName'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        invoiceIdFrom: map['invoiceIdFrom'],
        invoiceItemSeqIdTo: map['invoiceItemSeqIdTo'],
        termAmount: map['termAmount'],
        invoiceItemAssocTypeId: map['invoiceItemAssocTypeId'],
        invoiceIdTo: map['invoiceIdTo'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemAndShipmentView extractInvoiceItemAndShipmentView(dynamic json) {
    return InvoiceItemAndShipmentView(
        entityId: create_id_from('InvoiceItemAndShipmentView', ['invoiceItemSeqId', 'invoiceId', 'shipmentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        latestCancelDate: check_dt(json['latestCancelDate']),
        additionalShippingCharge: json['additionalShippingCharge'] as double,
        destinationTelecomNumberId: json['destinationTelecomNumberId'] as String,
        parentInvoiceItemSeqId: json['parentInvoiceItemSeqId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        estimatedShipWorkEffId: json['estimatedShipWorkEffId'] as String,
        productId: json['productId'] as String,
        overrideOrgPartyId: json['overrideOrgPartyId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        taxAuthorityRateSeqId: json['taxAuthorityRateSeqId'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        uomId: json['uomId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        statusId: json['statusId'] as String,
        destinationContactMechId: json['destinationContactMechId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        estimatedShipDate: check_dt(json['estimatedShipDate']),
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        picklistBinId: json['picklistBinId'] as String,
        primaryShipGroupSeqId: json['primaryShipGroupSeqId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        description: json['description'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        estimatedReadyDate: check_dt(json['estimatedReadyDate']),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        estimatedArrivalWorkEffId: json['estimatedArrivalWorkEffId'] as String,
        parentInvoiceId: json['parentInvoiceId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        estimatedShipCost: json['estimatedShipCost'] as double,
        destinationFacilityId: json['destinationFacilityId'] as String,
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        addtlShippingChargeDesc: json['addtlShippingChargeDesc'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        originContactMechId: json['originContactMechId'] as String,
        taxableFlag: json['taxableFlag'] as String,
        primaryReturnId: json['primaryReturnId'] as String,
        originFacilityId: json['originFacilityId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        shipmentId: json['shipmentId'] as String,
        originTelecomNumberId: json['originTelecomNumberId'] as String,
        invoiceId: json['invoiceId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        shipmentTypeId: json['shipmentTypeId'] as String,
        handlingInstructions: json['handlingInstructions'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemAndShipmentView overridesInvoiceItemAndShipmentView(Map<String, dynamic> map) {
    return InvoiceItemAndShipmentView(
        entityId: create_id_from('InvoiceItemAndShipmentView', ['invoiceItemSeqId', 'invoiceId', 'shipmentId'], map),
        partyIdFrom: map['partyIdFrom'],
        latestCancelDate: map['latestCancelDate'],
        additionalShippingCharge: map['additionalShippingCharge'],
        destinationTelecomNumberId: map['destinationTelecomNumberId'],
        parentInvoiceItemSeqId: map['parentInvoiceItemSeqId'],
        createdByUserLogin: map['createdByUserLogin'],
        estimatedShipWorkEffId: map['estimatedShipWorkEffId'],
        productId: map['productId'],
        overrideOrgPartyId: map['overrideOrgPartyId'],
        productFeatureId: map['productFeatureId'],
        taxAuthorityRateSeqId: map['taxAuthorityRateSeqId'],
        overrideGlAccountId: map['overrideGlAccountId'],
        uomId: map['uomId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        inventoryItemId: map['inventoryItemId'],
        statusId: map['statusId'],
        destinationContactMechId: map['destinationContactMechId'],
        primaryOrderId: map['primaryOrderId'],
        estimatedShipDate: map['estimatedShipDate'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        picklistBinId: map['picklistBinId'],
        primaryShipGroupSeqId: map['primaryShipGroupSeqId'],
        salesOpportunityId: map['salesOpportunityId'],
        description: map['description'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        estimatedReadyDate: map['estimatedReadyDate'],
        taxAuthPartyId: map['taxAuthPartyId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        estimatedArrivalWorkEffId: map['estimatedArrivalWorkEffId'],
        parentInvoiceId: map['parentInvoiceId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        estimatedShipCost: map['estimatedShipCost'],
        destinationFacilityId: map['destinationFacilityId'],
        amount: map['amount'],
        quantity: map['quantity'],
        addtlShippingChargeDesc: map['addtlShippingChargeDesc'],
        lastModifiedDate: map['lastModifiedDate'],
        originContactMechId: map['originContactMechId'],
        taxableFlag: map['taxableFlag'],
        primaryReturnId: map['primaryReturnId'],
        originFacilityId: map['originFacilityId'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        shipmentId: map['shipmentId'],
        originTelecomNumberId: map['originTelecomNumberId'],
        invoiceId: map['invoiceId'],
        partyIdTo: map['partyIdTo'],
        shipmentTypeId: map['shipmentTypeId'],
        handlingInstructions: map['handlingInstructions'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemAssoc extractInvoiceItemAssoc(dynamic json) {
    return InvoiceItemAssoc(
        entityId: create_id_from('InvoiceItemAssoc', ['invoiceIdFrom', 'invoiceItemSeqIdFrom', 'invoiceIdTo', 'invoiceItemSeqIdTo', 'invoiceItemAssocTypeId', 'fromDate'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        invoiceItemSeqIdFrom: json['invoiceItemSeqIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        invoiceIdFrom: json['invoiceIdFrom'] as String,
        invoiceItemSeqIdTo: json['invoiceItemSeqIdTo'] as String,
        invoiceItemAssocTypeId: json['invoiceItemAssocTypeId'] as String,
        invoiceIdTo: json['invoiceIdTo'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemAssoc overridesInvoiceItemAssoc(Map<String, dynamic> map) {
    return InvoiceItemAssoc(
        entityId: create_id_from('InvoiceItemAssoc', ['invoiceIdFrom', 'invoiceItemSeqIdFrom', 'invoiceIdTo', 'invoiceItemSeqIdTo', 'invoiceItemAssocTypeId', 'fromDate'], map),
        partyIdFrom: map['partyIdFrom'],
        amount: map['amount'],
        quantity: map['quantity'],
        invoiceItemSeqIdFrom: map['invoiceItemSeqIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        invoiceIdFrom: map['invoiceIdFrom'],
        invoiceItemSeqIdTo: map['invoiceItemSeqIdTo'],
        invoiceItemAssocTypeId: map['invoiceItemAssocTypeId'],
        invoiceIdTo: map['invoiceIdTo'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemAssocType extractInvoiceItemAssocType(dynamic json) {
    return InvoiceItemAssocType(
        entityId: create_id_from('InvoiceItemAssocType', ['invoiceItemAssocTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        invoiceItemAssocTypeId: json['invoiceItemAssocTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemAssocType overridesInvoiceItemAssocType(Map<String, dynamic> map) {
    return InvoiceItemAssocType(
        entityId: create_id_from('InvoiceItemAssocType', ['invoiceItemAssocTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        invoiceItemAssocTypeId: map['invoiceItemAssocTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemAttribute extractInvoiceItemAttribute(dynamic json) {
    return InvoiceItemAttribute(
        entityId: create_id_from('InvoiceItemAttribute', ['invoiceId', 'invoiceItemSeqId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemAttribute overridesInvoiceItemAttribute(Map<String, dynamic> map) {
    return InvoiceItemAttribute(
        entityId: create_id_from('InvoiceItemAttribute', ['invoiceId', 'invoiceItemSeqId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        invoiceId: map['invoiceId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemType extractInvoiceItemType(dynamic json) {
    return InvoiceItemType(
        entityId: create_id_from('InvoiceItemType', ['invoiceItemTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        defaultGlAccountId: json['defaultGlAccountId'] as String,
        description: json['description'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemType overridesInvoiceItemType(Map<String, dynamic> map) {
    return InvoiceItemType(
        entityId: create_id_from('InvoiceItemType', ['invoiceItemTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        defaultGlAccountId: map['defaultGlAccountId'],
        description: map['description'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemTypeAttr extractInvoiceItemTypeAttr(dynamic json) {
    return InvoiceItemTypeAttr(
        entityId: create_id_from('InvoiceItemTypeAttr', ['invoiceItemTypeId', 'attrName'], json),
        description: json['description'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemTypeAttr overridesInvoiceItemTypeAttr(Map<String, dynamic> map) {
    return InvoiceItemTypeAttr(
        entityId: create_id_from('InvoiceItemTypeAttr', ['invoiceItemTypeId', 'attrName'], map),
        description: map['description'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemTypeGlAccount extractInvoiceItemTypeGlAccount(dynamic json) {
    return InvoiceItemTypeGlAccount(
        entityId: create_id_from('InvoiceItemTypeGlAccount', ['invoiceItemTypeId', 'organizationPartyId'], json),
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemTypeGlAccount overridesInvoiceItemTypeGlAccount(Map<String, dynamic> map) {
    return InvoiceItemTypeGlAccount(
        entityId: create_id_from('InvoiceItemTypeGlAccount', ['invoiceItemTypeId', 'organizationPartyId'], map),
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceItemTypeMap extractInvoiceItemTypeMap(dynamic json) {
    return InvoiceItemTypeMap(
        entityId: create_id_from('InvoiceItemTypeMap', ['invoiceItemMapKey', 'invoiceTypeId'], json),
        invoiceItemMapKey: json['invoiceItemMapKey'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceItemTypeMap overridesInvoiceItemTypeMap(Map<String, dynamic> map) {
    return InvoiceItemTypeMap(
        entityId: create_id_from('InvoiceItemTypeMap', ['invoiceItemMapKey', 'invoiceTypeId'], map),
        invoiceItemMapKey: map['invoiceItemMapKey'],
        invoiceTypeId: map['invoiceTypeId'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceNote extractInvoiceNote(dynamic json) {
    return InvoiceNote(
        entityId: create_id_from('InvoiceNote', ['invoiceId', 'noteId'], json),
        invoiceId: json['invoiceId'] as String,
        noteId: json['noteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceNote overridesInvoiceNote(Map<String, dynamic> map) {
    return InvoiceNote(
        entityId: create_id_from('InvoiceNote', ['invoiceId', 'noteId'], map),
        invoiceId: map['invoiceId'],
        noteId: map['noteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceRole extractInvoiceRole(dynamic json) {
    return InvoiceRole(
        entityId: create_id_from('InvoiceRole', ['invoiceId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        datetimePerformed: check_dt(json['datetimePerformed']),
        percentage: json['percentage'] as double,
        invoiceId: json['invoiceId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceRole overridesInvoiceRole(Map<String, dynamic> map) {
    return InvoiceRole(
        entityId: create_id_from('InvoiceRole', ['invoiceId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        datetimePerformed: map['datetimePerformed'],
        percentage: map['percentage'],
        invoiceId: map['invoiceId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceStatus extractInvoiceStatus(dynamic json) {
    return InvoiceStatus(
        entityId: create_id_from('InvoiceStatus', ['statusId', 'invoiceId', 'statusDate'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        invoiceId: json['invoiceId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceStatus overridesInvoiceStatus(Map<String, dynamic> map) {
    return InvoiceStatus(
        entityId: create_id_from('InvoiceStatus', ['statusId', 'invoiceId', 'statusDate'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        invoiceId: map['invoiceId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceTerm extractInvoiceTerm(dynamic json) {
    return InvoiceTerm(
        entityId: create_id_from('InvoiceTerm', ['invoiceTermId'], json),
        textValue: json['textValue'] as String,
        termDays: json['termDays'] as int,
        termTypeId: json['termTypeId'] as String,
        description: json['description'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        uomId: json['uomId'] as String,
        termValue: json['termValue'] as double,
        invoiceTermId: json['invoiceTermId'] as String,
        invoiceId: json['invoiceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceTerm overridesInvoiceTerm(Map<String, dynamic> map) {
    return InvoiceTerm(
        entityId: create_id_from('InvoiceTerm', ['invoiceTermId'], map),
        textValue: map['textValue'],
        termDays: map['termDays'],
        termTypeId: map['termTypeId'],
        description: map['description'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        uomId: map['uomId'],
        termValue: map['termValue'],
        invoiceTermId: map['invoiceTermId'],
        invoiceId: map['invoiceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceTermAttribute extractInvoiceTermAttribute(dynamic json) {
    return InvoiceTermAttribute(
        entityId: create_id_from('InvoiceTermAttribute', ['invoiceTermId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        invoiceTermId: json['invoiceTermId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceTermAttribute overridesInvoiceTermAttribute(Map<String, dynamic> map) {
    return InvoiceTermAttribute(
        entityId: create_id_from('InvoiceTermAttribute', ['invoiceTermId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        invoiceTermId: map['invoiceTermId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceType extractInvoiceType(dynamic json) {
    return InvoiceType(
        entityId: create_id_from('InvoiceType', ['invoiceTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceType overridesInvoiceType(Map<String, dynamic> map) {
    return InvoiceType(
        entityId: create_id_from('InvoiceType', ['invoiceTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        invoiceTypeId: map['invoiceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InvoiceTypeAttr extractInvoiceTypeAttr(dynamic json) {
    return InvoiceTypeAttr(
        entityId: create_id_from('InvoiceTypeAttr', ['invoiceTypeId', 'attrName'], json),
        invoiceTypeId: json['invoiceTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InvoiceTypeAttr overridesInvoiceTypeAttr(Map<String, dynamic> map) {
    return InvoiceTypeAttr(
        entityId: create_id_from('InvoiceTypeAttr', ['invoiceTypeId', 'attrName'], map),
        invoiceTypeId: map['invoiceTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}