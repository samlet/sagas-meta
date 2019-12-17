import 'package:sagas_meta/src/models/order_quote.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderQuoteJsonifier{
  static Quote extractQuote(dynamic json) {
    return Quote(
        entityId: create_id_from('Quote', ['quoteId'], json),
        salesChannelEnumId: json['salesChannelEnumId'] as String,
        description: json['description'] as String,
        quoteId: json['quoteId'] as String,
        validThruDate: check_dt(json['validThruDate']),
        quoteTypeId: json['quoteTypeId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        validFromDate: check_dt(json['validFromDate']),
        productStoreId: json['productStoreId'] as String,
        partyId: json['partyId'] as String,
        issueDate: check_dt(json['issueDate']),
        quoteName: json['quoteName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Quote overridesQuote(Map<String, dynamic> map) {
    return Quote(
        entityId: create_id_from('Quote', ['quoteId'], map),
        salesChannelEnumId: map['salesChannelEnumId'],
        description: map['description'],
        quoteId: map['quoteId'],
        validThruDate: map['validThruDate'],
        quoteTypeId: map['quoteTypeId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        validFromDate: map['validFromDate'],
        productStoreId: map['productStoreId'],
        partyId: map['partyId'],
        issueDate: map['issueDate'],
        quoteName: map['quoteName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteAdjustment extractQuoteAdjustment(dynamic json) {
    return QuoteAdjustment(
        entityId: create_id_from('QuoteAdjustment', ['quoteAdjustmentId'], json),
        customerReferenceId: json['customerReferenceId'] as String,
        correspondingProductId: json['correspondingProductId'] as String,
        includeInShipping: json['includeInShipping'] as String,
        description: json['description'] as String,
        exemptAmount: json['exemptAmount'] as double,
        productPromoId: json['productPromoId'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        quoteAdjustmentId: json['quoteAdjustmentId'] as String,
        primaryGeoId: json['primaryGeoId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        secondaryGeoId: json['secondaryGeoId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        sourceReferenceId: json['sourceReferenceId'] as String,
        quoteItemSeqId: json['quoteItemSeqId'] as String,
        productPromoRuleId: json['productPromoRuleId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        quoteId: json['quoteId'] as String,
        includeInTax: json['includeInTax'] as String,
        quoteAdjustmentTypeId: json['quoteAdjustmentTypeId'] as String,
        createdDate: check_dt(json['createdDate']),
        productPromoActionSeqId: json['productPromoActionSeqId'] as String,
        sourcePercentage: json['sourcePercentage'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteAdjustment overridesQuoteAdjustment(Map<String, dynamic> map) {
    return QuoteAdjustment(
        entityId: create_id_from('QuoteAdjustment', ['quoteAdjustmentId'], map),
        customerReferenceId: map['customerReferenceId'],
        correspondingProductId: map['correspondingProductId'],
        includeInShipping: map['includeInShipping'],
        description: map['description'],
        exemptAmount: map['exemptAmount'],
        productPromoId: map['productPromoId'],
        taxAuthPartyId: map['taxAuthPartyId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        quoteAdjustmentId: map['quoteAdjustmentId'],
        primaryGeoId: map['primaryGeoId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        secondaryGeoId: map['secondaryGeoId'],
        createdByUserLogin: map['createdByUserLogin'],
        amount: map['amount'],
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        sourceReferenceId: map['sourceReferenceId'],
        quoteItemSeqId: map['quoteItemSeqId'],
        productPromoRuleId: map['productPromoRuleId'],
        productFeatureId: map['productFeatureId'],
        overrideGlAccountId: map['overrideGlAccountId'],
        quoteId: map['quoteId'],
        includeInTax: map['includeInTax'],
        quoteAdjustmentTypeId: map['quoteAdjustmentTypeId'],
        createdDate: map['createdDate'],
        productPromoActionSeqId: map['productPromoActionSeqId'],
        sourcePercentage: map['sourcePercentage'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteAttribute extractQuoteAttribute(dynamic json) {
    return QuoteAttribute(
        entityId: create_id_from('QuoteAttribute', ['quoteId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        quoteId: json['quoteId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteAttribute overridesQuoteAttribute(Map<String, dynamic> map) {
    return QuoteAttribute(
        entityId: create_id_from('QuoteAttribute', ['quoteId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        quoteId: map['quoteId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteCoefficient extractQuoteCoefficient(dynamic json) {
    return QuoteCoefficient(
        entityId: create_id_from('QuoteCoefficient', ['quoteId', 'coeffName'], json),
        coeffValue: json['coeffValue'] as double,
        coeffName: json['coeffName'] as String,
        quoteId: json['quoteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteCoefficient overridesQuoteCoefficient(Map<String, dynamic> map) {
    return QuoteCoefficient(
        entityId: create_id_from('QuoteCoefficient', ['quoteId', 'coeffName'], map),
        coeffValue: map['coeffValue'],
        coeffName: map['coeffName'],
        quoteId: map['quoteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteItem extractQuoteItem(dynamic json) {
    return QuoteItem(
        entityId: create_id_from('QuoteItem', ['quoteId', 'quoteItemSeqId'], json),
        workEffortId: json['workEffortId'] as String,
        reservPersons: json['reservPersons'] as double,
        deliverableTypeId: json['deliverableTypeId'] as String,
        isPromo: json['isPromo'] as String,
        reservStart: check_dt(json['reservStart']),
        configId: json['configId'] as String,
        custRequestId: json['custRequestId'] as String,
        selectedAmount: json['selectedAmount'] as double,
        quantity: json['quantity'] as double,
        reservLength: json['reservLength'] as double,
        comments: json['comments'] as String,
        productId: json['productId'] as String,
        quoteItemSeqId: json['quoteItemSeqId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        quoteUnitPrice: json['quoteUnitPrice'] as double,
        uomId: json['uomId'] as String,
        estimatedDeliveryDate: check_dt(json['estimatedDeliveryDate']),
        quoteId: json['quoteId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        skillTypeId: json['skillTypeId'] as String,
        leadTimeDays: json['leadTimeDays'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteItem overridesQuoteItem(Map<String, dynamic> map) {
    return QuoteItem(
        entityId: create_id_from('QuoteItem', ['quoteId', 'quoteItemSeqId'], map),
        workEffortId: map['workEffortId'],
        reservPersons: map['reservPersons'],
        deliverableTypeId: map['deliverableTypeId'],
        isPromo: map['isPromo'],
        reservStart: map['reservStart'],
        configId: map['configId'],
        custRequestId: map['custRequestId'],
        selectedAmount: map['selectedAmount'],
        quantity: map['quantity'],
        reservLength: map['reservLength'],
        comments: map['comments'],
        productId: map['productId'],
        quoteItemSeqId: map['quoteItemSeqId'],
        productFeatureId: map['productFeatureId'],
        quoteUnitPrice: map['quoteUnitPrice'],
        uomId: map['uomId'],
        estimatedDeliveryDate: map['estimatedDeliveryDate'],
        quoteId: map['quoteId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        skillTypeId: map['skillTypeId'],
        leadTimeDays: map['leadTimeDays'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteNote extractQuoteNote(dynamic json) {
    return QuoteNote(
        entityId: create_id_from('QuoteNote', ['quoteId', 'noteId'], json),
        noteId: json['noteId'] as String,
        quoteId: json['quoteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteNote overridesQuoteNote(Map<String, dynamic> map) {
    return QuoteNote(
        entityId: create_id_from('QuoteNote', ['quoteId', 'noteId'], map),
        noteId: map['noteId'],
        quoteId: map['quoteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteNoteView extractQuoteNoteView(dynamic json) {
    return QuoteNoteView(
        entityId: create_id_from('QuoteNoteView', ['quoteId', 'noteId'], json),
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        noteInfo: json['noteInfo'] as String,
        noteId: json['noteId'] as String,
        quoteId: json['quoteId'] as String,
        noteParty: json['noteParty'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteNoteView overridesQuoteNoteView(Map<String, dynamic> map) {
    return QuoteNoteView(
        entityId: create_id_from('QuoteNoteView', ['quoteId', 'noteId'], map),
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        noteInfo: map['noteInfo'],
        noteId: map['noteId'],
        quoteId: map['quoteId'],
        noteParty: map['noteParty'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteRole extractQuoteRole(dynamic json) {
    return QuoteRole(
        entityId: create_id_from('QuoteRole', ['quoteId', 'partyId', 'roleTypeId'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        quoteId: json['quoteId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteRole overridesQuoteRole(Map<String, dynamic> map) {
    return QuoteRole(
        entityId: create_id_from('QuoteRole', ['quoteId', 'partyId', 'roleTypeId'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        quoteId: map['quoteId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteTerm extractQuoteTerm(dynamic json) {
    return QuoteTerm(
        entityId: create_id_from('QuoteTerm', ['termTypeId', 'quoteId', 'quoteItemSeqId'], json),
        textValue: json['textValue'] as String,
        termDays: json['termDays'] as int,
        quoteItemSeqId: json['quoteItemSeqId'] as String,
        termTypeId: json['termTypeId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        termValue: json['termValue'] as int,
        quoteId: json['quoteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteTerm overridesQuoteTerm(Map<String, dynamic> map) {
    return QuoteTerm(
        entityId: create_id_from('QuoteTerm', ['termTypeId', 'quoteId', 'quoteItemSeqId'], map),
        textValue: map['textValue'],
        termDays: map['termDays'],
        quoteItemSeqId: map['quoteItemSeqId'],
        termTypeId: map['termTypeId'],
        description: map['description'],
        uomId: map['uomId'],
        termValue: map['termValue'],
        quoteId: map['quoteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteTermAttribute extractQuoteTermAttribute(dynamic json) {
    return QuoteTermAttribute(
        entityId: create_id_from('QuoteTermAttribute', ['termTypeId', 'quoteId', 'quoteItemSeqId', 'attrName'], json),
        quoteItemSeqId: json['quoteItemSeqId'] as String,
        attrDescription: json['attrDescription'] as String,
        termTypeId: json['termTypeId'] as String,
        attrValue: json['attrValue'] as String,
        quoteId: json['quoteId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteTermAttribute overridesQuoteTermAttribute(Map<String, dynamic> map) {
    return QuoteTermAttribute(
        entityId: create_id_from('QuoteTermAttribute', ['termTypeId', 'quoteId', 'quoteItemSeqId', 'attrName'], map),
        quoteItemSeqId: map['quoteItemSeqId'],
        attrDescription: map['attrDescription'],
        termTypeId: map['termTypeId'],
        attrValue: map['attrValue'],
        quoteId: map['quoteId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteType extractQuoteType(dynamic json) {
    return QuoteType(
        entityId: create_id_from('QuoteType', ['quoteTypeId'], json),
        quoteTypeId: json['quoteTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteType overridesQuoteType(Map<String, dynamic> map) {
    return QuoteType(
        entityId: create_id_from('QuoteType', ['quoteTypeId'], map),
        quoteTypeId: map['quoteTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteTypeAttr extractQuoteTypeAttr(dynamic json) {
    return QuoteTypeAttr(
        entityId: create_id_from('QuoteTypeAttr', ['quoteTypeId', 'attrName'], json),
        quoteTypeId: json['quoteTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteTypeAttr overridesQuoteTypeAttr(Map<String, dynamic> map) {
    return QuoteTypeAttr(
        entityId: create_id_from('QuoteTypeAttr', ['quoteTypeId', 'attrName'], map),
        quoteTypeId: map['quoteTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteWorkEffort extractQuoteWorkEffort(dynamic json) {
    return QuoteWorkEffort(
        entityId: create_id_from('QuoteWorkEffort', ['quoteId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        quoteId: json['quoteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteWorkEffort overridesQuoteWorkEffort(Map<String, dynamic> map) {
    return QuoteWorkEffort(
        entityId: create_id_from('QuoteWorkEffort', ['quoteId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        quoteId: map['quoteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuoteWorkEffortView extractQuoteWorkEffortView(dynamic json) {
    return QuoteWorkEffortView(
        entityId: create_id_from('QuoteWorkEffortView', ['workEffortId', 'quoteId'], json),
        workEffortId: json['workEffortId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        workEffortTypeId: json['workEffortTypeId'] as String,
        reservPersons: json['reservPersons'] as double,
        revisionNumber: json['revisionNumber'] as int,
        tempExprId: json['tempExprId'] as String,
        showAsEnumId: json['showAsEnumId'] as String,
        infoUrl: json['infoUrl'] as String,
        universalId: json['universalId'] as String,
        locationDesc: json['locationDesc'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        actualMilliSeconds: json['actualMilliSeconds'] as double,
        quantityToProduce: json['quantityToProduce'] as double,
        workEffortPurposeTypeId: json['workEffortPurposeTypeId'] as String,
        serviceLoaderName: json['serviceLoaderName'] as String,
        accommodationSpotId: json['accommodationSpotId'] as String,
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        sendNotificationEmail: json['sendNotificationEmail'] as String,
        noteId: json['noteId'] as String,
        quantityRejected: json['quantityRejected'] as double,
        priority: json['priority'] as int,
        currentStatusId: json['currentStatusId'] as String,
        quoteId: json['quoteId'] as String,
        runtimeDataId: json['runtimeDataId'] as String,
        estimatedMilliSeconds: json['estimatedMilliSeconds'] as double,
        specialTerms: json['specialTerms'] as String,
        timeTransparency: json['timeTransparency'] as int,
        actualCompletionDate: check_dt(json['actualCompletionDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        totalMoneyAllowed: json['totalMoneyAllowed'] as double,
        estimateCalcMethod: json['estimateCalcMethod'] as String,
        workEffortParentId: json['workEffortParentId'] as String,
        description: json['description'] as String,
        moneyUomId: json['moneyUomId'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        workEffortName: json['workEffortName'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        accommodationMapId: json['accommodationMapId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        scopeEnumId: json['scopeEnumId'] as String,
        quantityProduced: json['quantityProduced'] as double,
        facilityId: json['facilityId'] as String,
        estimatedSetupMillis: json['estimatedSetupMillis'] as double,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        sourceReferenceId: json['sourceReferenceId'] as String,
        lastStatusUpdate: check_dt(json['lastStatusUpdate']),
        percentComplete: json['percentComplete'] as int,
        totalMilliSecondsAllowed: json['totalMilliSecondsAllowed'] as double,
        createdDate: check_dt(json['createdDate']),
        statusItemDescription: json['statusItemDescription'] as String,
        actualSetupMillis: json['actualSetupMillis'] as double,
        estimatedCompletionDate: check_dt(json['estimatedCompletionDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuoteWorkEffortView overridesQuoteWorkEffortView(Map<String, dynamic> map) {
    return QuoteWorkEffortView(
        entityId: create_id_from('QuoteWorkEffortView', ['workEffortId', 'quoteId'], map),
        workEffortId: map['workEffortId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        workEffortTypeId: map['workEffortTypeId'],
        reservPersons: map['reservPersons'],
        revisionNumber: map['revisionNumber'],
        tempExprId: map['tempExprId'],
        showAsEnumId: map['showAsEnumId'],
        infoUrl: map['infoUrl'],
        universalId: map['universalId'],
        locationDesc: map['locationDesc'],
        createdByUserLogin: map['createdByUserLogin'],
        actualMilliSeconds: map['actualMilliSeconds'],
        quantityToProduce: map['quantityToProduce'],
        workEffortPurposeTypeId: map['workEffortPurposeTypeId'],
        serviceLoaderName: map['serviceLoaderName'],
        accommodationSpotId: map['accommodationSpotId'],
        estimatedStartDate: map['estimatedStartDate'],
        sendNotificationEmail: map['sendNotificationEmail'],
        noteId: map['noteId'],
        quantityRejected: map['quantityRejected'],
        priority: map['priority'],
        currentStatusId: map['currentStatusId'],
        quoteId: map['quoteId'],
        runtimeDataId: map['runtimeDataId'],
        estimatedMilliSeconds: map['estimatedMilliSeconds'],
        specialTerms: map['specialTerms'],
        timeTransparency: map['timeTransparency'],
        actualCompletionDate: map['actualCompletionDate'],
        fixedAssetId: map['fixedAssetId'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        totalMoneyAllowed: map['totalMoneyAllowed'],
        estimateCalcMethod: map['estimateCalcMethod'],
        workEffortParentId: map['workEffortParentId'],
        description: map['description'],
        moneyUomId: map['moneyUomId'],
        reservNthPPPerc: map['reservNthPPPerc'],
        workEffortName: map['workEffortName'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        accommodationMapId: map['accommodationMapId'],
        actualStartDate: map['actualStartDate'],
        scopeEnumId: map['scopeEnumId'],
        quantityProduced: map['quantityProduced'],
        facilityId: map['facilityId'],
        estimatedSetupMillis: map['estimatedSetupMillis'],
        lastModifiedDate: map['lastModifiedDate'],
        sourceReferenceId: map['sourceReferenceId'],
        lastStatusUpdate: map['lastStatusUpdate'],
        percentComplete: map['percentComplete'],
        totalMilliSecondsAllowed: map['totalMilliSecondsAllowed'],
        createdDate: map['createdDate'],
        statusItemDescription: map['statusItemDescription'],
        actualSetupMillis: map['actualSetupMillis'],
        estimatedCompletionDate: map['estimatedCompletionDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}