import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity InvoiceExport, InvoiceExport
class InvoiceExport extends EntityBase {

  final String partyIdFrom;
  final String partyIdTrans;
  final double amount;
  final double quantity;
  final String productId;
  final String invoiceTypeId;
  final String partyIdFromTrans;
  final String description;
  final String invoiceItemSeqId; // pk
  final DateTime invoiceDate;
  final String invoiceItemTypeId;
  final String productIdTrans;
  final String currencyUomId;
  final String referenceNumber;
  final String invoiceId; // pk
  final String itemDescription;
  final String partyId;
  InvoiceExport({entityId,
    this.partyIdFrom, this.partyIdTrans, this.amount, this.quantity, this.productId, this.invoiceTypeId, this.partyIdFromTrans, this.description, @required this.invoiceItemSeqId, this.invoiceDate, this.invoiceItemTypeId, this.productIdTrans, this.currencyUomId, this.referenceNumber, @required this.invoiceId, this.itemDescription, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceExport { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'partyIdTrans':partyIdTrans, 'amount':amount, 'quantity':quantity, 'productId':productId, 'invoiceTypeId':invoiceTypeId, 'partyIdFromTrans':partyIdFromTrans, 'description':description, 'invoiceItemSeqId':invoiceItemSeqId, 'invoiceDate':invoiceDate, 'invoiceItemTypeId':invoiceItemTypeId, 'productIdTrans':productIdTrans, 'currencyUomId':currencyUomId, 'referenceNumber':referenceNumber, 'invoiceId':invoiceId, 'itemDescription':itemDescription, 'partyId':partyId};
  }

}

/// Entity InvoiceItemCategorySummary, InvoiceItemCategorySummary
class InvoiceItemCategorySummary extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final double quantityTotal;
  final String currencyUomId;
  final String productCategoryId; // pk
  final String statusId;
  final String productId;
  final String invoiceTypeId;
  final double amountTotal;
  final DateTime invoiceDate;
  final String partyId;
  final String invoiceItemTypeId;
  InvoiceItemCategorySummary({entityId,
    this.partyIdFrom, this.quantityTotal, this.currencyUomId, @required this.productCategoryId, this.statusId, this.productId, this.invoiceTypeId, this.amountTotal, this.invoiceDate, this.partyId, this.invoiceItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemCategorySummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'quantityTotal':quantityTotal, 'currencyUomId':currencyUomId, 'productCategoryId':productCategoryId, 'statusId':statusId, 'productId':productId, 'invoiceTypeId':invoiceTypeId, 'amountTotal':amountTotal, 'invoiceDate':invoiceDate, 'partyId':partyId, 'invoiceItemTypeId':invoiceItemTypeId};
  }

}

/// Entity InvoiceItemProductSummary, InvoiceItemProductSummary
class InvoiceItemProductSummary extends EntityBase {

  final String partyIdFrom;
  final double quantityTotal;
  final String currencyUomId;
  final String statusId;
  final String productId;
  final String invoiceTypeId;
  final double amountTotal;
  final DateTime invoiceDate;
  final String partyId;
  final String invoiceItemTypeId;
  InvoiceItemProductSummary({entityId,
    this.partyIdFrom, this.quantityTotal, this.currencyUomId, this.statusId, this.productId, this.invoiceTypeId, this.amountTotal, this.invoiceDate, this.partyId, this.invoiceItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InvoiceItemProductSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'quantityTotal':quantityTotal, 'currencyUomId':currencyUomId, 'statusId':statusId, 'productId':productId, 'invoiceTypeId':invoiceTypeId, 'amountTotal':amountTotal, 'invoiceDate':invoiceDate, 'partyId':partyId, 'invoiceItemTypeId':invoiceItemTypeId};
  }

}

/// Entity PartyExport, PartyExport
class PartyExport extends EntityBase {

  final String countryGeoId;
  final String lastName;
  final String companyPartyId; // pk
  final String roleTypeId; // pk
  final String telContactNumber;
  final String address2;
  final String city;
  final String address1;
  final String companyName;
  final String postalCode;
  final String telAreaCode;
  final String contactMechTypeId;
  final String telCountryCode;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String firstName;
  final String groupName;
  final String emailAddress;
  final String statusId;
  final String contactMechPurposeTypeId; // pk
  final String preferredCurrencyUomId;
  final String middleName;
  final String stateProvinceGeoId;
  final String partyId; // pk
  PartyExport({entityId,
    this.countryGeoId, this.lastName, @required this.companyPartyId, @required this.roleTypeId, this.telContactNumber, this.address2, this.city, this.address1, this.companyName, this.postalCode, this.telAreaCode, this.contactMechTypeId, this.telCountryCode, this.thruDate, @required this.fromDate, this.firstName, this.groupName, this.emailAddress, this.statusId, @required this.contactMechPurposeTypeId, this.preferredCurrencyUomId, this.middleName, this.stateProvinceGeoId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyExport { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryGeoId':countryGeoId, 'lastName':lastName, 'companyPartyId':companyPartyId, 'roleTypeId':roleTypeId, 'telContactNumber':telContactNumber, 'address2':address2, 'city':city, 'address1':address1, 'companyName':companyName, 'postalCode':postalCode, 'telAreaCode':telAreaCode, 'contactMechTypeId':contactMechTypeId, 'telCountryCode':telCountryCode, 'thruDate':thruDate, 'fromDate':fromDate, 'firstName':firstName, 'groupName':groupName, 'emailAddress':emailAddress, 'statusId':statusId, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'middleName':middleName, 'stateProvinceGeoId':stateProvinceGeoId, 'partyId':partyId};
  }

}