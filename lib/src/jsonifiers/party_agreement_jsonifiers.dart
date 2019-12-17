import 'package:sagas_meta/src/models/party_agreement.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class PartyAgreementJsonifier{
  static Addendum extractAddendum(dynamic json) {
    return Addendum(
        entityId: create_id_from('Addendum', ['addendumId'], json),
        addendumEffectiveDate: check_dt(json['addendumEffectiveDate']),
        agreementId: json['agreementId'] as String,
        addendumCreationDate: check_dt(json['addendumCreationDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        addendumId: json['addendumId'] as String,
        addendumText: json['addendumText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Addendum overridesAddendum(Map<String, dynamic> map) {
    return Addendum(
        entityId: create_id_from('Addendum', ['addendumId'], map),
        addendumEffectiveDate: map['addendumEffectiveDate'],
        agreementId: map['agreementId'],
        addendumCreationDate: map['addendumCreationDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        addendumId: map['addendumId'],
        addendumText: map['addendumText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Agreement extractAgreement(dynamic json) {
    return Agreement(
        entityId: create_id_from('Agreement', ['agreementId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        productId: json['productId'] as String,
        agreementDate: check_dt(json['agreementDate']),
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        textData: json['textData'] as String,
        agreementId: json['agreementId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Agreement overridesAgreement(Map<String, dynamic> map) {
    return Agreement(
        entityId: create_id_from('Agreement', ['agreementId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        productId: map['productId'],
        agreementDate: map['agreementDate'],
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        textData: map['textData'],
        agreementId: map['agreementId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementAttribute extractAgreementAttribute(dynamic json) {
    return AgreementAttribute(
        entityId: create_id_from('AgreementAttribute', ['agreementId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        agreementId: json['agreementId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementAttribute overridesAgreementAttribute(Map<String, dynamic> map) {
    return AgreementAttribute(
        entityId: create_id_from('AgreementAttribute', ['agreementId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        agreementId: map['agreementId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementContent extractAgreementContent(dynamic json) {
    return AgreementContent(
        entityId: create_id_from('AgreementContent', ['contentId', 'agreementId', 'agreementItemSeqId', 'agreementContentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        agreementId: json['agreementId'] as String,
        contentId: json['contentId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        agreementContentTypeId: json['agreementContentTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementContent overridesAgreementContent(Map<String, dynamic> map) {
    return AgreementContent(
        entityId: create_id_from('AgreementContent', ['contentId', 'agreementId', 'agreementItemSeqId', 'agreementContentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        agreementId: map['agreementId'],
        contentId: map['contentId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        agreementContentTypeId: map['agreementContentTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementContentType extractAgreementContentType(dynamic json) {
    return AgreementContentType(
        entityId: create_id_from('AgreementContentType', ['agreementContentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        agreementContentTypeId: json['agreementContentTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementContentType overridesAgreementContentType(Map<String, dynamic> map) {
    return AgreementContentType(
        entityId: create_id_from('AgreementContentType', ['agreementContentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        agreementContentTypeId: map['agreementContentTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementEmploymentAppl extractAgreementEmploymentAppl(dynamic json) {
    return AgreementEmploymentAppl(
        entityId: create_id_from('AgreementEmploymentAppl', ['agreementId', 'agreementItemSeqId', 'partyIdTo', 'partyIdFrom', 'roleTypeIdTo', 'roleTypeIdFrom', 'fromDate'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        agreementDate: check_dt(json['agreementDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        agreementId: json['agreementId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementEmploymentAppl overridesAgreementEmploymentAppl(Map<String, dynamic> map) {
    return AgreementEmploymentAppl(
        entityId: create_id_from('AgreementEmploymentAppl', ['agreementId', 'agreementItemSeqId', 'partyIdTo', 'partyIdFrom', 'roleTypeIdTo', 'roleTypeIdFrom', 'fromDate'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        agreementDate: map['agreementDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        agreementId: map['agreementId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementFacilityAppl extractAgreementFacilityAppl(dynamic json) {
    return AgreementFacilityAppl(
        entityId: create_id_from('AgreementFacilityAppl', ['agreementId', 'agreementItemSeqId', 'facilityId'], json),
        facilityId: json['facilityId'] as String,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementFacilityAppl overridesAgreementFacilityAppl(Map<String, dynamic> map) {
    return AgreementFacilityAppl(
        entityId: create_id_from('AgreementFacilityAppl', ['agreementId', 'agreementItemSeqId', 'facilityId'], map),
        facilityId: map['facilityId'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementGeographicalApplic extractAgreementGeographicalApplic(dynamic json) {
    return AgreementGeographicalApplic(
        entityId: create_id_from('AgreementGeographicalApplic', ['agreementId', 'agreementItemSeqId', 'geoId'], json),
        geoId: json['geoId'] as String,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementGeographicalApplic overridesAgreementGeographicalApplic(Map<String, dynamic> map) {
    return AgreementGeographicalApplic(
        entityId: create_id_from('AgreementGeographicalApplic', ['agreementId', 'agreementItemSeqId', 'geoId'], map),
        geoId: map['geoId'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItem extractAgreementItem(dynamic json) {
    return AgreementItem(
        entityId: create_id_from('AgreementItem', ['agreementId', 'agreementItemSeqId'], json),
        currencyUomId: json['currencyUomId'] as String,
        agreementText: json['agreementText'] as String,
        agreementImage: json['agreementImage'] as String,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItem overridesAgreementItem(Map<String, dynamic> map) {
    return AgreementItem(
        entityId: create_id_from('AgreementItem', ['agreementId', 'agreementItemSeqId'], map),
        currencyUomId: map['currencyUomId'],
        agreementText: map['agreementText'],
        agreementImage: map['agreementImage'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        agreementItemTypeId: map['agreementItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemAndFacilityAppl extractAgreementItemAndFacilityAppl(dynamic json) {
    return AgreementItemAndFacilityAppl(
        entityId: create_id_from('AgreementItemAndFacilityAppl', ['agreementId', 'agreementItemSeqId', 'facilityId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        agreementDate: check_dt(json['agreementDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        textData: json['textData'] as String,
        currencyUomId: json['currencyUomId'] as String,
        agreementText: json['agreementText'] as String,
        agreementImage: json['agreementImage'] as String,
        agreementId: json['agreementId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemAndFacilityAppl overridesAgreementItemAndFacilityAppl(Map<String, dynamic> map) {
    return AgreementItemAndFacilityAppl(
        entityId: create_id_from('AgreementItemAndFacilityAppl', ['agreementId', 'agreementItemSeqId', 'facilityId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        agreementDate: map['agreementDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        agreementItemTypeId: map['agreementItemTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        textData: map['textData'],
        currencyUomId: map['currencyUomId'],
        agreementText: map['agreementText'],
        agreementImage: map['agreementImage'],
        agreementId: map['agreementId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemAndPartyAppl extractAgreementItemAndPartyAppl(dynamic json) {
    return AgreementItemAndPartyAppl(
        entityId: create_id_from('AgreementItemAndPartyAppl', ['agreementId', 'agreementItemSeqId', 'partyId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        agreementDate: check_dt(json['agreementDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        textData: json['textData'] as String,
        currencyUomId: json['currencyUomId'] as String,
        agreementText: json['agreementText'] as String,
        agreementImage: json['agreementImage'] as String,
        agreementId: json['agreementId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemAndPartyAppl overridesAgreementItemAndPartyAppl(Map<String, dynamic> map) {
    return AgreementItemAndPartyAppl(
        entityId: create_id_from('AgreementItemAndPartyAppl', ['agreementId', 'agreementItemSeqId', 'partyId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        agreementDate: map['agreementDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        agreementItemTypeId: map['agreementItemTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        textData: map['textData'],
        currencyUomId: map['currencyUomId'],
        agreementText: map['agreementText'],
        agreementImage: map['agreementImage'],
        agreementId: map['agreementId'],
        partyIdTo: map['partyIdTo'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemAndProductAppl extractAgreementItemAndProductAppl(dynamic json) {
    return AgreementItemAndProductAppl(
        entityId: create_id_from('AgreementItemAndProductAppl', ['agreementId', 'agreementItemSeqId', 'productId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        productId: json['productId'] as String,
        agreementDate: check_dt(json['agreementDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        textData: json['textData'] as String,
        currencyUomId: json['currencyUomId'] as String,
        agreementText: json['agreementText'] as String,
        agreementImage: json['agreementImage'] as String,
        price: json['price'] as double,
        agreementId: json['agreementId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemAndProductAppl overridesAgreementItemAndProductAppl(Map<String, dynamic> map) {
    return AgreementItemAndProductAppl(
        entityId: create_id_from('AgreementItemAndProductAppl', ['agreementId', 'agreementItemSeqId', 'productId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        productId: map['productId'],
        agreementDate: map['agreementDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        agreementItemTypeId: map['agreementItemTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        textData: map['textData'],
        currencyUomId: map['currencyUomId'],
        agreementText: map['agreementText'],
        agreementImage: map['agreementImage'],
        price: map['price'],
        agreementId: map['agreementId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemAttribute extractAgreementItemAttribute(dynamic json) {
    return AgreementItemAttribute(
        entityId: create_id_from('AgreementItemAttribute', ['agreementId', 'agreementItemSeqId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemAttribute overridesAgreementItemAttribute(Map<String, dynamic> map) {
    return AgreementItemAttribute(
        entityId: create_id_from('AgreementItemAttribute', ['agreementId', 'agreementItemSeqId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemType extractAgreementItemType(dynamic json) {
    return AgreementItemType(
        entityId: create_id_from('AgreementItemType', ['agreementItemTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemType overridesAgreementItemType(Map<String, dynamic> map) {
    return AgreementItemType(
        entityId: create_id_from('AgreementItemType', ['agreementItemTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        agreementItemTypeId: map['agreementItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementItemTypeAttr extractAgreementItemTypeAttr(dynamic json) {
    return AgreementItemTypeAttr(
        entityId: create_id_from('AgreementItemTypeAttr', ['agreementItemTypeId', 'attrName'], json),
        description: json['description'] as String,
        agreementItemTypeId: json['agreementItemTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementItemTypeAttr overridesAgreementItemTypeAttr(Map<String, dynamic> map) {
    return AgreementItemTypeAttr(
        entityId: create_id_from('AgreementItemTypeAttr', ['agreementItemTypeId', 'attrName'], map),
        description: map['description'],
        agreementItemTypeId: map['agreementItemTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementPartyApplic extractAgreementPartyApplic(dynamic json) {
    return AgreementPartyApplic(
        entityId: create_id_from('AgreementPartyApplic', ['agreementId', 'agreementItemSeqId', 'partyId'], json),
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementPartyApplic overridesAgreementPartyApplic(Map<String, dynamic> map) {
    return AgreementPartyApplic(
        entityId: create_id_from('AgreementPartyApplic', ['agreementId', 'agreementItemSeqId', 'partyId'], map),
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementProductAppl extractAgreementProductAppl(dynamic json) {
    return AgreementProductAppl(
        entityId: create_id_from('AgreementProductAppl', ['agreementId', 'agreementItemSeqId', 'productId'], json),
        productId: json['productId'] as String,
        price: json['price'] as double,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementProductAppl overridesAgreementProductAppl(Map<String, dynamic> map) {
    return AgreementProductAppl(
        entityId: create_id_from('AgreementProductAppl', ['agreementId', 'agreementItemSeqId', 'productId'], map),
        productId: map['productId'],
        price: map['price'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementPromoAppl extractAgreementPromoAppl(dynamic json) {
    return AgreementPromoAppl(
        entityId: create_id_from('AgreementPromoAppl', ['agreementId', 'agreementItemSeqId', 'productPromoId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        productPromoId: json['productPromoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementPromoAppl overridesAgreementPromoAppl(Map<String, dynamic> map) {
    return AgreementPromoAppl(
        entityId: create_id_from('AgreementPromoAppl', ['agreementId', 'agreementItemSeqId', 'productPromoId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        productPromoId: map['productPromoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementRole extractAgreementRole(dynamic json) {
    return AgreementRole(
        entityId: create_id_from('AgreementRole', ['agreementId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        agreementId: json['agreementId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementRole overridesAgreementRole(Map<String, dynamic> map) {
    return AgreementRole(
        entityId: create_id_from('AgreementRole', ['agreementId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        agreementId: map['agreementId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementTerm extractAgreementTerm(dynamic json) {
    return AgreementTerm(
        entityId: create_id_from('AgreementTerm', ['agreementTermId'], json),
        textValue: json['textValue'] as String,
        termDays: json['termDays'] as int,
        maxQuantity: json['maxQuantity'] as double,
        termTypeId: json['termTypeId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        description: json['description'] as String,
        agreementTermId: json['agreementTermId'] as String,
        termValue: json['termValue'] as double,
        invoiceItemTypeId: json['invoiceItemTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        minQuantity: json['minQuantity'] as double,
        agreementId: json['agreementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementTerm overridesAgreementTerm(Map<String, dynamic> map) {
    return AgreementTerm(
        entityId: create_id_from('AgreementTerm', ['agreementTermId'], map),
        textValue: map['textValue'],
        termDays: map['termDays'],
        maxQuantity: map['maxQuantity'],
        termTypeId: map['termTypeId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        description: map['description'],
        agreementTermId: map['agreementTermId'],
        termValue: map['termValue'],
        invoiceItemTypeId: map['invoiceItemTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        minQuantity: map['minQuantity'],
        agreementId: map['agreementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementTermAttribute extractAgreementTermAttribute(dynamic json) {
    return AgreementTermAttribute(
        entityId: create_id_from('AgreementTermAttribute', ['agreementTermId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        agreementTermId: json['agreementTermId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementTermAttribute overridesAgreementTermAttribute(Map<String, dynamic> map) {
    return AgreementTermAttribute(
        entityId: create_id_from('AgreementTermAttribute', ['agreementTermId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        agreementTermId: map['agreementTermId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementType extractAgreementType(dynamic json) {
    return AgreementType(
        entityId: create_id_from('AgreementType', ['agreementTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementType overridesAgreementType(Map<String, dynamic> map) {
    return AgreementType(
        entityId: create_id_from('AgreementType', ['agreementTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementTypeAttr extractAgreementTypeAttr(dynamic json) {
    return AgreementTypeAttr(
        entityId: create_id_from('AgreementTypeAttr', ['agreementTypeId', 'attrName'], json),
        agreementTypeId: json['agreementTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementTypeAttr overridesAgreementTypeAttr(Map<String, dynamic> map) {
    return AgreementTypeAttr(
        entityId: create_id_from('AgreementTypeAttr', ['agreementTypeId', 'attrName'], map),
        agreementTypeId: map['agreementTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AgreementWorkEffortApplic extractAgreementWorkEffortApplic(dynamic json) {
    return AgreementWorkEffortApplic(
        entityId: create_id_from('AgreementWorkEffortApplic', ['agreementId', 'agreementItemSeqId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        agreementId: json['agreementId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AgreementWorkEffortApplic overridesAgreementWorkEffortApplic(Map<String, dynamic> map) {
    return AgreementWorkEffortApplic(
        entityId: create_id_from('AgreementWorkEffortApplic', ['agreementId', 'agreementItemSeqId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        agreementId: map['agreementId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TermType extractTermType(dynamic json) {
    return TermType(
        entityId: create_id_from('TermType', ['termTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        termTypeId: json['termTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TermType overridesTermType(Map<String, dynamic> map) {
    return TermType(
        entityId: create_id_from('TermType', ['termTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        termTypeId: map['termTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TermTypeAttr extractTermTypeAttr(dynamic json) {
    return TermTypeAttr(
        entityId: create_id_from('TermTypeAttr', ['termTypeId', 'attrName'], json),
        termTypeId: json['termTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TermTypeAttr overridesTermTypeAttr(Map<String, dynamic> map) {
    return TermTypeAttr(
        entityId: create_id_from('TermTypeAttr', ['termTypeId', 'attrName'], map),
        termTypeId: map['termTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}