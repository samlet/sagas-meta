import 'package:sagas_meta/src/models/party_contact.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class PartyContactJsonifier{
  static ContactListPartyAndContactMech extractContactListPartyAndContactMech(dynamic json) {
    return ContactListPartyAndContactMech(
        entityId: create_id_from('ContactListPartyAndContactMech', ['contactFromDate', 'fromDate', 'contactListId', 'partyId', 'contactMechId'], json),
        contactThruDate: check_dt(json['contactThruDate']),
        fromDate: check_dt(json['fromDate']),
        infoString: json['infoString'] as String,
        statusId: json['statusId'] as String,
        contactListId: json['contactListId'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        contactFromDate: check_dt(json['contactFromDate']),
        preferredContactMechId: json['preferredContactMechId'] as String,
        partyId: json['partyId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListPartyAndContactMech overridesContactListPartyAndContactMech(Map<String, dynamic> map) {
    return ContactListPartyAndContactMech(
        entityId: create_id_from('ContactListPartyAndContactMech', ['contactFromDate', 'fromDate', 'contactListId', 'partyId', 'contactMechId'], map),
        contactThruDate: map['contactThruDate'],
        fromDate: map['fromDate'],
        infoString: map['infoString'],
        statusId: map['statusId'],
        contactListId: map['contactListId'],
        contactMechTypeId: map['contactMechTypeId'],
        contactFromDate: map['contactFromDate'],
        preferredContactMechId: map['preferredContactMechId'],
        partyId: map['partyId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMech extractContactMech(dynamic json) {
    return ContactMech(
        entityId: create_id_from('ContactMech', ['contactMechId'], json),
        infoString: json['infoString'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMech overridesContactMech(Map<String, dynamic> map) {
    return ContactMech(
        entityId: create_id_from('ContactMech', ['contactMechId'], map),
        infoString: map['infoString'],
        contactMechTypeId: map['contactMechTypeId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechAttribute extractContactMechAttribute(dynamic json) {
    return ContactMechAttribute(
        entityId: create_id_from('ContactMechAttribute', ['contactMechId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        contactMechId: json['contactMechId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechAttribute overridesContactMechAttribute(Map<String, dynamic> map) {
    return ContactMechAttribute(
        entityId: create_id_from('ContactMechAttribute', ['contactMechId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        contactMechId: map['contactMechId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechDetail extractContactMechDetail(dynamic json) {
    return ContactMechDetail(
        entityId: create_id_from('ContactMechDetail', ['contactMechId'], json),
        paMunicipalityGeoId: json['paMunicipalityGeoId'] as String,
        tnAreaCode: json['tnAreaCode'] as String,
        tnContactNumber: json['tnContactNumber'] as String,
        paCountryGeoId: json['paCountryGeoId'] as String,
        paCity: json['paCity'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        paAddress2: json['paAddress2'] as String,
        paAddress1: json['paAddress1'] as String,
        contactMechId: json['contactMechId'] as String,
        paStateProvinceGeoId: json['paStateProvinceGeoId'] as String,
        paToName: json['paToName'] as String,
        infoString: json['infoString'] as String,
        paCountyGeoId: json['paCountyGeoId'] as String,
        paGeoPointId: json['paGeoPointId'] as String,
        paPostalCodeExt: json['paPostalCodeExt'] as String,
        paHouseNumber: json['paHouseNumber'] as int,
        paDirections: json['paDirections'] as String,
        paPostalCode: json['paPostalCode'] as String,
        paAttnName: json['paAttnName'] as String,
        tnCountryCode: json['tnCountryCode'] as String,
        paCityGeoId: json['paCityGeoId'] as String,
        tnAskForName: json['tnAskForName'] as String,
        paHouseNumberExt: json['paHouseNumberExt'] as String,
        paPostalCodeGeoId: json['paPostalCodeGeoId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechDetail overridesContactMechDetail(Map<String, dynamic> map) {
    return ContactMechDetail(
        entityId: create_id_from('ContactMechDetail', ['contactMechId'], map),
        paMunicipalityGeoId: map['paMunicipalityGeoId'],
        tnAreaCode: map['tnAreaCode'],
        tnContactNumber: map['tnContactNumber'],
        paCountryGeoId: map['paCountryGeoId'],
        paCity: map['paCity'],
        contactMechTypeId: map['contactMechTypeId'],
        paAddress2: map['paAddress2'],
        paAddress1: map['paAddress1'],
        contactMechId: map['contactMechId'],
        paStateProvinceGeoId: map['paStateProvinceGeoId'],
        paToName: map['paToName'],
        infoString: map['infoString'],
        paCountyGeoId: map['paCountyGeoId'],
        paGeoPointId: map['paGeoPointId'],
        paPostalCodeExt: map['paPostalCodeExt'],
        paHouseNumber: map['paHouseNumber'],
        paDirections: map['paDirections'],
        paPostalCode: map['paPostalCode'],
        paAttnName: map['paAttnName'],
        tnCountryCode: map['tnCountryCode'],
        paCityGeoId: map['paCityGeoId'],
        tnAskForName: map['tnAskForName'],
        paHouseNumberExt: map['paHouseNumberExt'],
        paPostalCodeGeoId: map['paPostalCodeGeoId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechLink extractContactMechLink(dynamic json) {
    return ContactMechLink(
        entityId: create_id_from('ContactMechLink', ['contactMechIdFrom', 'contactMechIdTo'], json),
        contactMechIdFrom: json['contactMechIdFrom'] as String,
        contactMechIdTo: json['contactMechIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechLink overridesContactMechLink(Map<String, dynamic> map) {
    return ContactMechLink(
        entityId: create_id_from('ContactMechLink', ['contactMechIdFrom', 'contactMechIdTo'], map),
        contactMechIdFrom: map['contactMechIdFrom'],
        contactMechIdTo: map['contactMechIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechPurposeType extractContactMechPurposeType(dynamic json) {
    return ContactMechPurposeType(
        entityId: create_id_from('ContactMechPurposeType', ['contactMechPurposeTypeId'], json),
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechPurposeType overridesContactMechPurposeType(Map<String, dynamic> map) {
    return ContactMechPurposeType(
        entityId: create_id_from('ContactMechPurposeType', ['contactMechPurposeTypeId'], map),
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechType extractContactMechType(dynamic json) {
    return ContactMechType(
        entityId: create_id_from('ContactMechType', ['contactMechTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechType overridesContactMechType(Map<String, dynamic> map) {
    return ContactMechType(
        entityId: create_id_from('ContactMechType', ['contactMechTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechTypeAttr extractContactMechTypeAttr(dynamic json) {
    return ContactMechTypeAttr(
        entityId: create_id_from('ContactMechTypeAttr', ['contactMechTypeId', 'attrName'], json),
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechTypeAttr overridesContactMechTypeAttr(Map<String, dynamic> map) {
    return ContactMechTypeAttr(
        entityId: create_id_from('ContactMechTypeAttr', ['contactMechTypeId', 'attrName'], map),
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactMechTypePurpose extractContactMechTypePurpose(dynamic json) {
    return ContactMechTypePurpose(
        entityId: create_id_from('ContactMechTypePurpose', ['contactMechTypeId', 'contactMechPurposeTypeId'], json),
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactMechTypePurpose overridesContactMechTypePurpose(Map<String, dynamic> map) {
    return ContactMechTypePurpose(
        entityId: create_id_from('ContactMechTypePurpose', ['contactMechTypeId', 'contactMechPurposeTypeId'], map),
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        contactMechTypeId: map['contactMechTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmailAddressVerification extractEmailAddressVerification(dynamic json) {
    return EmailAddressVerification(
        entityId: create_id_from('EmailAddressVerification', ['emailAddress'], json),
        verifyHash: json['verifyHash'] as String,
        emailAddress: json['emailAddress'] as String,
        expireDate: check_dt(json['expireDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmailAddressVerification overridesEmailAddressVerification(Map<String, dynamic> map) {
    return EmailAddressVerification(
        entityId: create_id_from('EmailAddressVerification', ['emailAddress'], map),
        verifyHash: map['verifyHash'],
        emailAddress: map['emailAddress'],
        expireDate: map['expireDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FtpAddress extractFtpAddress(dynamic json) {
    return FtpAddress(
        entityId: create_id_from('FtpAddress', ['contactMechId'], json),
        defaultTimeout: json['defaultTimeout'] as int,
        ftpPassword: json['ftpPassword'] as String,
        filePath: json['filePath'] as String,
        binaryTransfer: json['binaryTransfer'] as String,
        zipFile: json['zipFile'] as String,
        contactMechId: json['contactMechId'] as String,
        passiveMode: json['passiveMode'] as String,
        hostname: json['hostname'] as String,
        port: json['port'] as int,
        username: json['username'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FtpAddress overridesFtpAddress(Map<String, dynamic> map) {
    return FtpAddress(
        entityId: create_id_from('FtpAddress', ['contactMechId'], map),
        defaultTimeout: map['defaultTimeout'],
        ftpPassword: map['ftpPassword'],
        filePath: map['filePath'],
        binaryTransfer: map['binaryTransfer'],
        zipFile: map['zipFile'],
        contactMechId: map['contactMechId'],
        passiveMode: map['passiveMode'],
        hostname: map['hostname'],
        port: map['port'],
        username: map['username'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndContactMech extractPartyAndContactMech(dynamic json) {
    return PartyAndContactMech(
        entityId: create_id_from('PartyAndContactMech', ['partyId', 'contactMechId', 'fromDate', 'paContactMechId', 'tnContactMechId'], json),
        extension: json['extension'] as String,
        tnAreaCode: json['tnAreaCode'] as String,
        tnContactNumber: json['tnContactNumber'] as String,
        paCountryGeoId: json['paCountryGeoId'] as String,
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        paAddress2: json['paAddress2'] as String,
        paAddress1: json['paAddress1'] as String,
        contactMechId: json['contactMechId'] as String,
        paStateProvinceGeoId: json['paStateProvinceGeoId'] as String,
        tnContactMechId: json['tnContactMechId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        infoString: json['infoString'] as String,
        paHouseNumber: json['paHouseNumber'] as int,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        paContactMechId: json['paContactMechId'] as String,
        paAttnName: json['paAttnName'] as String,
        tnCountryCode: json['tnCountryCode'] as String,
        tnAskForName: json['tnAskForName'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        paPostalCodeGeoId: json['paPostalCodeGeoId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        paMunicipalityGeoId: json['paMunicipalityGeoId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        verified: json['verified'] as String,
        externalId: json['externalId'] as String,
        paCity: json['paCity'] as String,
        monthsWithContactMech: json['monthsWithContactMech'] as int,
        isUnread: json['isUnread'] as String,
        thruDate: check_dt(json['thruDate']),
        paToName: json['paToName'] as String,
        fromDate: check_dt(json['fromDate']),
        allowSolicitation: json['allowSolicitation'] as String,
        createdDate: check_dt(json['createdDate']),
        yearsWithContactMech: json['yearsWithContactMech'] as int,
        paCountyGeoId: json['paCountyGeoId'] as String,
        paGeoPointId: json['paGeoPointId'] as String,
        statusId: json['statusId'] as String,
        paPostalCodeExt: json['paPostalCodeExt'] as String,
        paDirections: json['paDirections'] as String,
        paPostalCode: json['paPostalCode'] as String,
        paCityGeoId: json['paCityGeoId'] as String,
        paHouseNumberExt: json['paHouseNumberExt'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndContactMech overridesPartyAndContactMech(Map<String, dynamic> map) {
    return PartyAndContactMech(
        entityId: create_id_from('PartyAndContactMech', ['partyId', 'contactMechId', 'fromDate', 'paContactMechId', 'tnContactMechId'], map),
        extension: map['extension'],
        tnAreaCode: map['tnAreaCode'],
        tnContactNumber: map['tnContactNumber'],
        paCountryGeoId: map['paCountryGeoId'],
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        paAddress2: map['paAddress2'],
        paAddress1: map['paAddress1'],
        contactMechId: map['contactMechId'],
        paStateProvinceGeoId: map['paStateProvinceGeoId'],
        tnContactMechId: map['tnContactMechId'],
        partyTypeId: map['partyTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        infoString: map['infoString'],
        paHouseNumber: map['paHouseNumber'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        paContactMechId: map['paContactMechId'],
        paAttnName: map['paAttnName'],
        tnCountryCode: map['tnCountryCode'],
        tnAskForName: map['tnAskForName'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        paPostalCodeGeoId: map['paPostalCodeGeoId'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        paMunicipalityGeoId: map['paMunicipalityGeoId'],
        lastModifiedDate: map['lastModifiedDate'],
        verified: map['verified'],
        externalId: map['externalId'],
        paCity: map['paCity'],
        monthsWithContactMech: map['monthsWithContactMech'],
        isUnread: map['isUnread'],
        thruDate: map['thruDate'],
        paToName: map['paToName'],
        fromDate: map['fromDate'],
        allowSolicitation: map['allowSolicitation'],
        createdDate: map['createdDate'],
        yearsWithContactMech: map['yearsWithContactMech'],
        paCountyGeoId: map['paCountyGeoId'],
        paGeoPointId: map['paGeoPointId'],
        statusId: map['statusId'],
        paPostalCodeExt: map['paPostalCodeExt'],
        paDirections: map['paDirections'],
        paPostalCode: map['paPostalCode'],
        paCityGeoId: map['paCityGeoId'],
        paHouseNumberExt: map['paHouseNumberExt'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndPostalAddress extractPartyAndPostalAddress(dynamic json) {
    return PartyAndPostalAddress(
        entityId: create_id_from('PartyAndPostalAddress', ['contactMechId', 'partyId', 'fromDate'], json),
        houseNumberExt: json['houseNumberExt'] as String,
        extension: json['extension'] as String,
        city: json['city'] as String,
        postalCode: json['postalCode'] as String,
        postalCodeGeoId: json['postalCodeGeoId'] as String,
        houseNumber: json['houseNumber'] as int,
        contactMechTypeId: json['contactMechTypeId'] as String,
        postalCodeExt: json['postalCodeExt'] as String,
        contactMechId: json['contactMechId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        attnName: json['attnName'] as String,
        infoString: json['infoString'] as String,
        countyGeoId: json['countyGeoId'] as String,
        toName: json['toName'] as String,
        cityGeoId: json['cityGeoId'] as String,
        partyId: json['partyId'] as String,
        countryGeoId: json['countryGeoId'] as String,
        comments: json['comments'] as String,
        address2: json['address2'] as String,
        address1: json['address1'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        allowSolicitation: json['allowSolicitation'] as String,
        statusId: json['statusId'] as String,
        directions: json['directions'] as String,
        municipalityGeoId: json['municipalityGeoId'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        geoPointId: json['geoPointId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndPostalAddress overridesPartyAndPostalAddress(Map<String, dynamic> map) {
    return PartyAndPostalAddress(
        entityId: create_id_from('PartyAndPostalAddress', ['contactMechId', 'partyId', 'fromDate'], map),
        houseNumberExt: map['houseNumberExt'],
        extension: map['extension'],
        city: map['city'],
        postalCode: map['postalCode'],
        postalCodeGeoId: map['postalCodeGeoId'],
        houseNumber: map['houseNumber'],
        contactMechTypeId: map['contactMechTypeId'],
        postalCodeExt: map['postalCodeExt'],
        contactMechId: map['contactMechId'],
        partyTypeId: map['partyTypeId'],
        attnName: map['attnName'],
        infoString: map['infoString'],
        countyGeoId: map['countyGeoId'],
        toName: map['toName'],
        cityGeoId: map['cityGeoId'],
        partyId: map['partyId'],
        countryGeoId: map['countryGeoId'],
        comments: map['comments'],
        address2: map['address2'],
        address1: map['address1'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        allowSolicitation: map['allowSolicitation'],
        statusId: map['statusId'],
        directions: map['directions'],
        municipalityGeoId: map['municipalityGeoId'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        geoPointId: map['geoPointId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndTelecomNumber extractPartyAndTelecomNumber(dynamic json) {
    return PartyAndTelecomNumber(
        entityId: create_id_from('PartyAndTelecomNumber', ['partyId', 'contactMechId', 'fromDate'], json),
        extension: json['extension'] as String,
        askForName: json['askForName'] as String,
        description: json['description'] as String,
        contactMechId: json['contactMechId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        countryCode: json['countryCode'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        contactNumber: json['contactNumber'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        verified: json['verified'] as String,
        externalId: json['externalId'] as String,
        monthsWithContactMech: json['monthsWithContactMech'] as int,
        isUnread: json['isUnread'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        allowSolicitation: json['allowSolicitation'] as String,
        areaCode: json['areaCode'] as String,
        createdDate: check_dt(json['createdDate']),
        yearsWithContactMech: json['yearsWithContactMech'] as int,
        statusId: json['statusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndTelecomNumber overridesPartyAndTelecomNumber(Map<String, dynamic> map) {
    return PartyAndTelecomNumber(
        entityId: create_id_from('PartyAndTelecomNumber', ['partyId', 'contactMechId', 'fromDate'], map),
        extension: map['extension'],
        askForName: map['askForName'],
        description: map['description'],
        contactMechId: map['contactMechId'],
        partyTypeId: map['partyTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        countryCode: map['countryCode'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        contactNumber: map['contactNumber'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        verified: map['verified'],
        externalId: map['externalId'],
        monthsWithContactMech: map['monthsWithContactMech'],
        isUnread: map['isUnread'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        allowSolicitation: map['allowSolicitation'],
        areaCode: map['areaCode'],
        createdDate: map['createdDate'],
        yearsWithContactMech: map['yearsWithContactMech'],
        statusId: map['statusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContactDetailByPurpose extractPartyContactDetailByPurpose(dynamic json) {
    return PartyContactDetailByPurpose(
        entityId: create_id_from('PartyContactDetailByPurpose', ['contactMechPurposeTypeId', 'purposeFromDate', 'contactMechId', 'fromDate', 'partyId', 'stateGeoId'], json),
        purposeFromDate: check_dt(json['purposeFromDate']),
        countryAbbreviation: json['countryAbbreviation'] as String,
        stateGeoCode: json['stateGeoCode'] as String,
        postalCode: json['postalCode'] as String,
        countyWellKnownText: json['countyWellKnownText'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        postalCodeExt: json['postalCodeExt'] as String,
        contactMechId: json['contactMechId'] as String,
        countyGeoTypeId: json['countyGeoTypeId'] as String,
        infoString: json['infoString'] as String,
        countyGeoCode: json['countyGeoCode'] as String,
        countyGeoId: json['countyGeoId'] as String,
        toName: json['toName'] as String,
        cityGeoId: json['cityGeoId'] as String,
        partyId: json['partyId'] as String,
        countryGeoId: json['countryGeoId'] as String,
        countryGeoName: json['countryGeoName'] as String,
        countryGeoSecCode: json['countryGeoSecCode'] as String,
        monthsWithContactMech: json['monthsWithContactMech'] as int,
        countryGeoTypeId: json['countryGeoTypeId'] as String,
        stateGeoId: json['stateGeoId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        areaCode: json['areaCode'] as String,
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        directions: json['directions'] as String,
        stateGeoName: json['stateGeoName'] as String,
        geoPointId: json['geoPointId'] as String,
        stateGeoSecCode: json['stateGeoSecCode'] as String,
        houseNumberExt: json['houseNumberExt'] as String,
        countryGeoCode: json['countryGeoCode'] as String,
        extension: json['extension'] as String,
        askForName: json['askForName'] as String,
        city: json['city'] as String,
        postalCodeGeoId: json['postalCodeGeoId'] as String,
        houseNumber: json['houseNumber'] as int,
        stateGeoTypeId: json['stateGeoTypeId'] as String,
        attnName: json['attnName'] as String,
        countryWellKnownText: json['countryWellKnownText'] as String,
        countryCode: json['countryCode'] as String,
        stateAbbreviation: json['stateAbbreviation'] as String,
        contactNumber: json['contactNumber'] as String,
        purposeThruDate: check_dt(json['purposeThruDate']),
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        address2: json['address2'] as String,
        address1: json['address1'] as String,
        countyAbbreviation: json['countyAbbreviation'] as String,
        verified: json['verified'] as String,
        countyGeoSecCode: json['countyGeoSecCode'] as String,
        allowSolicitation: json['allowSolicitation'] as String,
        yearsWithContactMech: json['yearsWithContactMech'] as int,
        municipalityGeoId: json['municipalityGeoId'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        stateWellKnownText: json['stateWellKnownText'] as String,
        countyGeoName: json['countyGeoName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContactDetailByPurpose overridesPartyContactDetailByPurpose(Map<String, dynamic> map) {
    return PartyContactDetailByPurpose(
        entityId: create_id_from('PartyContactDetailByPurpose', ['contactMechPurposeTypeId', 'purposeFromDate', 'contactMechId', 'fromDate', 'partyId', 'stateGeoId'], map),
        purposeFromDate: map['purposeFromDate'],
        countryAbbreviation: map['countryAbbreviation'],
        stateGeoCode: map['stateGeoCode'],
        postalCode: map['postalCode'],
        countyWellKnownText: map['countyWellKnownText'],
        contactMechTypeId: map['contactMechTypeId'],
        postalCodeExt: map['postalCodeExt'],
        contactMechId: map['contactMechId'],
        countyGeoTypeId: map['countyGeoTypeId'],
        infoString: map['infoString'],
        countyGeoCode: map['countyGeoCode'],
        countyGeoId: map['countyGeoId'],
        toName: map['toName'],
        cityGeoId: map['cityGeoId'],
        partyId: map['partyId'],
        countryGeoId: map['countryGeoId'],
        countryGeoName: map['countryGeoName'],
        countryGeoSecCode: map['countryGeoSecCode'],
        monthsWithContactMech: map['monthsWithContactMech'],
        countryGeoTypeId: map['countryGeoTypeId'],
        stateGeoId: map['stateGeoId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        areaCode: map['areaCode'],
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        directions: map['directions'],
        stateGeoName: map['stateGeoName'],
        geoPointId: map['geoPointId'],
        stateGeoSecCode: map['stateGeoSecCode'],
        houseNumberExt: map['houseNumberExt'],
        countryGeoCode: map['countryGeoCode'],
        extension: map['extension'],
        askForName: map['askForName'],
        city: map['city'],
        postalCodeGeoId: map['postalCodeGeoId'],
        houseNumber: map['houseNumber'],
        stateGeoTypeId: map['stateGeoTypeId'],
        attnName: map['attnName'],
        countryWellKnownText: map['countryWellKnownText'],
        countryCode: map['countryCode'],
        stateAbbreviation: map['stateAbbreviation'],
        contactNumber: map['contactNumber'],
        purposeThruDate: map['purposeThruDate'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        address2: map['address2'],
        address1: map['address1'],
        countyAbbreviation: map['countyAbbreviation'],
        verified: map['verified'],
        countyGeoSecCode: map['countyGeoSecCode'],
        allowSolicitation: map['allowSolicitation'],
        yearsWithContactMech: map['yearsWithContactMech'],
        municipalityGeoId: map['municipalityGeoId'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        stateWellKnownText: map['stateWellKnownText'],
        countyGeoName: map['countyGeoName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContactMech extractPartyContactMech(dynamic json) {
    return PartyContactMech(
        entityId: create_id_from('PartyContactMech', ['partyId', 'contactMechId', 'fromDate'], json),
        roleTypeId: json['roleTypeId'] as String,
        extension: json['extension'] as String,
        comments: json['comments'] as String,
        verified: json['verified'] as String,
        monthsWithContactMech: json['monthsWithContactMech'] as int,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        allowSolicitation: json['allowSolicitation'] as String,
        yearsWithContactMech: json['yearsWithContactMech'] as int,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContactMech overridesPartyContactMech(Map<String, dynamic> map) {
    return PartyContactMech(
        entityId: create_id_from('PartyContactMech', ['partyId', 'contactMechId', 'fromDate'], map),
        roleTypeId: map['roleTypeId'],
        extension: map['extension'],
        comments: map['comments'],
        verified: map['verified'],
        monthsWithContactMech: map['monthsWithContactMech'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        allowSolicitation: map['allowSolicitation'],
        yearsWithContactMech: map['yearsWithContactMech'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContactMechPurpose extractPartyContactMechPurpose(dynamic json) {
    return PartyContactMechPurpose(
        entityId: create_id_from('PartyContactMechPurpose', ['partyId', 'contactMechId', 'contactMechPurposeTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        partyId: json['partyId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContactMechPurpose overridesPartyContactMechPurpose(Map<String, dynamic> map) {
    return PartyContactMechPurpose(
        entityId: create_id_from('PartyContactMechPurpose', ['partyId', 'contactMechId', 'contactMechPurposeTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        partyId: map['partyId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PostalAddress extractPostalAddress(dynamic json) {
    return PostalAddress(
        entityId: create_id_from('PostalAddress', ['contactMechId'], json),
        countryGeoId: json['countryGeoId'] as String,
        houseNumberExt: json['houseNumberExt'] as String,
        address2: json['address2'] as String,
        city: json['city'] as String,
        address1: json['address1'] as String,
        postalCode: json['postalCode'] as String,
        postalCodeGeoId: json['postalCodeGeoId'] as String,
        houseNumber: json['houseNumber'] as int,
        postalCodeExt: json['postalCodeExt'] as String,
        contactMechId: json['contactMechId'] as String,
        attnName: json['attnName'] as String,
        directions: json['directions'] as String,
        countyGeoId: json['countyGeoId'] as String,
        toName: json['toName'] as String,
        cityGeoId: json['cityGeoId'] as String,
        municipalityGeoId: json['municipalityGeoId'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        geoPointId: json['geoPointId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PostalAddress overridesPostalAddress(Map<String, dynamic> map) {
    return PostalAddress(
        entityId: create_id_from('PostalAddress', ['contactMechId'], map),
        countryGeoId: map['countryGeoId'],
        houseNumberExt: map['houseNumberExt'],
        address2: map['address2'],
        city: map['city'],
        address1: map['address1'],
        postalCode: map['postalCode'],
        postalCodeGeoId: map['postalCodeGeoId'],
        houseNumber: map['houseNumber'],
        postalCodeExt: map['postalCodeExt'],
        contactMechId: map['contactMechId'],
        attnName: map['attnName'],
        directions: map['directions'],
        countyGeoId: map['countyGeoId'],
        toName: map['toName'],
        cityGeoId: map['cityGeoId'],
        municipalityGeoId: map['municipalityGeoId'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        geoPointId: map['geoPointId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PostalAddressBoundary extractPostalAddressBoundary(dynamic json) {
    return PostalAddressBoundary(
        entityId: create_id_from('PostalAddressBoundary', ['contactMechId', 'geoId'], json),
        geoId: json['geoId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PostalAddressBoundary overridesPostalAddressBoundary(Map<String, dynamic> map) {
    return PostalAddressBoundary(
        entityId: create_id_from('PostalAddressBoundary', ['contactMechId', 'geoId'], map),
        geoId: map['geoId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TelecomNumber extractTelecomNumber(dynamic json) {
    return TelecomNumber(
        entityId: create_id_from('TelecomNumber', ['contactMechId'], json),
        areaCode: json['areaCode'] as String,
        askForName: json['askForName'] as String,
        countryCode: json['countryCode'] as String,
        contactNumber: json['contactNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TelecomNumber overridesTelecomNumber(Map<String, dynamic> map) {
    return TelecomNumber(
        entityId: create_id_from('TelecomNumber', ['contactMechId'], map),
        areaCode: map['areaCode'],
        askForName: map['askForName'],
        countryCode: map['countryCode'],
        contactNumber: map['contactNumber'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ValidContactMechRole extractValidContactMechRole(dynamic json) {
    return ValidContactMechRole(
        entityId: create_id_from('ValidContactMechRole', ['roleTypeId', 'contactMechTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ValidContactMechRole overridesValidContactMechRole(Map<String, dynamic> map) {
    return ValidContactMechRole(
        entityId: create_id_from('ValidContactMechRole', ['roleTypeId', 'contactMechTypeId'], map),
        roleTypeId: map['roleTypeId'],
        contactMechTypeId: map['contactMechTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}