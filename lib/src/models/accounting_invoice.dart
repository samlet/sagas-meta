import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AgreementContentAndInfo, AgreementContent Content and DataResource View
class AgreementContentAndInfo extends EntityBase {

  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String agreementId; // pk
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String agreementItemSeqId; // pk
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final String agreementContentTypeId; // pk
  final int childBranchCount;
  AgreementContentAndInfo({entityId,
    @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, @required this.agreementId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, @required this.agreementItemSeqId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, @required this.agreementContentTypeId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'agreementId':agreementId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'agreementItemSeqId':agreementItemSeqId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'agreementContentTypeId':agreementContentTypeId, 'childBranchCount':childBranchCount};
  }

}

/// Entity InvItemAndOrdItem, InvItemAndOrdItem
class InvItemAndOrdItem extends EntityBase {

  final String orderItemSeqId; // pk
  final double amount;
  final double quantity;
  final String productId;
  final String orderId; // pk
  final String overrideOrgPartyId;
  final String productFeatureId;
  final String taxableFlag;
  final String taxAuthorityRateSeqId;
  final String overrideGlAccountId;
  final String description;
  final String invoiceItemSeqId; // pk
  final String uomId;
  final String invoiceItemTypeId;
  final String inventoryItemId;
  final String taxAuthPartyId;
  final String parentInvoiceId;
  final String parentInvoiceItemSeqId;
  final String taxAuthGeoId;
  final String invoiceId; // pk
  final String salesOpportunityId;
  InvItemAndOrdItem({entityId,
    @required this.orderItemSeqId, this.amount, this.quantity, this.productId, @required this.orderId, this.overrideOrgPartyId, this.productFeatureId, this.taxableFlag, this.taxAuthorityRateSeqId, this.overrideGlAccountId, this.description, @required this.invoiceItemSeqId, this.uomId, this.invoiceItemTypeId, this.inventoryItemId, this.taxAuthPartyId, this.parentInvoiceId, this.parentInvoiceItemSeqId, this.taxAuthGeoId, @required this.invoiceId, this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvItemAndOrdItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'amount':amount, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'overrideOrgPartyId':overrideOrgPartyId, 'productFeatureId':productFeatureId, 'taxableFlag':taxableFlag, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'overrideGlAccountId':overrideGlAccountId, 'description':description, 'invoiceItemSeqId':invoiceItemSeqId, 'uomId':uomId, 'invoiceItemTypeId':invoiceItemTypeId, 'inventoryItemId':inventoryItemId, 'taxAuthPartyId':taxAuthPartyId, 'parentInvoiceId':parentInvoiceId, 'parentInvoiceItemSeqId':parentInvoiceItemSeqId, 'taxAuthGeoId':taxAuthGeoId, 'invoiceId':invoiceId, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity Invoice, Invoice
class Invoice extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String roleTypeId;
  final String recurrenceInfoId;
  final String invoiceTypeId;
  final DateTime dueDate;
  final String description;
  final String billingAccountId;
  final DateTime invoiceDate;
  final String contactMechId;
  final String currencyUomId;
  final String statusId;
  final DateTime paidDate;
  final String referenceNumber;
  final String invoiceId; // pk
  final String invoiceMessage;
  final String partyId;
  Invoice({entityId,
    this.partyIdFrom, this.roleTypeId, this.recurrenceInfoId, this.invoiceTypeId, this.dueDate, this.description, this.billingAccountId, this.invoiceDate, this.contactMechId, this.currencyUomId, this.statusId, this.paidDate, this.referenceNumber, @required this.invoiceId, this.invoiceMessage, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Invoice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'roleTypeId':roleTypeId, 'recurrenceInfoId':recurrenceInfoId, 'invoiceTypeId':invoiceTypeId, 'dueDate':dueDate, 'description':description, 'billingAccountId':billingAccountId, 'invoiceDate':invoiceDate, 'contactMechId':contactMechId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'paidDate':paidDate, 'referenceNumber':referenceNumber, 'invoiceId':invoiceId, 'invoiceMessage':invoiceMessage, 'partyId':partyId};
  }

}

/// Entity InvoiceAndApplAndPayment, Invoice and related applications and payments
class InvoiceAndApplAndPayment extends EntityBase {

  final String partyIdFrom;
  final String recurrenceInfoId;
  final String toPaymentId;
  final String invoiceTypeId;
  final DateTime dueDate;
  final String description;
  final String pmFinAccountTransId;
  final String billingAccountId;
  final String invoiceItemSeqId;
  final String pmPaymentTypeId;
  final String contactMechId;
  final String pmPaymentRefNum;
  final DateTime paidDate;
  final String referenceNumber;
  final String paymentId;
  final String pmPaymentMethodId;
  final String pmActualCurrencyUomId;
  final String taxAuthGeoId;
  final String pmPaymentId; // pk
  final String pmCurrencyUomId;
  final String partyId;
  final String pmOverrideGlAccountId;
  final double pmAmount;
  final String pmRoleTypeIdTo;
  final String pmPaymentMethodTypeId;
  final String roleTypeId;
  final String pmPartyIdFrom;
  final double amountApplied;
  final String pmComments;
  final String overrideGlAccountId;
  final String paymentApplicationId; // pk
  final DateTime invoiceDate;
  final double pmActualCurrencyAmount;
  final DateTime pmEffectiveDate;
  final String pmStatusId;
  final String currencyUomId;
  final String pmPartyIdTo;
  final String statusId;
  final String pmPaymentGatewayResponseId;
  final String pmPaymentPreferenceId;
  final String invoiceId; // pk
  final String invoiceMessage;
  InvoiceAndApplAndPayment({entityId,
    this.partyIdFrom, this.recurrenceInfoId, this.toPaymentId, this.invoiceTypeId, this.dueDate, this.description, this.pmFinAccountTransId, this.billingAccountId, this.invoiceItemSeqId, this.pmPaymentTypeId, this.contactMechId, this.pmPaymentRefNum, this.paidDate, this.referenceNumber, this.paymentId, this.pmPaymentMethodId, this.pmActualCurrencyUomId, this.taxAuthGeoId, @required this.pmPaymentId, this.pmCurrencyUomId, this.partyId, this.pmOverrideGlAccountId, this.pmAmount, this.pmRoleTypeIdTo, this.pmPaymentMethodTypeId, this.roleTypeId, this.pmPartyIdFrom, this.amountApplied, this.pmComments, this.overrideGlAccountId, @required this.paymentApplicationId, this.invoiceDate, this.pmActualCurrencyAmount, this.pmEffectiveDate, this.pmStatusId, this.currencyUomId, this.pmPartyIdTo, this.statusId, this.pmPaymentGatewayResponseId, this.pmPaymentPreferenceId, @required this.invoiceId, this.invoiceMessage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceAndApplAndPayment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'recurrenceInfoId':recurrenceInfoId, 'toPaymentId':toPaymentId, 'invoiceTypeId':invoiceTypeId, 'dueDate':dueDate, 'description':description, 'pmFinAccountTransId':pmFinAccountTransId, 'billingAccountId':billingAccountId, 'invoiceItemSeqId':invoiceItemSeqId, 'pmPaymentTypeId':pmPaymentTypeId, 'contactMechId':contactMechId, 'pmPaymentRefNum':pmPaymentRefNum, 'paidDate':paidDate, 'referenceNumber':referenceNumber, 'paymentId':paymentId, 'pmPaymentMethodId':pmPaymentMethodId, 'pmActualCurrencyUomId':pmActualCurrencyUomId, 'taxAuthGeoId':taxAuthGeoId, 'pmPaymentId':pmPaymentId, 'pmCurrencyUomId':pmCurrencyUomId, 'partyId':partyId, 'pmOverrideGlAccountId':pmOverrideGlAccountId, 'pmAmount':pmAmount, 'pmRoleTypeIdTo':pmRoleTypeIdTo, 'pmPaymentMethodTypeId':pmPaymentMethodTypeId, 'roleTypeId':roleTypeId, 'pmPartyIdFrom':pmPartyIdFrom, 'amountApplied':amountApplied, 'pmComments':pmComments, 'overrideGlAccountId':overrideGlAccountId, 'paymentApplicationId':paymentApplicationId, 'invoiceDate':invoiceDate, 'pmActualCurrencyAmount':pmActualCurrencyAmount, 'pmEffectiveDate':pmEffectiveDate, 'pmStatusId':pmStatusId, 'currencyUomId':currencyUomId, 'pmPartyIdTo':pmPartyIdTo, 'statusId':statusId, 'pmPaymentGatewayResponseId':pmPaymentGatewayResponseId, 'pmPaymentPreferenceId':pmPaymentPreferenceId, 'invoiceId':invoiceId, 'invoiceMessage':invoiceMessage};
  }

}

/// Entity InvoiceAndRole, InvoiceAndRole
class InvoiceAndRole extends EntityBase {

  final String partyIdFrom;
  final String roleTypeId;
  final String recurrenceInfoId;
  final String invoiceTypeId;
  final DateTime dueDate;
  final String description;
  final String billingAccountId;
  final DateTime invoiceDate;
  final String invoiceRolePartyId; // pk
  final String contactMechId;
  final String currencyUomId;
  final String statusId;
  final DateTime paidDate;
  final String invoiceRoleTypeId; // pk
  final String referenceNumber;
  final String invoiceId; // pk
  final String invoiceMessage;
  final String partyId;
  InvoiceAndRole({entityId,
    this.partyIdFrom, this.roleTypeId, this.recurrenceInfoId, this.invoiceTypeId, this.dueDate, this.description, this.billingAccountId, this.invoiceDate, @required this.invoiceRolePartyId, this.contactMechId, this.currencyUomId, this.statusId, this.paidDate, @required this.invoiceRoleTypeId, this.referenceNumber, @required this.invoiceId, this.invoiceMessage, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'roleTypeId':roleTypeId, 'recurrenceInfoId':recurrenceInfoId, 'invoiceTypeId':invoiceTypeId, 'dueDate':dueDate, 'description':description, 'billingAccountId':billingAccountId, 'invoiceDate':invoiceDate, 'invoiceRolePartyId':invoiceRolePartyId, 'contactMechId':contactMechId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'paidDate':paidDate, 'invoiceRoleTypeId':invoiceRoleTypeId, 'referenceNumber':referenceNumber, 'invoiceId':invoiceId, 'invoiceMessage':invoiceMessage, 'partyId':partyId};
  }

}

/// Entity InvoiceAndType, Invoice and InvoiceType to be able to list invoices by invoiceParentType i.e. sales/purchase invoices
class InvoiceAndType extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String roleTypeId;
  final String parentTypeId;
  final String recurrenceInfoId;
  final String invoiceTypeId;
  final DateTime dueDate;
  final String description;
  final String billingAccountId;
  final DateTime invoiceDate;
  final String contactMechId;
  final String currencyUomId;
  final String statusId;
  final DateTime paidDate;
  final String invoiceTypeDesc;
  final String referenceNumber;
  final String invoiceId; // pk
  final String invoiceMessage;
  final String partyId;
  InvoiceAndType({entityId,
    this.partyIdFrom, this.roleTypeId, this.parentTypeId, this.recurrenceInfoId, this.invoiceTypeId, this.dueDate, this.description, this.billingAccountId, this.invoiceDate, this.contactMechId, this.currencyUomId, this.statusId, this.paidDate, this.invoiceTypeDesc, this.referenceNumber, @required this.invoiceId, this.invoiceMessage, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'recurrenceInfoId':recurrenceInfoId, 'invoiceTypeId':invoiceTypeId, 'dueDate':dueDate, 'description':description, 'billingAccountId':billingAccountId, 'invoiceDate':invoiceDate, 'contactMechId':contactMechId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'paidDate':paidDate, 'invoiceTypeDesc':invoiceTypeDesc, 'referenceNumber':referenceNumber, 'invoiceId':invoiceId, 'invoiceMessage':invoiceMessage, 'partyId':partyId};
  }

}

/// Entity InvoiceAttribute, Invoice Attribute
class InvoiceAttribute extends EntityBase {

  final String attrDescription;
  final String invoiceId; // pk
  final String attrValue;
  final String attrName; // pk
  InvoiceAttribute({entityId,
    this.attrDescription, @required this.invoiceId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'invoiceId':invoiceId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity InvoiceContactMech, Invoice Contact Mechanism
class InvoiceContactMech extends EntityBase {

  final String contactMechPurposeTypeId; // pk
  final String invoiceId; // pk
  final String contactMechId; // pk
  InvoiceContactMech({entityId,
    @required this.contactMechPurposeTypeId, @required this.invoiceId, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechPurposeTypeId':contactMechPurposeTypeId, 'invoiceId':invoiceId, 'contactMechId':contactMechId};
  }

}

/// Entity InvoiceContent, Invoice Content
class InvoiceContent extends EntityBase {

  final String invoiceContentTypeId; // pk
  final DateTime fromDate; // pk
  final String contentId; // pk
  final String invoiceId; // pk
  final DateTime thruDate;
  InvoiceContent({entityId,
    @required this.invoiceContentTypeId, @required this.fromDate, @required this.contentId, @required this.invoiceId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoiceContentTypeId':invoiceContentTypeId, 'fromDate':fromDate, 'contentId':contentId, 'invoiceId':invoiceId, 'thruDate':thruDate};
  }

}

/// Entity InvoiceContentAndInfo, InvoiceContent Content and DataResource View
class InvoiceContentAndInfo extends EntityBase {

  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final String contentName;
  final String invoiceContentTypeId; // pk
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String invoiceId; // pk
  final String drLocaleString;
  final int childBranchCount;
  InvoiceContentAndInfo({entityId,
    @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.invoiceContentTypeId, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, @required this.invoiceId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'invoiceContentTypeId':invoiceContentTypeId, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'invoiceId':invoiceId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity InvoiceContentType, Invoice Content Type
class InvoiceContentType extends EntityBase {

  /// this entity has only one pk
  final String invoiceContentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  InvoiceContentType({entityId,
    @required this.invoiceContentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoiceContentTypeId':invoiceContentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity InvoiceItem, Invoice Item
class InvoiceItem extends EntityBase {

  final double amount;
  final double quantity;
  final String productId;
  final String overrideOrgPartyId;
  final String productFeatureId;
  final String taxableFlag;
  final String taxAuthorityRateSeqId;
  final String overrideGlAccountId;
  final String description;
  final String invoiceItemSeqId; // pk
  final String uomId;
  final String invoiceItemTypeId;
  final String inventoryItemId;
  final String taxAuthPartyId;
  final String parentInvoiceId;
  final String parentInvoiceItemSeqId;
  final String taxAuthGeoId;
  final String invoiceId; // pk
  final String salesOpportunityId;
  InvoiceItem({entityId,
    this.amount, this.quantity, this.productId, this.overrideOrgPartyId, this.productFeatureId, this.taxableFlag, this.taxAuthorityRateSeqId, this.overrideGlAccountId, this.description, @required this.invoiceItemSeqId, this.uomId, this.invoiceItemTypeId, this.inventoryItemId, this.taxAuthPartyId, this.parentInvoiceId, this.parentInvoiceItemSeqId, this.taxAuthGeoId, @required this.invoiceId, this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'quantity':quantity, 'productId':productId, 'overrideOrgPartyId':overrideOrgPartyId, 'productFeatureId':productFeatureId, 'taxableFlag':taxableFlag, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'overrideGlAccountId':overrideGlAccountId, 'description':description, 'invoiceItemSeqId':invoiceItemSeqId, 'uomId':uomId, 'invoiceItemTypeId':invoiceItemTypeId, 'inventoryItemId':inventoryItemId, 'taxAuthPartyId':taxAuthPartyId, 'parentInvoiceId':parentInvoiceId, 'parentInvoiceItemSeqId':parentInvoiceItemSeqId, 'taxAuthGeoId':taxAuthGeoId, 'invoiceId':invoiceId, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity InvoiceItemAndAssocProduct, InvoiceItemAndAssocProduct
class InvoiceItemAndAssocProduct extends EntityBase {

  final String partyIdFrom;
  final double amount;
  final double quantity;
  final String productId; // pk
  final String invoiceItemSeqIdFrom; // pk
  final String productName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String invoiceIdFrom; // pk
  final String invoiceItemSeqIdTo; // pk
  final double termAmount;
  final String invoiceItemAssocTypeId; // pk
  final String invoiceIdTo; // pk
  final String partyIdTo;
  InvoiceItemAndAssocProduct({entityId,
    this.partyIdFrom, this.amount, this.quantity, @required this.productId, @required this.invoiceItemSeqIdFrom, this.productName, this.thruDate, @required this.fromDate, @required this.invoiceIdFrom, @required this.invoiceItemSeqIdTo, this.termAmount, @required this.invoiceItemAssocTypeId, @required this.invoiceIdTo, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemAndAssocProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'amount':amount, 'quantity':quantity, 'productId':productId, 'invoiceItemSeqIdFrom':invoiceItemSeqIdFrom, 'productName':productName, 'thruDate':thruDate, 'fromDate':fromDate, 'invoiceIdFrom':invoiceIdFrom, 'invoiceItemSeqIdTo':invoiceItemSeqIdTo, 'termAmount':termAmount, 'invoiceItemAssocTypeId':invoiceItemAssocTypeId, 'invoiceIdTo':invoiceIdTo, 'partyIdTo':partyIdTo};
  }

}

/// Entity InvoiceItemAndShipmentView, InvoiceItemAndShipmentView
class InvoiceItemAndShipmentView extends EntityBase {

  final String partyIdFrom;
  final DateTime latestCancelDate;
  final double additionalShippingCharge;
  final String destinationTelecomNumberId;
  final String parentInvoiceItemSeqId;
  final String createdByUserLogin;
  final String estimatedShipWorkEffId;
  final String productId;
  final String overrideOrgPartyId;
  final String productFeatureId;
  final String taxAuthorityRateSeqId;
  final String overrideGlAccountId;
  final String uomId;
  final String invoiceItemTypeId;
  final String inventoryItemId;
  final String statusId;
  final String destinationContactMechId;
  final String primaryOrderId;
  final DateTime estimatedShipDate;
  final DateTime estimatedArrivalDate;
  final String picklistBinId;
  final String primaryShipGroupSeqId;
  final String salesOpportunityId;
  final String description;
  final String invoiceItemSeqId; // pk
  final DateTime estimatedReadyDate;
  final String taxAuthPartyId;
  final String lastModifiedByUserLogin;
  final String estimatedArrivalWorkEffId;
  final String parentInvoiceId;
  final String taxAuthGeoId;
  final double estimatedShipCost;
  final String destinationFacilityId;
  final double amount;
  final double quantity;
  final String addtlShippingChargeDesc;
  final DateTime lastModifiedDate;
  final String originContactMechId;
  final String taxableFlag;
  final String primaryReturnId;
  final String originFacilityId;
  final String currencyUomId;
  final DateTime createdDate;
  final String shipmentId; // pk
  final String originTelecomNumberId;
  final String invoiceId; // pk
  final String partyIdTo;
  final String shipmentTypeId;
  final String handlingInstructions;
  InvoiceItemAndShipmentView({entityId,
    this.partyIdFrom, this.latestCancelDate, this.additionalShippingCharge, this.destinationTelecomNumberId, this.parentInvoiceItemSeqId, this.createdByUserLogin, this.estimatedShipWorkEffId, this.productId, this.overrideOrgPartyId, this.productFeatureId, this.taxAuthorityRateSeqId, this.overrideGlAccountId, this.uomId, this.invoiceItemTypeId, this.inventoryItemId, this.statusId, this.destinationContactMechId, this.primaryOrderId, this.estimatedShipDate, this.estimatedArrivalDate, this.picklistBinId, this.primaryShipGroupSeqId, this.salesOpportunityId, this.description, @required this.invoiceItemSeqId, this.estimatedReadyDate, this.taxAuthPartyId, this.lastModifiedByUserLogin, this.estimatedArrivalWorkEffId, this.parentInvoiceId, this.taxAuthGeoId, this.estimatedShipCost, this.destinationFacilityId, this.amount, this.quantity, this.addtlShippingChargeDesc, this.lastModifiedDate, this.originContactMechId, this.taxableFlag, this.primaryReturnId, this.originFacilityId, this.currencyUomId, this.createdDate, @required this.shipmentId, this.originTelecomNumberId, @required this.invoiceId, this.partyIdTo, this.shipmentTypeId, this.handlingInstructions,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemAndShipmentView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'latestCancelDate':latestCancelDate, 'additionalShippingCharge':additionalShippingCharge, 'destinationTelecomNumberId':destinationTelecomNumberId, 'parentInvoiceItemSeqId':parentInvoiceItemSeqId, 'createdByUserLogin':createdByUserLogin, 'estimatedShipWorkEffId':estimatedShipWorkEffId, 'productId':productId, 'overrideOrgPartyId':overrideOrgPartyId, 'productFeatureId':productFeatureId, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'overrideGlAccountId':overrideGlAccountId, 'uomId':uomId, 'invoiceItemTypeId':invoiceItemTypeId, 'inventoryItemId':inventoryItemId, 'statusId':statusId, 'destinationContactMechId':destinationContactMechId, 'primaryOrderId':primaryOrderId, 'estimatedShipDate':estimatedShipDate, 'estimatedArrivalDate':estimatedArrivalDate, 'picklistBinId':picklistBinId, 'primaryShipGroupSeqId':primaryShipGroupSeqId, 'salesOpportunityId':salesOpportunityId, 'description':description, 'invoiceItemSeqId':invoiceItemSeqId, 'estimatedReadyDate':estimatedReadyDate, 'taxAuthPartyId':taxAuthPartyId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'estimatedArrivalWorkEffId':estimatedArrivalWorkEffId, 'parentInvoiceId':parentInvoiceId, 'taxAuthGeoId':taxAuthGeoId, 'estimatedShipCost':estimatedShipCost, 'destinationFacilityId':destinationFacilityId, 'amount':amount, 'quantity':quantity, 'addtlShippingChargeDesc':addtlShippingChargeDesc, 'lastModifiedDate':lastModifiedDate, 'originContactMechId':originContactMechId, 'taxableFlag':taxableFlag, 'primaryReturnId':primaryReturnId, 'originFacilityId':originFacilityId, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'shipmentId':shipmentId, 'originTelecomNumberId':originTelecomNumberId, 'invoiceId':invoiceId, 'partyIdTo':partyIdTo, 'shipmentTypeId':shipmentTypeId, 'handlingInstructions':handlingInstructions};
  }

}

/// Entity InvoiceItemAssoc, Invoice Item Association
class InvoiceItemAssoc extends EntityBase {

  final String partyIdFrom;
  final double amount;
  final double quantity;
  final String invoiceItemSeqIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String invoiceIdFrom; // pk
  final String invoiceItemSeqIdTo; // pk
  final String invoiceItemAssocTypeId; // pk
  final String invoiceIdTo; // pk
  final String partyIdTo;
  InvoiceItemAssoc({entityId,
    this.partyIdFrom, this.amount, this.quantity, @required this.invoiceItemSeqIdFrom, this.thruDate, @required this.fromDate, @required this.invoiceIdFrom, @required this.invoiceItemSeqIdTo, @required this.invoiceItemAssocTypeId, @required this.invoiceIdTo, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'amount':amount, 'quantity':quantity, 'invoiceItemSeqIdFrom':invoiceItemSeqIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'invoiceIdFrom':invoiceIdFrom, 'invoiceItemSeqIdTo':invoiceItemSeqIdTo, 'invoiceItemAssocTypeId':invoiceItemAssocTypeId, 'invoiceIdTo':invoiceIdTo, 'partyIdTo':partyIdTo};
  }

}

/// Entity InvoiceItemAssocType, Invoice Item Assoc Type
class InvoiceItemAssocType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String invoiceItemAssocTypeId; // pk
  final String description;
  InvoiceItemAssocType({entityId,
    this.parentTypeId, this.hasTable, @required this.invoiceItemAssocTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'invoiceItemAssocTypeId':invoiceItemAssocTypeId, 'description':description};
  }

}

/// Entity InvoiceItemAttribute, Invoice Item Attribute
class InvoiceItemAttribute extends EntityBase {

  final String attrDescription;
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String attrValue;
  final String attrName; // pk
  InvoiceItemAttribute({entityId,
    this.attrDescription, @required this.invoiceId, @required this.invoiceItemSeqId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity InvoiceItemType, Invoice Item Type
class InvoiceItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String defaultGlAccountId;
  final String description;
  final String invoiceItemTypeId; // pk
  InvoiceItemType({entityId,
    this.parentTypeId, this.hasTable, this.defaultGlAccountId, this.description, @required this.invoiceItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'defaultGlAccountId':defaultGlAccountId, 'description':description, 'invoiceItemTypeId':invoiceItemTypeId};
  }

}

/// Entity InvoiceItemTypeAttr, Invoice Item Type Attribute
class InvoiceItemTypeAttr extends EntityBase {

  final String description;
  final String invoiceItemTypeId; // pk
  final String attrName; // pk
  InvoiceItemTypeAttr({entityId,
    this.description, @required this.invoiceItemTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'invoiceItemTypeId':invoiceItemTypeId, 'attrName':attrName};
  }

}

/// Entity InvoiceItemTypeGlAccount, Invoice Item Type GL Account
class InvoiceItemTypeGlAccount extends EntityBase {

  final String glAccountId;
  final String organizationPartyId; // pk
  final String invoiceItemTypeId; // pk
  InvoiceItemTypeGlAccount({entityId,
    this.glAccountId, @required this.organizationPartyId, @required this.invoiceItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemTypeGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'invoiceItemTypeId':invoiceItemTypeId};
  }

}

/// Entity InvoiceItemTypeMap, Invoice Item Type Map
class InvoiceItemTypeMap extends EntityBase {

  final String invoiceItemMapKey; // pk
  final String invoiceTypeId; // pk
  final String invoiceItemTypeId;
  InvoiceItemTypeMap({entityId,
    @required this.invoiceItemMapKey, @required this.invoiceTypeId, this.invoiceItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemTypeMap { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoiceItemMapKey':invoiceItemMapKey, 'invoiceTypeId':invoiceTypeId, 'invoiceItemTypeId':invoiceItemTypeId};
  }

}

/// Entity InvoiceNote, Invoice Note
class InvoiceNote extends EntityBase {

  final String invoiceId; // pk
  final String noteId; // pk
  InvoiceNote({entityId,
    @required this.invoiceId, @required this.noteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoiceId':invoiceId, 'noteId':noteId};
  }

}

/// Entity InvoiceRole, Invoice Role
class InvoiceRole extends EntityBase {

  final String roleTypeId; // pk
  final DateTime datetimePerformed;
  final double percentage;
  final String invoiceId; // pk
  final String partyId; // pk
  InvoiceRole({entityId,
    @required this.roleTypeId, this.datetimePerformed, this.percentage, @required this.invoiceId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'datetimePerformed':datetimePerformed, 'percentage':percentage, 'invoiceId':invoiceId, 'partyId':partyId};
  }

}

/// Entity InvoiceStatus, Invoice Status
class InvoiceStatus extends EntityBase {

  final DateTime statusDate; // pk
  final String statusId; // pk
  final String invoiceId; // pk
  final String changeByUserLoginId;
  InvoiceStatus({entityId,
    @required this.statusDate, @required this.statusId, @required this.invoiceId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'invoiceId':invoiceId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity InvoiceTerm, Invoice Term
class InvoiceTerm extends EntityBase {

  /// this entity has only one pk
  final String textValue;
  final int termDays;
  final String termTypeId;
  final String description;
  final String invoiceItemSeqId;
  final String uomId;
  final double termValue;
  final String invoiceTermId; // pk
  final String invoiceId;
  InvoiceTerm({entityId,
    this.textValue, this.termDays, this.termTypeId, this.description, this.invoiceItemSeqId, this.uomId, this.termValue, @required this.invoiceTermId, this.invoiceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'textValue':textValue, 'termDays':termDays, 'termTypeId':termTypeId, 'description':description, 'invoiceItemSeqId':invoiceItemSeqId, 'uomId':uomId, 'termValue':termValue, 'invoiceTermId':invoiceTermId, 'invoiceId':invoiceId};
  }

}

/// Entity InvoiceTermAttribute, Invoice Term Attribute
class InvoiceTermAttribute extends EntityBase {

  final String attrDescription;
  final String invoiceTermId; // pk
  final String attrValue;
  final String attrName; // pk
  InvoiceTermAttribute({entityId,
    this.attrDescription, @required this.invoiceTermId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceTermAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'invoiceTermId':invoiceTermId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity InvoiceType, Invoice Type
class InvoiceType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String invoiceTypeId; // pk
  final String description;
  InvoiceType({entityId,
    this.parentTypeId, this.hasTable, @required this.invoiceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'invoiceTypeId':invoiceTypeId, 'description':description};
  }

}

/// Entity InvoiceTypeAttr, Invoice Type Attribute
class InvoiceTypeAttr extends EntityBase {

  final String invoiceTypeId; // pk
  final String description;
  final String attrName; // pk
  InvoiceTypeAttr({entityId,
    @required this.invoiceTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoiceTypeId':invoiceTypeId, 'description':description, 'attrName':attrName};
  }

}