import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Quote, Quote
class Quote extends EntityBase {

  /// this entity has only one pk
  final String salesChannelEnumId;
  final String description;
  final String quoteId; // pk
  final DateTime validThruDate;
  final String quoteTypeId;
  final String currencyUomId;
  final String statusId;
  final DateTime validFromDate;
  final String productStoreId;
  final String partyId;
  final DateTime issueDate;
  final String quoteName;
  Quote({entityId,
    this.salesChannelEnumId, this.description, @required this.quoteId, this.validThruDate, this.quoteTypeId, this.currencyUomId, this.statusId, this.validFromDate, this.productStoreId, this.partyId, this.issueDate, this.quoteName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Quote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'salesChannelEnumId':salesChannelEnumId, 'description':description, 'quoteId':quoteId, 'validThruDate':validThruDate, 'quoteTypeId':quoteTypeId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'validFromDate':validFromDate, 'productStoreId':productStoreId, 'partyId':partyId, 'issueDate':issueDate, 'quoteName':quoteName};
  }

}

/// Entity QuoteAdjustment, Quote Adjustment
class QuoteAdjustment extends EntityBase {

  /// this entity has only one pk
  final String customerReferenceId;
  final String correspondingProductId;
  final String includeInShipping;
  final String description;
  final double exemptAmount;
  final String productPromoId;
  final String taxAuthPartyId;
  final String lastModifiedByUserLogin;
  final String quoteAdjustmentId; // pk
  final String primaryGeoId;
  final String taxAuthGeoId;
  final String secondaryGeoId;
  final String createdByUserLogin;
  final double amount;
  final String comments;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final String quoteItemSeqId;
  final String productPromoRuleId;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String quoteId;
  final String includeInTax;
  final String quoteAdjustmentTypeId;
  final DateTime createdDate;
  final String productPromoActionSeqId;
  final double sourcePercentage;
  QuoteAdjustment({entityId,
    this.customerReferenceId, this.correspondingProductId, this.includeInShipping, this.description, this.exemptAmount, this.productPromoId, this.taxAuthPartyId, this.lastModifiedByUserLogin, @required this.quoteAdjustmentId, this.primaryGeoId, this.taxAuthGeoId, this.secondaryGeoId, this.createdByUserLogin, this.amount, this.comments, this.lastModifiedDate, this.sourceReferenceId, this.quoteItemSeqId, this.productPromoRuleId, this.productFeatureId, this.overrideGlAccountId, this.quoteId, this.includeInTax, this.quoteAdjustmentTypeId, this.createdDate, this.productPromoActionSeqId, this.sourcePercentage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteAdjustment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customerReferenceId':customerReferenceId, 'correspondingProductId':correspondingProductId, 'includeInShipping':includeInShipping, 'description':description, 'exemptAmount':exemptAmount, 'productPromoId':productPromoId, 'taxAuthPartyId':taxAuthPartyId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'quoteAdjustmentId':quoteAdjustmentId, 'primaryGeoId':primaryGeoId, 'taxAuthGeoId':taxAuthGeoId, 'secondaryGeoId':secondaryGeoId, 'createdByUserLogin':createdByUserLogin, 'amount':amount, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'quoteItemSeqId':quoteItemSeqId, 'productPromoRuleId':productPromoRuleId, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'quoteId':quoteId, 'includeInTax':includeInTax, 'quoteAdjustmentTypeId':quoteAdjustmentTypeId, 'createdDate':createdDate, 'productPromoActionSeqId':productPromoActionSeqId, 'sourcePercentage':sourcePercentage};
  }

}

/// Entity QuoteAttribute, Quote Attribute
class QuoteAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String quoteId; // pk
  final String attrName; // pk
  QuoteAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.quoteId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'quoteId':quoteId, 'attrName':attrName};
  }

}

/// Entity QuoteCoefficient, Quote Coefficient
class QuoteCoefficient extends EntityBase {

  final double coeffValue;
  final String coeffName; // pk
  final String quoteId; // pk
  QuoteCoefficient({entityId,
    this.coeffValue, @required this.coeffName, @required this.quoteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteCoefficient { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'coeffValue':coeffValue, 'coeffName':coeffName, 'quoteId':quoteId};
  }

}

/// Entity QuoteItem, Quote Item
class QuoteItem extends EntityBase {

  final String workEffortId;
  final double reservPersons;
  final String deliverableTypeId;
  final String isPromo;
  final DateTime reservStart;
  final String configId;
  final String custRequestId;
  final double selectedAmount;
  final double quantity;
  final double reservLength;
  final String comments;
  final String productId;
  final String quoteItemSeqId; // pk
  final String productFeatureId;
  final double quoteUnitPrice;
  final String uomId;
  final DateTime estimatedDeliveryDate;
  final String quoteId; // pk
  final String custRequestItemSeqId;
  final String skillTypeId;
  final int leadTimeDays;
  QuoteItem({entityId,
    this.workEffortId, this.reservPersons, this.deliverableTypeId, this.isPromo, this.reservStart, this.configId, this.custRequestId, this.selectedAmount, this.quantity, this.reservLength, this.comments, this.productId, @required this.quoteItemSeqId, this.productFeatureId, this.quoteUnitPrice, this.uomId, this.estimatedDeliveryDate, @required this.quoteId, this.custRequestItemSeqId, this.skillTypeId, this.leadTimeDays,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'reservPersons':reservPersons, 'deliverableTypeId':deliverableTypeId, 'isPromo':isPromo, 'reservStart':reservStart, 'configId':configId, 'custRequestId':custRequestId, 'selectedAmount':selectedAmount, 'quantity':quantity, 'reservLength':reservLength, 'comments':comments, 'productId':productId, 'quoteItemSeqId':quoteItemSeqId, 'productFeatureId':productFeatureId, 'quoteUnitPrice':quoteUnitPrice, 'uomId':uomId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'quoteId':quoteId, 'custRequestItemSeqId':custRequestItemSeqId, 'skillTypeId':skillTypeId, 'leadTimeDays':leadTimeDays};
  }

}

/// Entity QuoteNote, Quote Note
class QuoteNote extends EntityBase {

  final String noteId; // pk
  final String quoteId; // pk
  QuoteNote({entityId,
    @required this.noteId, @required this.quoteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'noteId':noteId, 'quoteId':quoteId};
  }

}

/// Entity QuoteNoteView, Quote Note View Entity
class QuoteNoteView extends EntityBase {

  final String noteName;
  final DateTime noteDateTime;
  final String noteInfo;
  final String noteId; // pk
  final String quoteId; // pk
  final String noteParty;
  QuoteNoteView({entityId,
    this.noteName, this.noteDateTime, this.noteInfo, @required this.noteId, @required this.quoteId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteNoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'noteName':noteName, 'noteDateTime':noteDateTime, 'noteInfo':noteInfo, 'noteId':noteId, 'quoteId':quoteId, 'noteParty':noteParty};
  }

}

/// Entity QuoteRole, Quote Role
class QuoteRole extends EntityBase {

  final DateTime fromDate;
  final String roleTypeId; // pk
  final String partyId; // pk
  final String quoteId; // pk
  final DateTime thruDate;
  QuoteRole({entityId,
    this.fromDate, @required this.roleTypeId, @required this.partyId, @required this.quoteId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'partyId':partyId, 'quoteId':quoteId, 'thruDate':thruDate};
  }

}

/// Entity QuoteTerm, Quote Term
class QuoteTerm extends EntityBase {

  final String textValue;
  final int termDays;
  final String quoteItemSeqId; // pk
  final String termTypeId; // pk
  final String description;
  final String uomId;
  final int termValue;
  final String quoteId; // pk
  QuoteTerm({entityId,
    this.textValue, this.termDays, @required this.quoteItemSeqId, @required this.termTypeId, this.description, this.uomId, this.termValue, @required this.quoteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'textValue':textValue, 'termDays':termDays, 'quoteItemSeqId':quoteItemSeqId, 'termTypeId':termTypeId, 'description':description, 'uomId':uomId, 'termValue':termValue, 'quoteId':quoteId};
  }

}

/// Entity QuoteTermAttribute, Quote Term Attribute
class QuoteTermAttribute extends EntityBase {

  final String quoteItemSeqId; // pk
  final String attrDescription;
  final String termTypeId; // pk
  final String attrValue;
  final String quoteId; // pk
  final String attrName; // pk
  QuoteTermAttribute({entityId,
    @required this.quoteItemSeqId, this.attrDescription, @required this.termTypeId, this.attrValue, @required this.quoteId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteTermAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quoteItemSeqId':quoteItemSeqId, 'attrDescription':attrDescription, 'termTypeId':termTypeId, 'attrValue':attrValue, 'quoteId':quoteId, 'attrName':attrName};
  }

}

/// Entity QuoteType, Quote Type
class QuoteType extends EntityBase {

  /// this entity has only one pk
  final String quoteTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  QuoteType({entityId,
    @required this.quoteTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quoteTypeId':quoteTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity QuoteTypeAttr, Quote Type Attribute
class QuoteTypeAttr extends EntityBase {

  final String quoteTypeId; // pk
  final String description;
  final String attrName; // pk
  QuoteTypeAttr({entityId,
    @required this.quoteTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quoteTypeId':quoteTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity QuoteWorkEffort, Quote Work Effort
class QuoteWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String quoteId; // pk
  QuoteWorkEffort({entityId,
    @required this.workEffortId, @required this.quoteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'quoteId':quoteId};
  }

}

/// Entity QuoteWorkEffortView, Quote And Workeffort
class QuoteWorkEffortView extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String quoteId; // pk
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String statusItemDescription;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  QuoteWorkEffortView({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, @required this.quoteId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.statusItemDescription, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuoteWorkEffortView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'quoteId':quoteId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'statusItemDescription':statusItemDescription, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}