import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ContactListPartyAndContactMech, ContactListPartyAndContactMech
class ContactListPartyAndContactMech extends EntityBase {

  final DateTime contactThruDate;
  final DateTime fromDate; // pk
  final String infoString;
  final String statusId;
  final String contactListId; // pk
  final String contactMechTypeId;
  final DateTime contactFromDate; // pk
  final String preferredContactMechId;
  final String partyId; // pk
  final String contactMechId; // pk
  final DateTime thruDate;
  ContactListPartyAndContactMech({entityId,
    this.contactThruDate, @required this.fromDate, this.infoString, this.statusId, @required this.contactListId, this.contactMechTypeId, @required this.contactFromDate, this.preferredContactMechId, @required this.partyId, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListPartyAndContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactThruDate':contactThruDate, 'fromDate':fromDate, 'infoString':infoString, 'statusId':statusId, 'contactListId':contactListId, 'contactMechTypeId':contactMechTypeId, 'contactFromDate':contactFromDate, 'preferredContactMechId':preferredContactMechId, 'partyId':partyId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity ContactMech, Contact Mechanism
class ContactMech extends EntityBase {

  /// this entity has only one pk
  final String infoString;
  final String contactMechTypeId;
  final String contactMechId; // pk
  ContactMech({entityId,
    this.infoString, this.contactMechTypeId, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'infoString':infoString, 'contactMechTypeId':contactMechTypeId, 'contactMechId':contactMechId};
  }

}

/// Entity ContactMechAttribute, Contact Mechanism Attribute
class ContactMechAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String contactMechId; // pk
  final String attrName; // pk
  ContactMechAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.contactMechId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'contactMechId':contactMechId, 'attrName':attrName};
  }

}

/// Entity ContactMechDetail, Contact Mech Detail View
class ContactMechDetail extends EntityBase {

  /// this entity has only one pk
  final String paMunicipalityGeoId;
  final String tnAreaCode;
  final String tnContactNumber;
  final String paCountryGeoId;
  final String paCity;
  final String contactMechTypeId;
  final String paAddress2;
  final String paAddress1;
  final String contactMechId; // pk
  final String paStateProvinceGeoId;
  final String paToName;
  final String infoString;
  final String paCountyGeoId;
  final String paGeoPointId;
  final String paPostalCodeExt;
  final int paHouseNumber;
  final String paDirections;
  final String paPostalCode;
  final String paAttnName;
  final String tnCountryCode;
  final String paCityGeoId;
  final String tnAskForName;
  final String paHouseNumberExt;
  final String paPostalCodeGeoId;
  ContactMechDetail({entityId,
    this.paMunicipalityGeoId, this.tnAreaCode, this.tnContactNumber, this.paCountryGeoId, this.paCity, this.contactMechTypeId, this.paAddress2, this.paAddress1, @required this.contactMechId, this.paStateProvinceGeoId, this.paToName, this.infoString, this.paCountyGeoId, this.paGeoPointId, this.paPostalCodeExt, this.paHouseNumber, this.paDirections, this.paPostalCode, this.paAttnName, this.tnCountryCode, this.paCityGeoId, this.tnAskForName, this.paHouseNumberExt, this.paPostalCodeGeoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paMunicipalityGeoId':paMunicipalityGeoId, 'tnAreaCode':tnAreaCode, 'tnContactNumber':tnContactNumber, 'paCountryGeoId':paCountryGeoId, 'paCity':paCity, 'contactMechTypeId':contactMechTypeId, 'paAddress2':paAddress2, 'paAddress1':paAddress1, 'contactMechId':contactMechId, 'paStateProvinceGeoId':paStateProvinceGeoId, 'paToName':paToName, 'infoString':infoString, 'paCountyGeoId':paCountyGeoId, 'paGeoPointId':paGeoPointId, 'paPostalCodeExt':paPostalCodeExt, 'paHouseNumber':paHouseNumber, 'paDirections':paDirections, 'paPostalCode':paPostalCode, 'paAttnName':paAttnName, 'tnCountryCode':tnCountryCode, 'paCityGeoId':paCityGeoId, 'tnAskForName':tnAskForName, 'paHouseNumberExt':paHouseNumberExt, 'paPostalCodeGeoId':paPostalCodeGeoId};
  }

}

/// Entity ContactMechLink, Contact Mechanism Link
class ContactMechLink extends EntityBase {

  final String contactMechIdFrom; // pk
  final String contactMechIdTo; // pk
  ContactMechLink({entityId,
    @required this.contactMechIdFrom, @required this.contactMechIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechLink { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechIdFrom':contactMechIdFrom, 'contactMechIdTo':contactMechIdTo};
  }

}

/// Entity ContactMechPurposeType, Contact Mechanism Purpose Type
class ContactMechPurposeType extends EntityBase {

  /// this entity has only one pk
  final String contactMechPurposeTypeId; // pk
  final String description;
  ContactMechPurposeType({entityId,
    @required this.contactMechPurposeTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechPurposeType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechPurposeTypeId':contactMechPurposeTypeId, 'description':description};
  }

}

/// Entity ContactMechType, Contact Mechanism Type
class ContactMechType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String contactMechTypeId; // pk
  ContactMechType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.contactMechTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'contactMechTypeId':contactMechTypeId};
  }

}

/// Entity ContactMechTypeAttr, Contact Mechanism Type Attribute
class ContactMechTypeAttr extends EntityBase {

  final String description;
  final String contactMechTypeId; // pk
  final String attrName; // pk
  ContactMechTypeAttr({entityId,
    this.description, @required this.contactMechTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'contactMechTypeId':contactMechTypeId, 'attrName':attrName};
  }

}

/// Entity ContactMechTypePurpose, Contact Mechanism Type Purpose
class ContactMechTypePurpose extends EntityBase {

  final String contactMechPurposeTypeId; // pk
  final String contactMechTypeId; // pk
  ContactMechTypePurpose({entityId,
    @required this.contactMechPurposeTypeId, @required this.contactMechTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactMechTypePurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechPurposeTypeId':contactMechPurposeTypeId, 'contactMechTypeId':contactMechTypeId};
  }

}

/// Entity EmailAddressVerification, Email Address Verification
class EmailAddressVerification extends EntityBase {

  /// this entity has only one pk
  final String verifyHash;
  final String emailAddress; // pk
  final DateTime expireDate;
  EmailAddressVerification({entityId,
    this.verifyHash, @required this.emailAddress, this.expireDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmailAddressVerification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'verifyHash':verifyHash, 'emailAddress':emailAddress, 'expireDate':expireDate};
  }

}

/// Entity FtpAddress, Ftp server
class FtpAddress extends EntityBase {

  /// this entity has only one pk
  final int defaultTimeout;
  final String ftpPassword;
  final String filePath;
  final String binaryTransfer;
  final String zipFile;
  final String contactMechId; // pk
  final String passiveMode;
  final String hostname;
  final int port;
  final String username;
  FtpAddress({entityId,
    this.defaultTimeout, this.ftpPassword, this.filePath, this.binaryTransfer, this.zipFile, @required this.contactMechId, this.passiveMode, this.hostname, this.port, this.username,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FtpAddress { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'defaultTimeout':defaultTimeout, 'ftpPassword':ftpPassword, 'filePath':filePath, 'binaryTransfer':binaryTransfer, 'zipFile':zipFile, 'contactMechId':contactMechId, 'passiveMode':passiveMode, 'hostname':hostname, 'port':port, 'username':username};
  }

}

/// Entity PartyAndContactMech, Party and Contact Mech View
class PartyAndContactMech extends EntityBase {

  final String extension;
  final String tnAreaCode;
  final String tnContactNumber;
  final String paCountryGeoId;
  final String description;
  final String contactMechTypeId;
  final String paAddress2;
  final String paAddress1;
  final String contactMechId; // pk
  final String paStateProvinceGeoId;
  final String tnContactMechId; // pk
  final String partyTypeId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String infoString;
  final int paHouseNumber;
  final String preferredCurrencyUomId;
  final String paContactMechId; // pk
  final String paAttnName;
  final String tnCountryCode;
  final String tnAskForName;
  final String partyId; // pk
  final String createdByUserLogin;
  final String paPostalCodeGeoId;
  final String roleTypeId;
  final String comments;
  final String paMunicipalityGeoId;
  final DateTime lastModifiedDate;
  final String verified;
  final String externalId;
  final String paCity;
  final int monthsWithContactMech;
  final String isUnread;
  final DateTime thruDate;
  final String paToName;
  final DateTime fromDate; // pk
  final String allowSolicitation;
  final DateTime createdDate;
  final int yearsWithContactMech;
  final String paCountyGeoId;
  final String paGeoPointId;
  final String statusId;
  final String paPostalCodeExt;
  final String paDirections;
  final String paPostalCode;
  final String paCityGeoId;
  final String paHouseNumberExt;
  PartyAndContactMech({entityId,
    this.extension, this.tnAreaCode, this.tnContactNumber, this.paCountryGeoId, this.description, this.contactMechTypeId, this.paAddress2, this.paAddress1, @required this.contactMechId, this.paStateProvinceGeoId, @required this.tnContactMechId, this.partyTypeId, this.lastModifiedByUserLogin, this.dataSourceId, this.infoString, this.paHouseNumber, this.preferredCurrencyUomId, @required this.paContactMechId, this.paAttnName, this.tnCountryCode, this.tnAskForName, @required this.partyId, this.createdByUserLogin, this.paPostalCodeGeoId, this.roleTypeId, this.comments, this.paMunicipalityGeoId, this.lastModifiedDate, this.verified, this.externalId, this.paCity, this.monthsWithContactMech, this.isUnread, this.thruDate, this.paToName, @required this.fromDate, this.allowSolicitation, this.createdDate, this.yearsWithContactMech, this.paCountyGeoId, this.paGeoPointId, this.statusId, this.paPostalCodeExt, this.paDirections, this.paPostalCode, this.paCityGeoId, this.paHouseNumberExt,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'extension':extension, 'tnAreaCode':tnAreaCode, 'tnContactNumber':tnContactNumber, 'paCountryGeoId':paCountryGeoId, 'description':description, 'contactMechTypeId':contactMechTypeId, 'paAddress2':paAddress2, 'paAddress1':paAddress1, 'contactMechId':contactMechId, 'paStateProvinceGeoId':paStateProvinceGeoId, 'tnContactMechId':tnContactMechId, 'partyTypeId':partyTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'infoString':infoString, 'paHouseNumber':paHouseNumber, 'preferredCurrencyUomId':preferredCurrencyUomId, 'paContactMechId':paContactMechId, 'paAttnName':paAttnName, 'tnCountryCode':tnCountryCode, 'tnAskForName':tnAskForName, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'paPostalCodeGeoId':paPostalCodeGeoId, 'roleTypeId':roleTypeId, 'comments':comments, 'paMunicipalityGeoId':paMunicipalityGeoId, 'lastModifiedDate':lastModifiedDate, 'verified':verified, 'externalId':externalId, 'paCity':paCity, 'monthsWithContactMech':monthsWithContactMech, 'isUnread':isUnread, 'thruDate':thruDate, 'paToName':paToName, 'fromDate':fromDate, 'allowSolicitation':allowSolicitation, 'createdDate':createdDate, 'yearsWithContactMech':yearsWithContactMech, 'paCountyGeoId':paCountyGeoId, 'paGeoPointId':paGeoPointId, 'statusId':statusId, 'paPostalCodeExt':paPostalCodeExt, 'paDirections':paDirections, 'paPostalCode':paPostalCode, 'paCityGeoId':paCityGeoId, 'paHouseNumberExt':paHouseNumberExt};
  }

}

/// Entity PartyAndPostalAddress, Party and Contact Mech/Postal Address View
class PartyAndPostalAddress extends EntityBase {

  final String houseNumberExt;
  final String extension;
  final String city;
  final String postalCode;
  final String postalCodeGeoId;
  final int houseNumber;
  final String contactMechTypeId;
  final String postalCodeExt;
  final String contactMechId; // pk
  final String partyTypeId;
  final String attnName;
  final String infoString;
  final String countyGeoId;
  final String toName;
  final String cityGeoId;
  final String partyId; // pk
  final String countryGeoId;
  final String comments;
  final String address2;
  final String address1;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String allowSolicitation;
  final String statusId;
  final String directions;
  final String municipalityGeoId;
  final String stateProvinceGeoId;
  final String geoPointId;
  PartyAndPostalAddress({entityId,
    this.houseNumberExt, this.extension, this.city, this.postalCode, this.postalCodeGeoId, this.houseNumber, this.contactMechTypeId, this.postalCodeExt, @required this.contactMechId, this.partyTypeId, this.attnName, this.infoString, this.countyGeoId, this.toName, this.cityGeoId, @required this.partyId, this.countryGeoId, this.comments, this.address2, this.address1, this.thruDate, @required this.fromDate, this.allowSolicitation, this.statusId, this.directions, this.municipalityGeoId, this.stateProvinceGeoId, this.geoPointId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndPostalAddress { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'houseNumberExt':houseNumberExt, 'extension':extension, 'city':city, 'postalCode':postalCode, 'postalCodeGeoId':postalCodeGeoId, 'houseNumber':houseNumber, 'contactMechTypeId':contactMechTypeId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'partyTypeId':partyTypeId, 'attnName':attnName, 'infoString':infoString, 'countyGeoId':countyGeoId, 'toName':toName, 'cityGeoId':cityGeoId, 'partyId':partyId, 'countryGeoId':countryGeoId, 'comments':comments, 'address2':address2, 'address1':address1, 'thruDate':thruDate, 'fromDate':fromDate, 'allowSolicitation':allowSolicitation, 'statusId':statusId, 'directions':directions, 'municipalityGeoId':municipalityGeoId, 'stateProvinceGeoId':stateProvinceGeoId, 'geoPointId':geoPointId};
  }

}

/// Entity PartyAndTelecomNumber, Party and TelecomNumber View
class PartyAndTelecomNumber extends EntityBase {

  final String extension;
  final String askForName;
  final String description;
  final String contactMechId; // pk
  final String partyTypeId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String countryCode;
  final String preferredCurrencyUomId;
  final String contactNumber;
  final String partyId; // pk
  final String createdByUserLogin;
  final String roleTypeId;
  final String comments;
  final DateTime lastModifiedDate;
  final String verified;
  final String externalId;
  final int monthsWithContactMech;
  final String isUnread;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String allowSolicitation;
  final String areaCode;
  final DateTime createdDate;
  final int yearsWithContactMech;
  final String statusId;
  PartyAndTelecomNumber({entityId,
    this.extension, this.askForName, this.description, @required this.contactMechId, this.partyTypeId, this.lastModifiedByUserLogin, this.dataSourceId, this.countryCode, this.preferredCurrencyUomId, this.contactNumber, @required this.partyId, this.createdByUserLogin, this.roleTypeId, this.comments, this.lastModifiedDate, this.verified, this.externalId, this.monthsWithContactMech, this.isUnread, this.thruDate, @required this.fromDate, this.allowSolicitation, this.areaCode, this.createdDate, this.yearsWithContactMech, this.statusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndTelecomNumber { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'extension':extension, 'askForName':askForName, 'description':description, 'contactMechId':contactMechId, 'partyTypeId':partyTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'countryCode':countryCode, 'preferredCurrencyUomId':preferredCurrencyUomId, 'contactNumber':contactNumber, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'roleTypeId':roleTypeId, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'verified':verified, 'externalId':externalId, 'monthsWithContactMech':monthsWithContactMech, 'isUnread':isUnread, 'thruDate':thruDate, 'fromDate':fromDate, 'allowSolicitation':allowSolicitation, 'areaCode':areaCode, 'createdDate':createdDate, 'yearsWithContactMech':yearsWithContactMech, 'statusId':statusId};
  }

}

/// Entity PartyContactDetailByPurpose, Party Contact Purpose View
class PartyContactDetailByPurpose extends EntityBase {

  final DateTime purposeFromDate; // pk
  final String countryAbbreviation;
  final String stateGeoCode;
  final String postalCode;
  final String countyWellKnownText;
  final String contactMechTypeId;
  final String postalCodeExt;
  final String contactMechId; // pk
  final String countyGeoTypeId;
  final String infoString;
  final String countyGeoCode;
  final String countyGeoId;
  final String toName;
  final String cityGeoId;
  final String partyId; // pk
  final String countryGeoId;
  final String countryGeoName;
  final String countryGeoSecCode;
  final int monthsWithContactMech;
  final String countryGeoTypeId;
  final String stateGeoId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String areaCode;
  final String contactMechPurposeTypeId; // pk
  final String directions;
  final String stateGeoName;
  final String geoPointId;
  final String stateGeoSecCode;
  final String houseNumberExt;
  final String countryGeoCode;
  final String extension;
  final String askForName;
  final String city;
  final String postalCodeGeoId;
  final int houseNumber;
  final String stateGeoTypeId;
  final String attnName;
  final String countryWellKnownText;
  final String countryCode;
  final String stateAbbreviation;
  final String contactNumber;
  final DateTime purposeThruDate;
  final String roleTypeId;
  final String comments;
  final String address2;
  final String address1;
  final String countyAbbreviation;
  final String verified;
  final String countyGeoSecCode;
  final String allowSolicitation;
  final int yearsWithContactMech;
  final String municipalityGeoId;
  final String stateProvinceGeoId;
  final String stateWellKnownText;
  final String countyGeoName;
  PartyContactDetailByPurpose({entityId,
    @required this.purposeFromDate, this.countryAbbreviation, this.stateGeoCode, this.postalCode, this.countyWellKnownText, this.contactMechTypeId, this.postalCodeExt, @required this.contactMechId, this.countyGeoTypeId, this.infoString, this.countyGeoCode, this.countyGeoId, this.toName, this.cityGeoId, @required this.partyId, this.countryGeoId, this.countryGeoName, this.countryGeoSecCode, this.monthsWithContactMech, this.countryGeoTypeId, @required this.stateGeoId, this.thruDate, @required this.fromDate, this.areaCode, @required this.contactMechPurposeTypeId, this.directions, this.stateGeoName, this.geoPointId, this.stateGeoSecCode, this.houseNumberExt, this.countryGeoCode, this.extension, this.askForName, this.city, this.postalCodeGeoId, this.houseNumber, this.stateGeoTypeId, this.attnName, this.countryWellKnownText, this.countryCode, this.stateAbbreviation, this.contactNumber, this.purposeThruDate, this.roleTypeId, this.comments, this.address2, this.address1, this.countyAbbreviation, this.verified, this.countyGeoSecCode, this.allowSolicitation, this.yearsWithContactMech, this.municipalityGeoId, this.stateProvinceGeoId, this.stateWellKnownText, this.countyGeoName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContactDetailByPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'purposeFromDate':purposeFromDate, 'countryAbbreviation':countryAbbreviation, 'stateGeoCode':stateGeoCode, 'postalCode':postalCode, 'countyWellKnownText':countyWellKnownText, 'contactMechTypeId':contactMechTypeId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'countyGeoTypeId':countyGeoTypeId, 'infoString':infoString, 'countyGeoCode':countyGeoCode, 'countyGeoId':countyGeoId, 'toName':toName, 'cityGeoId':cityGeoId, 'partyId':partyId, 'countryGeoId':countryGeoId, 'countryGeoName':countryGeoName, 'countryGeoSecCode':countryGeoSecCode, 'monthsWithContactMech':monthsWithContactMech, 'countryGeoTypeId':countryGeoTypeId, 'stateGeoId':stateGeoId, 'thruDate':thruDate, 'fromDate':fromDate, 'areaCode':areaCode, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'directions':directions, 'stateGeoName':stateGeoName, 'geoPointId':geoPointId, 'stateGeoSecCode':stateGeoSecCode, 'houseNumberExt':houseNumberExt, 'countryGeoCode':countryGeoCode, 'extension':extension, 'askForName':askForName, 'city':city, 'postalCodeGeoId':postalCodeGeoId, 'houseNumber':houseNumber, 'stateGeoTypeId':stateGeoTypeId, 'attnName':attnName, 'countryWellKnownText':countryWellKnownText, 'countryCode':countryCode, 'stateAbbreviation':stateAbbreviation, 'contactNumber':contactNumber, 'purposeThruDate':purposeThruDate, 'roleTypeId':roleTypeId, 'comments':comments, 'address2':address2, 'address1':address1, 'countyAbbreviation':countyAbbreviation, 'verified':verified, 'countyGeoSecCode':countyGeoSecCode, 'allowSolicitation':allowSolicitation, 'yearsWithContactMech':yearsWithContactMech, 'municipalityGeoId':municipalityGeoId, 'stateProvinceGeoId':stateProvinceGeoId, 'stateWellKnownText':stateWellKnownText, 'countyGeoName':countyGeoName};
  }

}

/// Entity PartyContactMech, Party Contact Mechanism
class PartyContactMech extends EntityBase {

  final String roleTypeId;
  final String extension;
  final String comments;
  final String verified;
  final int monthsWithContactMech;
  final String contactMechId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String allowSolicitation;
  final int yearsWithContactMech;
  final String partyId; // pk
  PartyContactMech({entityId,
    this.roleTypeId, this.extension, this.comments, this.verified, this.monthsWithContactMech, @required this.contactMechId, this.thruDate, @required this.fromDate, this.allowSolicitation, this.yearsWithContactMech, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'extension':extension, 'comments':comments, 'verified':verified, 'monthsWithContactMech':monthsWithContactMech, 'contactMechId':contactMechId, 'thruDate':thruDate, 'fromDate':fromDate, 'allowSolicitation':allowSolicitation, 'yearsWithContactMech':yearsWithContactMech, 'partyId':partyId};
  }

}

/// Entity PartyContactMechPurpose, Party Contact Mechanism Purpose
class PartyContactMechPurpose extends EntityBase {

  final DateTime fromDate; // pk
  final String contactMechPurposeTypeId; // pk
  final String partyId; // pk
  final String contactMechId; // pk
  final DateTime thruDate;
  PartyContactMechPurpose({entityId,
    @required this.fromDate, @required this.contactMechPurposeTypeId, @required this.partyId, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContactMechPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'partyId':partyId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity PostalAddress, Postal Address
class PostalAddress extends EntityBase {

  /// this entity has only one pk
  final String countryGeoId;
  final String houseNumberExt;
  final String address2;
  final String city;
  final String address1;
  final String postalCode;
  final String postalCodeGeoId;
  final int houseNumber;
  final String postalCodeExt;
  final String contactMechId; // pk
  final String attnName;
  final String directions;
  final String countyGeoId;
  final String toName;
  final String cityGeoId;
  final String municipalityGeoId;
  final String stateProvinceGeoId;
  final String geoPointId;
  PostalAddress({entityId,
    this.countryGeoId, this.houseNumberExt, this.address2, this.city, this.address1, this.postalCode, this.postalCodeGeoId, this.houseNumber, this.postalCodeExt, @required this.contactMechId, this.attnName, this.directions, this.countyGeoId, this.toName, this.cityGeoId, this.municipalityGeoId, this.stateProvinceGeoId, this.geoPointId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PostalAddress { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryGeoId':countryGeoId, 'houseNumberExt':houseNumberExt, 'address2':address2, 'city':city, 'address1':address1, 'postalCode':postalCode, 'postalCodeGeoId':postalCodeGeoId, 'houseNumber':houseNumber, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'attnName':attnName, 'directions':directions, 'countyGeoId':countyGeoId, 'toName':toName, 'cityGeoId':cityGeoId, 'municipalityGeoId':municipalityGeoId, 'stateProvinceGeoId':stateProvinceGeoId, 'geoPointId':geoPointId};
  }

}

/// Entity PostalAddressBoundary, Postal Address Boundary
class PostalAddressBoundary extends EntityBase {

  final String geoId; // pk
  final String contactMechId; // pk
  PostalAddressBoundary({entityId,
    @required this.geoId, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PostalAddressBoundary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoId':geoId, 'contactMechId':contactMechId};
  }

}

/// Entity TelecomNumber, Telecommunications Number
class TelecomNumber extends EntityBase {

  /// this entity has only one pk
  final String areaCode;
  final String askForName;
  final String countryCode;
  final String contactNumber;
  final String contactMechId; // pk
  TelecomNumber({entityId,
    this.areaCode, this.askForName, this.countryCode, this.contactNumber, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TelecomNumber { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'areaCode':areaCode, 'askForName':askForName, 'countryCode':countryCode, 'contactNumber':contactNumber, 'contactMechId':contactMechId};
  }

}

/// Entity ValidContactMechRole, Valid Contact Mechanism Role
class ValidContactMechRole extends EntityBase {

  final String roleTypeId; // pk
  final String contactMechTypeId; // pk
  ValidContactMechRole({entityId,
    @required this.roleTypeId, @required this.contactMechTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ValidContactMechRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'contactMechTypeId':contactMechTypeId};
  }

}