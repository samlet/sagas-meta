import 'package:sagas_meta/src/models/party_party.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class PartyPartyJsonifier{
  static AddressMatchMap extractAddressMatchMap(dynamic json) {
    return AddressMatchMap(
        entityId: create_id_from('AddressMatchMap', ['mapKey', 'mapValue'], json),
        mapValue: json['mapValue'] as String,
        sequenceNum: json['sequenceNum'] as int,
        mapKey: json['mapKey'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AddressMatchMap overridesAddressMatchMap(Map<String, dynamic> map) {
    return AddressMatchMap(
        entityId: create_id_from('AddressMatchMap', ['mapKey', 'mapValue'], map),
        mapValue: map['mapValue'],
        sequenceNum: map['sequenceNum'],
        mapKey: map['mapKey'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Affiliate extractAffiliate(dynamic json) {
    return Affiliate(
        entityId: create_id_from('Affiliate', ['partyId'], json),
        yearEstablished: json['yearEstablished'] as String,
        affiliateDescription: json['affiliateDescription'] as String,
        sitePageViews: json['sitePageViews'] as String,
        affiliateName: json['affiliateName'] as String,
        dateTimeCreated: check_dt(json['dateTimeCreated']),
        dateTimeApproved: check_dt(json['dateTimeApproved']),
        partyId: json['partyId'] as String,
        siteVisitors: json['siteVisitors'] as String,
        siteType: json['siteType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Affiliate overridesAffiliate(Map<String, dynamic> map) {
    return Affiliate(
        entityId: create_id_from('Affiliate', ['partyId'], map),
        yearEstablished: map['yearEstablished'],
        affiliateDescription: map['affiliateDescription'],
        sitePageViews: map['sitePageViews'],
        affiliateName: map['affiliateName'],
        dateTimeCreated: map['dateTimeCreated'],
        dateTimeApproved: map['dateTimeApproved'],
        partyId: map['partyId'],
        siteVisitors: map['siteVisitors'],
        siteType: map['siteType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Party extractParty(dynamic json) {
    return Party(
        entityId: create_id_from('Party', ['partyId'], json),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        description: json['description'] as String,
        isUnread: json['isUnread'] as String,
        partyTypeId: json['partyTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Party overridesParty(Map<String, dynamic> map) {
    return Party(
        entityId: create_id_from('Party', ['partyId'], map),
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        description: map['description'],
        isUnread: map['isUnread'],
        partyTypeId: map['partyTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAcctgPrefAndGroup extractPartyAcctgPrefAndGroup(dynamic json) {
    return PartyAcctgPrefAndGroup(
        entityId: create_id_from('PartyAcctgPrefAndGroup', ['partyId', 'roleTypeId'], json),
        groupName: json['groupName'] as String,
        roleTypeId: json['roleTypeId'] as String,
        baseCurrencyUomId: json['baseCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAcctgPrefAndGroup overridesPartyAcctgPrefAndGroup(Map<String, dynamic> map) {
    return PartyAcctgPrefAndGroup(
        entityId: create_id_from('PartyAcctgPrefAndGroup', ['partyId', 'roleTypeId'], map),
        groupName: map['groupName'],
        roleTypeId: map['roleTypeId'],
        baseCurrencyUomId: map['baseCurrencyUomId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndGeoPoint extractPartyAndGeoPoint(dynamic json) {
    return PartyAndGeoPoint(
        entityId: create_id_from('PartyAndGeoPoint', ['partyId', 'fromDate', 'geoPointId'], json),
        fromDate: check_dt(json['fromDate']),
        elevation: json['elevation'] as double,
        dataSourceId: json['dataSourceId'] as String,
        elevationUomId: json['elevationUomId'] as String,
        geoPointTypeEnumId: json['geoPointTypeEnumId'] as String,
        latitude: json['latitude'] as String,
        description: json['description'] as String,
        information: json['information'] as String,
        partyId: json['partyId'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        longitude: json['longitude'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndGeoPoint overridesPartyAndGeoPoint(Map<String, dynamic> map) {
    return PartyAndGeoPoint(
        entityId: create_id_from('PartyAndGeoPoint', ['partyId', 'fromDate', 'geoPointId'], map),
        fromDate: map['fromDate'],
        elevation: map['elevation'],
        dataSourceId: map['dataSourceId'],
        elevationUomId: map['elevationUomId'],
        geoPointTypeEnumId: map['geoPointTypeEnumId'],
        latitude: map['latitude'],
        description: map['description'],
        information: map['information'],
        partyId: map['partyId'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        longitude: map['longitude'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndGroup extractPartyAndGroup(dynamic json) {
    return PartyAndGroup(
        entityId: create_id_from('PartyAndGroup', ['partyId'], json),
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        description: json['description'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        isUnread: json['isUnread'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        partyTypeId: json['partyTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupName: json['groupName'] as String,
        createdDate: check_dt(json['createdDate']),
        groupNameLocal: json['groupNameLocal'] as String,
        statusId: json['statusId'] as String,
        numEmployees: json['numEmployees'] as int,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndGroup overridesPartyAndGroup(Map<String, dynamic> map) {
    return PartyAndGroup(
        entityId: create_id_from('PartyAndGroup', ['partyId'], map),
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        description: map['description'],
        tickerSymbol: map['tickerSymbol'],
        isUnread: map['isUnread'],
        logoImageUrl: map['logoImageUrl'],
        partyTypeId: map['partyTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupName: map['groupName'],
        createdDate: map['createdDate'],
        groupNameLocal: map['groupNameLocal'],
        statusId: map['statusId'],
        numEmployees: map['numEmployees'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndPerson extractPartyAndPerson(dynamic json) {
    return PartyAndPerson(
        entityId: create_id_from('PartyAndPerson', ['partyId'], json),
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        occupation: json['occupation'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        description: json['description'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        existingCustomer: json['existingCustomer'] as String,
        partyTypeId: json['partyTypeId'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        nickname: json['nickname'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        externalId: json['externalId'] as String,
        weight: json['weight'] as double,
        birthDate: check_dt(json['birthDate']),
        isUnread: json['isUnread'] as String,
        otherLocal: json['otherLocal'] as String,
        firstName: json['firstName'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        cardId: json['cardId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        salutation: json['salutation'] as String,
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndPerson overridesPartyAndPerson(Map<String, dynamic> map) {
    return PartyAndPerson(
        entityId: create_id_from('PartyAndPerson', ['partyId'], map),
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        occupation: map['occupation'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        description: map['description'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        middleNameLocal: map['middleNameLocal'],
        existingCustomer: map['existingCustomer'],
        partyTypeId: map['partyTypeId'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        nickname: map['nickname'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        monthsWithEmployer: map['monthsWithEmployer'],
        externalId: map['externalId'],
        weight: map['weight'],
        birthDate: map['birthDate'],
        isUnread: map['isUnread'],
        otherLocal: map['otherLocal'],
        firstName: map['firstName'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        cardId: map['cardId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        salutation: map['salutation'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndUserLogin extractPartyAndUserLogin(dynamic json) {
    return PartyAndUserLogin(
        entityId: create_id_from('PartyAndUserLogin', ['partyId', 'userLoginId'], json),
        userLoginId: json['userLoginId'] as String,
        disabledDateTime: check_dt(json['disabledDateTime']),
        partyTypeId: json['partyTypeId'] as String,
        successiveFailedLogins: json['successiveFailedLogins'] as int,
        passwordHint: json['passwordHint'] as String,
        partyId: json['partyId'] as String,
        enabled: json['enabled'] as String,
        currentPassword: json['currentPassword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndUserLogin overridesPartyAndUserLogin(Map<String, dynamic> map) {
    return PartyAndUserLogin(
        entityId: create_id_from('PartyAndUserLogin', ['partyId', 'userLoginId'], map),
        userLoginId: map['userLoginId'],
        disabledDateTime: map['disabledDateTime'],
        partyTypeId: map['partyTypeId'],
        successiveFailedLogins: map['successiveFailedLogins'],
        passwordHint: map['passwordHint'],
        partyId: map['partyId'],
        enabled: map['enabled'],
        currentPassword: map['currentPassword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAndUserLoginAndPerson extractPartyAndUserLoginAndPerson(dynamic json) {
    return PartyAndUserLoginAndPerson(
        entityId: create_id_from('PartyAndUserLoginAndPerson', ['partyId', 'userLoginId'], json),
        userLoginId: json['userLoginId'] as String,
        disabledDateTime: check_dt(json['disabledDateTime']),
        partyTypeId: json['partyTypeId'] as String,
        lastName: json['lastName'] as String,
        firstName: json['firstName'] as String,
        createdDate: check_dt(json['createdDate']),
        successiveFailedLogins: json['successiveFailedLogins'] as int,
        statusId: json['statusId'] as String,
        passwordHint: json['passwordHint'] as String,
        partyId: json['partyId'] as String,
        enabled: json['enabled'] as String,
        currentPassword: json['currentPassword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAndUserLoginAndPerson overridesPartyAndUserLoginAndPerson(Map<String, dynamic> map) {
    return PartyAndUserLoginAndPerson(
        entityId: create_id_from('PartyAndUserLoginAndPerson', ['partyId', 'userLoginId'], map),
        userLoginId: map['userLoginId'],
        disabledDateTime: map['disabledDateTime'],
        partyTypeId: map['partyTypeId'],
        lastName: map['lastName'],
        firstName: map['firstName'],
        createdDate: map['createdDate'],
        successiveFailedLogins: map['successiveFailedLogins'],
        statusId: map['statusId'],
        passwordHint: map['passwordHint'],
        partyId: map['partyId'],
        enabled: map['enabled'],
        currentPassword: map['currentPassword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAttribute extractPartyAttribute(dynamic json) {
    return PartyAttribute(
        entityId: create_id_from('PartyAttribute', ['partyId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        partyId: json['partyId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAttribute overridesPartyAttribute(Map<String, dynamic> map) {
    return PartyAttribute(
        entityId: create_id_from('PartyAttribute', ['partyId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        partyId: map['partyId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyCarrierAccount extractPartyCarrierAccount(dynamic json) {
    return PartyCarrierAccount(
        entityId: create_id_from('PartyCarrierAccount', ['partyId', 'carrierPartyId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        carrierPartyId: json['carrierPartyId'] as String,
        partyId: json['partyId'] as String,
        accountNumber: json['accountNumber'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyCarrierAccount overridesPartyCarrierAccount(Map<String, dynamic> map) {
    return PartyCarrierAccount(
        entityId: create_id_from('PartyCarrierAccount', ['partyId', 'carrierPartyId', 'fromDate'], map),
        fromDate: map['fromDate'],
        carrierPartyId: map['carrierPartyId'],
        partyId: map['partyId'],
        accountNumber: map['accountNumber'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyClassification extractPartyClassification(dynamic json) {
    return PartyClassification(
        entityId: create_id_from('PartyClassification', ['partyId', 'partyClassificationGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        partyClassificationGroupId: json['partyClassificationGroupId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyClassification overridesPartyClassification(Map<String, dynamic> map) {
    return PartyClassification(
        entityId: create_id_from('PartyClassification', ['partyId', 'partyClassificationGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        partyClassificationGroupId: map['partyClassificationGroupId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyClassificationGroup extractPartyClassificationGroup(dynamic json) {
    return PartyClassificationGroup(
        entityId: create_id_from('PartyClassificationGroup', ['partyClassificationGroupId'], json),
        partyClassificationGroupId: json['partyClassificationGroupId'] as String,
        parentGroupId: json['parentGroupId'] as String,
        description: json['description'] as String,
        partyClassificationTypeId: json['partyClassificationTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyClassificationGroup overridesPartyClassificationGroup(Map<String, dynamic> map) {
    return PartyClassificationGroup(
        entityId: create_id_from('PartyClassificationGroup', ['partyClassificationGroupId'], map),
        partyClassificationGroupId: map['partyClassificationGroupId'],
        parentGroupId: map['parentGroupId'],
        description: map['description'],
        partyClassificationTypeId: map['partyClassificationTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyClassificationGroupAndType extractPartyClassificationGroupAndType(dynamic json) {
    return PartyClassificationGroupAndType(
        entityId: create_id_from('PartyClassificationGroupAndType', ['partyClassificationGroupId'], json),
        parentTypeId: json['parentTypeId'] as String,
        partyClassificationGroupId: json['partyClassificationGroupId'] as String,
        parentGroupId: json['parentGroupId'] as String,
        description: json['description'] as String,
        typeDescription: json['typeDescription'] as String,
        partyClassificationTypeId: json['partyClassificationTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyClassificationGroupAndType overridesPartyClassificationGroupAndType(Map<String, dynamic> map) {
    return PartyClassificationGroupAndType(
        entityId: create_id_from('PartyClassificationGroupAndType', ['partyClassificationGroupId'], map),
        parentTypeId: map['parentTypeId'],
        partyClassificationGroupId: map['partyClassificationGroupId'],
        parentGroupId: map['parentGroupId'],
        description: map['description'],
        typeDescription: map['typeDescription'],
        partyClassificationTypeId: map['partyClassificationTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyClassificationType extractPartyClassificationType(dynamic json) {
    return PartyClassificationType(
        entityId: create_id_from('PartyClassificationType', ['partyClassificationTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        partyClassificationTypeId: json['partyClassificationTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyClassificationType overridesPartyClassificationType(Map<String, dynamic> map) {
    return PartyClassificationType(
        entityId: create_id_from('PartyClassificationType', ['partyClassificationTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        partyClassificationTypeId: map['partyClassificationTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContactWithPurpose extractPartyContactWithPurpose(dynamic json) {
    return PartyContactWithPurpose(
        entityId: create_id_from('PartyContactWithPurpose', ['contactMechId', 'partyId', 'contactMechPurposeTypeId', 'contactFromDate', 'purposeFromDate'], json),
        contactThruDate: check_dt(json['contactThruDate']),
        purposeFromDate: check_dt(json['purposeFromDate']),
        extension: json['extension'] as String,
        comments: json['comments'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        allowSolicitation: json['allowSolicitation'] as String,
        infoString: json['infoString'] as String,
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        purposeDescription: json['purposeDescription'] as String,
        contactFromDate: check_dt(json['contactFromDate']),
        purposeThruDate: check_dt(json['purposeThruDate']),
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContactWithPurpose overridesPartyContactWithPurpose(Map<String, dynamic> map) {
    return PartyContactWithPurpose(
        entityId: create_id_from('PartyContactWithPurpose', ['contactMechId', 'partyId', 'contactMechPurposeTypeId', 'contactFromDate', 'purposeFromDate'], map),
        contactThruDate: map['contactThruDate'],
        purposeFromDate: map['purposeFromDate'],
        extension: map['extension'],
        comments: map['comments'],
        contactMechTypeId: map['contactMechTypeId'],
        contactMechId: map['contactMechId'],
        allowSolicitation: map['allowSolicitation'],
        infoString: map['infoString'],
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        purposeDescription: map['purposeDescription'],
        contactFromDate: map['contactFromDate'],
        purposeThruDate: map['purposeThruDate'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContent extractPartyContent(dynamic json) {
    return PartyContent(
        entityId: create_id_from('PartyContent', ['partyId', 'contentId', 'partyContentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        partyContentTypeId: json['partyContentTypeId'] as String,
        contentId: json['contentId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContent overridesPartyContent(Map<String, dynamic> map) {
    return PartyContent(
        entityId: create_id_from('PartyContent', ['partyId', 'contentId', 'partyContentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        partyContentTypeId: map['partyContentTypeId'],
        contentId: map['contentId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyContentType extractPartyContentType(dynamic json) {
    return PartyContentType(
        entityId: create_id_from('PartyContentType', ['partyContentTypeId'], json),
        partyContentTypeId: json['partyContentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyContentType overridesPartyContentType(Map<String, dynamic> map) {
    return PartyContentType(
        entityId: create_id_from('PartyContentType', ['partyContentTypeId'], map),
        partyContentTypeId: map['partyContentTypeId'],
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyDataSource extractPartyDataSource(dynamic json) {
    return PartyDataSource(
        entityId: create_id_from('PartyDataSource', ['partyId', 'dataSourceId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        dataSourceId: json['dataSourceId'] as String,
        comments: json['comments'] as String,
        visitId: json['visitId'] as String,
        isCreate: json['isCreate'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyDataSource overridesPartyDataSource(Map<String, dynamic> map) {
    return PartyDataSource(
        entityId: create_id_from('PartyDataSource', ['partyId', 'dataSourceId', 'fromDate'], map),
        fromDate: map['fromDate'],
        dataSourceId: map['dataSourceId'],
        comments: map['comments'],
        visitId: map['visitId'],
        isCreate: map['isCreate'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyDetailAndWorkEffortAssign extractPartyDetailAndWorkEffortAssign(dynamic json) {
    return PartyDetailAndWorkEffortAssign(
        entityId: create_id_from('PartyDetailAndWorkEffortAssign', ['partyId', 'workEffortId', 'fromDate', 'roleTypeId'], json),
        workEffortId: json['workEffortId'] as String,
        lastName: json['lastName'] as String,
        roleTypeId: json['roleTypeId'] as String,
        workEffortTypeId: json['workEffortTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyTypeId: json['partyTypeId'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        statusId: json['statusId'] as String,
        middleName: json['middleName'] as String,
        partyId: json['partyId'] as String,
        partyStatusId: json['partyStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyDetailAndWorkEffortAssign overridesPartyDetailAndWorkEffortAssign(Map<String, dynamic> map) {
    return PartyDetailAndWorkEffortAssign(
        entityId: create_id_from('PartyDetailAndWorkEffortAssign', ['partyId', 'workEffortId', 'fromDate', 'roleTypeId'], map),
        workEffortId: map['workEffortId'],
        lastName: map['lastName'],
        roleTypeId: map['roleTypeId'],
        workEffortTypeId: map['workEffortTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyTypeId: map['partyTypeId'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        statusId: map['statusId'],
        middleName: map['middleName'],
        partyId: map['partyId'],
        partyStatusId: map['partyStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyGeoPoint extractPartyGeoPoint(dynamic json) {
    return PartyGeoPoint(
        entityId: create_id_from('PartyGeoPoint', ['partyId', 'geoPointId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        partyId: json['partyId'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyGeoPoint overridesPartyGeoPoint(Map<String, dynamic> map) {
    return PartyGeoPoint(
        entityId: create_id_from('PartyGeoPoint', ['partyId', 'geoPointId', 'fromDate'], map),
        fromDate: map['fromDate'],
        partyId: map['partyId'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyGroup extractPartyGroup(dynamic json) {
    return PartyGroup(
        entityId: create_id_from('PartyGroup', ['partyId'], json),
        comments: json['comments'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        groupName: json['groupName'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        partyId: json['partyId'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyGroup overridesPartyGroup(Map<String, dynamic> map) {
    return PartyGroup(
        entityId: create_id_from('PartyGroup', ['partyId'], map),
        comments: map['comments'],
        tickerSymbol: map['tickerSymbol'],
        logoImageUrl: map['logoImageUrl'],
        groupName: map['groupName'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        partyId: map['partyId'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyIcsAvsOverride extractPartyIcsAvsOverride(dynamic json) {
    return PartyIcsAvsOverride(
        entityId: create_id_from('PartyIcsAvsOverride', ['partyId'], json),
        avsDeclineString: json['avsDeclineString'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyIcsAvsOverride overridesPartyIcsAvsOverride(Map<String, dynamic> map) {
    return PartyIcsAvsOverride(
        entityId: create_id_from('PartyIcsAvsOverride', ['partyId'], map),
        avsDeclineString: map['avsDeclineString'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyIdentification extractPartyIdentification(dynamic json) {
    return PartyIdentification(
        entityId: create_id_from('PartyIdentification', ['partyId', 'partyIdentificationTypeId'], json),
        partyIdentificationTypeId: json['partyIdentificationTypeId'] as String,
        idValue: json['idValue'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyIdentification overridesPartyIdentification(Map<String, dynamic> map) {
    return PartyIdentification(
        entityId: create_id_from('PartyIdentification', ['partyId', 'partyIdentificationTypeId'], map),
        partyIdentificationTypeId: map['partyIdentificationTypeId'],
        idValue: map['idValue'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyIdentificationAndParty extractPartyIdentificationAndParty(dynamic json) {
    return PartyIdentificationAndParty(
        entityId: create_id_from('PartyIdentificationAndParty', ['partyIdentificationTypeId', 'partyId'], json),
        partyIdentTypeDesc: json['partyIdentTypeDesc'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        description: json['description'] as String,
        idValue: json['idValue'] as String,
        isUnread: json['isUnread'] as String,
        partyTypeId: json['partyTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        partyIdentificationTypeId: json['partyIdentificationTypeId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyIdentificationAndParty overridesPartyIdentificationAndParty(Map<String, dynamic> map) {
    return PartyIdentificationAndParty(
        entityId: create_id_from('PartyIdentificationAndParty', ['partyIdentificationTypeId', 'partyId'], map),
        partyIdentTypeDesc: map['partyIdentTypeDesc'],
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        description: map['description'],
        idValue: map['idValue'],
        isUnread: map['isUnread'],
        partyTypeId: map['partyTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        partyIdentificationTypeId: map['partyIdentificationTypeId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyIdentificationType extractPartyIdentificationType(dynamic json) {
    return PartyIdentificationType(
        entityId: create_id_from('PartyIdentificationType', ['partyIdentificationTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        partyIdentificationTypeId: json['partyIdentificationTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyIdentificationType overridesPartyIdentificationType(Map<String, dynamic> map) {
    return PartyIdentificationType(
        entityId: create_id_from('PartyIdentificationType', ['partyIdentificationTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        partyIdentificationTypeId: map['partyIdentificationTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyInvitation extractPartyInvitation(dynamic json) {
    return PartyInvitation(
        entityId: create_id_from('PartyInvitation', ['partyInvitationId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        emailAddress: json['emailAddress'] as String,
        statusId: json['statusId'] as String,
        toName: json['toName'] as String,
        lastInviteDate: check_dt(json['lastInviteDate']),
        partyId: json['partyId'] as String,
        partyInvitationId: json['partyInvitationId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyInvitation overridesPartyInvitation(Map<String, dynamic> map) {
    return PartyInvitation(
        entityId: create_id_from('PartyInvitation', ['partyInvitationId'], map),
        partyIdFrom: map['partyIdFrom'],
        emailAddress: map['emailAddress'],
        statusId: map['statusId'],
        toName: map['toName'],
        lastInviteDate: map['lastInviteDate'],
        partyId: map['partyId'],
        partyInvitationId: map['partyInvitationId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyInvitationGroupAssoc extractPartyInvitationGroupAssoc(dynamic json) {
    return PartyInvitationGroupAssoc(
        entityId: create_id_from('PartyInvitationGroupAssoc', ['partyInvitationId', 'partyIdTo'], json),
        partyIdTo: json['partyIdTo'] as String,
        partyInvitationId: json['partyInvitationId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyInvitationGroupAssoc overridesPartyInvitationGroupAssoc(Map<String, dynamic> map) {
    return PartyInvitationGroupAssoc(
        entityId: create_id_from('PartyInvitationGroupAssoc', ['partyInvitationId', 'partyIdTo'], map),
        partyIdTo: map['partyIdTo'],
        partyInvitationId: map['partyInvitationId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyInvitationRoleAssoc extractPartyInvitationRoleAssoc(dynamic json) {
    return PartyInvitationRoleAssoc(
        entityId: create_id_from('PartyInvitationRoleAssoc', ['partyInvitationId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        partyInvitationId: json['partyInvitationId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyInvitationRoleAssoc overridesPartyInvitationRoleAssoc(Map<String, dynamic> map) {
    return PartyInvitationRoleAssoc(
        entityId: create_id_from('PartyInvitationRoleAssoc', ['partyInvitationId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        partyInvitationId: map['partyInvitationId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNameContactMechView extractPartyNameContactMechView(dynamic json) {
    return PartyNameContactMechView(
        entityId: create_id_from('PartyNameContactMechView', ['partyId', 'contactMechId', 'fromDate'], json),
        lastName: json['lastName'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        suffix: json['suffix'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyTypeId: json['partyTypeId'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        infoString: json['infoString'] as String,
        statusId: json['statusId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        partyId: json['partyId'] as String,
        personalTitle: json['personalTitle'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNameContactMechView overridesPartyNameContactMechView(Map<String, dynamic> map) {
    return PartyNameContactMechView(
        entityId: create_id_from('PartyNameContactMechView', ['partyId', 'contactMechId', 'fromDate'], map),
        lastName: map['lastName'],
        lastNameLocal: map['lastNameLocal'],
        contactMechTypeId: map['contactMechTypeId'],
        suffix: map['suffix'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyTypeId: map['partyTypeId'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        groupNameLocal: map['groupNameLocal'],
        infoString: map['infoString'],
        statusId: map['statusId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        partyId: map['partyId'],
        personalTitle: map['personalTitle'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNameHistory extractPartyNameHistory(dynamic json) {
    return PartyNameHistory(
        entityId: create_id_from('PartyNameHistory', ['partyId', 'changeDate'], json),
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        groupName: json['groupName'] as String,
        changeDate: check_dt(json['changeDate']),
        middleName: json['middleName'] as String,
        partyId: json['partyId'] as String,
        personalTitle: json['personalTitle'] as String,
        suffix: json['suffix'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNameHistory overridesPartyNameHistory(Map<String, dynamic> map) {
    return PartyNameHistory(
        entityId: create_id_from('PartyNameHistory', ['partyId', 'changeDate'], map),
        firstName: map['firstName'],
        lastName: map['lastName'],
        groupName: map['groupName'],
        changeDate: map['changeDate'],
        middleName: map['middleName'],
        partyId: map['partyId'],
        personalTitle: map['personalTitle'],
        suffix: map['suffix'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNameView extractPartyNameView(dynamic json) {
    return PartyNameView(
        entityId: create_id_from('PartyNameView', ['partyId'], json),
        lastName: json['lastName'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        description: json['description'] as String,
        suffix: json['suffix'] as String,
        partyTypeId: json['partyTypeId'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        statusId: json['statusId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        partyId: json['partyId'] as String,
        personalTitle: json['personalTitle'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNameView overridesPartyNameView(Map<String, dynamic> map) {
    return PartyNameView(
        entityId: create_id_from('PartyNameView', ['partyId'], map),
        lastName: map['lastName'],
        lastNameLocal: map['lastNameLocal'],
        description: map['description'],
        suffix: map['suffix'],
        partyTypeId: map['partyTypeId'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        groupNameLocal: map['groupNameLocal'],
        statusId: map['statusId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        partyId: map['partyId'],
        personalTitle: map['personalTitle'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNote extractPartyNote(dynamic json) {
    return PartyNote(
        entityId: create_id_from('PartyNote', ['partyId', 'noteId'], json),
        noteId: json['noteId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNote overridesPartyNote(Map<String, dynamic> map) {
    return PartyNote(
        entityId: create_id_from('PartyNote', ['partyId', 'noteId'], map),
        noteId: map['noteId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyNoteView extractPartyNoteView(dynamic json) {
    return PartyNoteView(
        entityId: create_id_from('PartyNoteView', ['targetPartyId', 'noteId'], json),
        targetPartyId: json['targetPartyId'] as String,
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        noteInfo: json['noteInfo'] as String,
        noteId: json['noteId'] as String,
        noteParty: json['noteParty'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyNoteView overridesPartyNoteView(Map<String, dynamic> map) {
    return PartyNoteView(
        entityId: create_id_from('PartyNoteView', ['targetPartyId', 'noteId'], map),
        targetPartyId: map['targetPartyId'],
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        noteInfo: map['noteInfo'],
        noteId: map['noteId'],
        noteParty: map['noteParty'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyProfileDefault extractPartyProfileDefault(dynamic json) {
    return PartyProfileDefault(
        entityId: create_id_from('PartyProfileDefault', ['partyId', 'productStoreId'], json),
        defaultPayMeth: json['defaultPayMeth'] as String,
        defaultShipAddr: json['defaultShipAddr'] as String,
        defaultShipMeth: json['defaultShipMeth'] as String,
        productStoreId: json['productStoreId'] as String,
        partyId: json['partyId'] as String,
        defaultBillAddr: json['defaultBillAddr'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyProfileDefault overridesPartyProfileDefault(Map<String, dynamic> map) {
    return PartyProfileDefault(
        entityId: create_id_from('PartyProfileDefault', ['partyId', 'productStoreId'], map),
        defaultPayMeth: map['defaultPayMeth'],
        defaultShipAddr: map['defaultShipAddr'],
        defaultShipMeth: map['defaultShipMeth'],
        productStoreId: map['productStoreId'],
        partyId: map['partyId'],
        defaultBillAddr: map['defaultBillAddr'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationship extractPartyRelationship(dynamic json) {
    return PartyRelationship(
        entityId: create_id_from('PartyRelationship', ['partyIdFrom', 'partyIdTo', 'roleTypeIdFrom', 'roleTypeIdTo', 'fromDate'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        positionTitle: json['positionTitle'] as String,
        comments: json['comments'] as String,
        priorityTypeId: json['priorityTypeId'] as String,
        permissionsEnumId: json['permissionsEnumId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        relationshipName: json['relationshipName'] as String,
        securityGroupId: json['securityGroupId'] as String,
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationship overridesPartyRelationship(Map<String, dynamic> map) {
    return PartyRelationship(
        entityId: create_id_from('PartyRelationship', ['partyIdFrom', 'partyIdTo', 'roleTypeIdFrom', 'roleTypeIdTo', 'fromDate'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        positionTitle: map['positionTitle'],
        comments: map['comments'],
        priorityTypeId: map['priorityTypeId'],
        permissionsEnumId: map['permissionsEnumId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        relationshipName: map['relationshipName'],
        securityGroupId: map['securityGroupId'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationshipAndContactMechDetail extractPartyRelationshipAndContactMechDetail(dynamic json) {
    return PartyRelationshipAndContactMechDetail(
        entityId: create_id_from('PartyRelationshipAndContactMechDetail', ['contactMechId', 'partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo', 'paContactMechId', 'tnContactMechId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        priorityTypeId: json['priorityTypeId'] as String,
        tnAreaCode: json['tnAreaCode'] as String,
        tnContactNumber: json['tnContactNumber'] as String,
        paCountryGeoId: json['paCountryGeoId'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        paAddress2: json['paAddress2'] as String,
        paAddress1: json['paAddress1'] as String,
        suffix: json['suffix'] as String,
        contactMechId: json['contactMechId'] as String,
        paStateProvinceGeoId: json['paStateProvinceGeoId'] as String,
        relationshipName: json['relationshipName'] as String,
        securityGroupId: json['securityGroupId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        infoString: json['infoString'] as String,
        paHouseNumber: json['paHouseNumber'] as int,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        paContactMechId: json['paContactMechId'] as String,
        paAttnName: json['paAttnName'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        paPostalCodeGeoId: json['paPostalCodeGeoId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        thruDate: check_dt(json['thruDate']),
        paToName: json['paToName'] as String,
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        groupName: json['groupName'] as String,
        paCountyGeoId: json['paCountyGeoId'] as String,
        paGeoPointId: json['paGeoPointId'] as String,
        statusId: json['statusId'] as String,
        paDirections: json['paDirections'] as String,
        paPostalCode: json['paPostalCode'] as String,
        paCityGeoId: json['paCityGeoId'] as String,
        partyStatusId: json['partyStatusId'] as String,
        lastName: json['lastName'] as String,
        positionTitle: json['positionTitle'] as String,
        description: json['description'] as String,
        tnContactMechId: json['tnContactMechId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        tnCountryCode: json['tnCountryCode'] as String,
        tnAskForName: json['tnAskForName'] as String,
        comments: json['comments'] as String,
        paMunicipalityGeoId: json['paMunicipalityGeoId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        permissionsEnumId: json['permissionsEnumId'] as String,
        externalId: json['externalId'] as String,
        paCity: json['paCity'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        isUnread: json['isUnread'] as String,
        createdDate: check_dt(json['createdDate']),
        paPostalCodeExt: json['paPostalCodeExt'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        partyIdTo: json['partyIdTo'] as String,
        personalTitle: json['personalTitle'] as String,
        paHouseNumberExt: json['paHouseNumberExt'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationshipAndContactMechDetail overridesPartyRelationshipAndContactMechDetail(Map<String, dynamic> map) {
    return PartyRelationshipAndContactMechDetail(
        entityId: create_id_from('PartyRelationshipAndContactMechDetail', ['contactMechId', 'partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo', 'paContactMechId', 'tnContactMechId'], map),
        partyIdFrom: map['partyIdFrom'],
        priorityTypeId: map['priorityTypeId'],
        tnAreaCode: map['tnAreaCode'],
        tnContactNumber: map['tnContactNumber'],
        paCountryGeoId: map['paCountryGeoId'],
        contactMechTypeId: map['contactMechTypeId'],
        paAddress2: map['paAddress2'],
        paAddress1: map['paAddress1'],
        suffix: map['suffix'],
        contactMechId: map['contactMechId'],
        paStateProvinceGeoId: map['paStateProvinceGeoId'],
        relationshipName: map['relationshipName'],
        securityGroupId: map['securityGroupId'],
        partyTypeId: map['partyTypeId'],
        infoString: map['infoString'],
        paHouseNumber: map['paHouseNumber'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        paContactMechId: map['paContactMechId'],
        paAttnName: map['paAttnName'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        paPostalCodeGeoId: map['paPostalCodeGeoId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        lastNameLocal: map['lastNameLocal'],
        thruDate: map['thruDate'],
        paToName: map['paToName'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        groupName: map['groupName'],
        paCountyGeoId: map['paCountyGeoId'],
        paGeoPointId: map['paGeoPointId'],
        statusId: map['statusId'],
        paDirections: map['paDirections'],
        paPostalCode: map['paPostalCode'],
        paCityGeoId: map['paCityGeoId'],
        partyStatusId: map['partyStatusId'],
        lastName: map['lastName'],
        positionTitle: map['positionTitle'],
        description: map['description'],
        tnContactMechId: map['tnContactMechId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupNameLocal: map['groupNameLocal'],
        tnCountryCode: map['tnCountryCode'],
        tnAskForName: map['tnAskForName'],
        comments: map['comments'],
        paMunicipalityGeoId: map['paMunicipalityGeoId'],
        lastModifiedDate: map['lastModifiedDate'],
        permissionsEnumId: map['permissionsEnumId'],
        externalId: map['externalId'],
        paCity: map['paCity'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        isUnread: map['isUnread'],
        createdDate: map['createdDate'],
        paPostalCodeExt: map['paPostalCodeExt'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        partyIdTo: map['partyIdTo'],
        personalTitle: map['personalTitle'],
        paHouseNumberExt: map['paHouseNumberExt'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationshipAndDetail extractPartyRelationshipAndDetail(dynamic json) {
    return PartyRelationshipAndDetail(
        entityId: create_id_from('PartyRelationshipAndDetail', ['partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], json),
        lastName: json['lastName'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        positionTitle: json['positionTitle'] as String,
        priorityTypeId: json['priorityTypeId'] as String,
        description: json['description'] as String,
        suffix: json['suffix'] as String,
        relationshipName: json['relationshipName'] as String,
        securityGroupId: json['securityGroupId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        partyId: json['partyId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        comments: json['comments'] as String,
        permissionsEnumId: json['permissionsEnumId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        groupName: json['groupName'] as String,
        statusId: json['statusId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        partyIdTo: json['partyIdTo'] as String,
        personalTitle: json['personalTitle'] as String,
        partyStatusId: json['partyStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationshipAndDetail overridesPartyRelationshipAndDetail(Map<String, dynamic> map) {
    return PartyRelationshipAndDetail(
        entityId: create_id_from('PartyRelationshipAndDetail', ['partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], map),
        lastName: map['lastName'],
        partyIdFrom: map['partyIdFrom'],
        positionTitle: map['positionTitle'],
        priorityTypeId: map['priorityTypeId'],
        description: map['description'],
        suffix: map['suffix'],
        relationshipName: map['relationshipName'],
        securityGroupId: map['securityGroupId'],
        partyTypeId: map['partyTypeId'],
        groupNameLocal: map['groupNameLocal'],
        partyId: map['partyId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        lastNameLocal: map['lastNameLocal'],
        comments: map['comments'],
        permissionsEnumId: map['permissionsEnumId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        groupName: map['groupName'],
        statusId: map['statusId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        partyIdTo: map['partyIdTo'],
        personalTitle: map['personalTitle'],
        partyStatusId: map['partyStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationshipAndPartyDetail extractPartyRelationshipAndPartyDetail(dynamic json) {
    return PartyRelationshipAndPartyDetail(
        entityId: create_id_from('PartyRelationshipAndPartyDetail', ['partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        fromGroupNameLocal: json['fromGroupNameLocal'] as String,
        positionTitle: json['positionTitle'] as String,
        priorityTypeId: json['priorityTypeId'] as String,
        toPersonalTitle: json['toPersonalTitle'] as String,
        toGroupNameLocal: json['toGroupNameLocal'] as String,
        description: json['description'] as String,
        fromFirstName: json['fromFirstName'] as String,
        toLastNameLocal: json['toLastNameLocal'] as String,
        relationshipName: json['relationshipName'] as String,
        securityGroupId: json['securityGroupId'] as String,
        partyTypeId: json['partyTypeId'] as String,
        toLastName: json['toLastName'] as String,
        relParentTypeId: json['relParentTypeId'] as String,
        partyId: json['partyId'] as String,
        fromMiddleName: json['fromMiddleName'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        fromfirstNameLocal: json['fromfirstNameLocal'] as String,
        comments: json['comments'] as String,
        permissionsEnumId: json['permissionsEnumId'] as String,
        fromGroupName: json['fromGroupName'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        toGroupName: json['toGroupName'] as String,
        tofirstNameLocal: json['tofirstNameLocal'] as String,
        toMiddleName: json['toMiddleName'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        toSuffix: json['toSuffix'] as String,
        fromSuffix: json['fromSuffix'] as String,
        statusId: json['statusId'] as String,
        toFirstName: json['toFirstName'] as String,
        fromPersonalTitle: json['fromPersonalTitle'] as String,
        partyIdTo: json['partyIdTo'] as String,
        fromLastNameLocal: json['fromLastNameLocal'] as String,
        partyStatusId: json['partyStatusId'] as String,
        fromLastName: json['fromLastName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationshipAndPartyDetail overridesPartyRelationshipAndPartyDetail(Map<String, dynamic> map) {
    return PartyRelationshipAndPartyDetail(
        entityId: create_id_from('PartyRelationshipAndPartyDetail', ['partyId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], map),
        partyIdFrom: map['partyIdFrom'],
        fromGroupNameLocal: map['fromGroupNameLocal'],
        positionTitle: map['positionTitle'],
        priorityTypeId: map['priorityTypeId'],
        toPersonalTitle: map['toPersonalTitle'],
        toGroupNameLocal: map['toGroupNameLocal'],
        description: map['description'],
        fromFirstName: map['fromFirstName'],
        toLastNameLocal: map['toLastNameLocal'],
        relationshipName: map['relationshipName'],
        securityGroupId: map['securityGroupId'],
        partyTypeId: map['partyTypeId'],
        toLastName: map['toLastName'],
        relParentTypeId: map['relParentTypeId'],
        partyId: map['partyId'],
        fromMiddleName: map['fromMiddleName'],
        roleTypeIdTo: map['roleTypeIdTo'],
        fromfirstNameLocal: map['fromfirstNameLocal'],
        comments: map['comments'],
        permissionsEnumId: map['permissionsEnumId'],
        fromGroupName: map['fromGroupName'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        toGroupName: map['toGroupName'],
        tofirstNameLocal: map['tofirstNameLocal'],
        toMiddleName: map['toMiddleName'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        toSuffix: map['toSuffix'],
        fromSuffix: map['fromSuffix'],
        statusId: map['statusId'],
        toFirstName: map['toFirstName'],
        fromPersonalTitle: map['fromPersonalTitle'],
        partyIdTo: map['partyIdTo'],
        fromLastNameLocal: map['fromLastNameLocal'],
        partyStatusId: map['partyStatusId'],
        fromLastName: map['fromLastName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationshipToFrom extractPartyRelationshipToFrom(dynamic json) {
    return PartyRelationshipToFrom(
        entityId: create_id_from('PartyRelationshipToFrom', ['oneRoleTypeIdTo', 'onePartyIdFrom', 'oneRoleTypeIdFrom', 'oneFromDate', 'onePartyIdTo', 'twoRoleTypeIdTo', 'twoPartyIdFrom', 'twoRoleTypeIdFrom', 'twoFromDate', 'twoPartyIdTo'], json),
        twoComments: json['twoComments'] as String,
        twoSecurityGroupId: json['twoSecurityGroupId'] as String,
        onePartyIdFrom: json['onePartyIdFrom'] as String,
        onePartyRelationshipTypeId: json['onePartyRelationshipTypeId'] as String,
        twoThruDate: check_dt(json['twoThruDate']),
        onePartyIdTo: json['onePartyIdTo'] as String,
        twoPriorityTypeId: json['twoPriorityTypeId'] as String,
        twoPositionTitle: json['twoPositionTitle'] as String,
        twoPartyIdTo: json['twoPartyIdTo'] as String,
        oneComments: json['oneComments'] as String,
        onePriorityTypeId: json['onePriorityTypeId'] as String,
        oneStatusId: json['oneStatusId'] as String,
        oneRoleTypeIdTo: json['oneRoleTypeIdTo'] as String,
        onePermissionsEnumId: json['onePermissionsEnumId'] as String,
        oneRelationshipName: json['oneRelationshipName'] as String,
        oneFromDate: check_dt(json['oneFromDate']),
        twoPermissionsEnumId: json['twoPermissionsEnumId'] as String,
        twoRelationshipName: json['twoRelationshipName'] as String,
        twoRoleTypeIdFrom: json['twoRoleTypeIdFrom'] as String,
        twoPartyRelationshipTypeId: json['twoPartyRelationshipTypeId'] as String,
        oneRoleTypeIdFrom: json['oneRoleTypeIdFrom'] as String,
        twoRoleTypeIdTo: json['twoRoleTypeIdTo'] as String,
        oneThruDate: check_dt(json['oneThruDate']),
        twoFromDate: check_dt(json['twoFromDate']),
        onePositionTitle: json['onePositionTitle'] as String,
        oneSecurityGroupId: json['oneSecurityGroupId'] as String,
        twoPartyIdFrom: json['twoPartyIdFrom'] as String,
        twoStatusId: json['twoStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationshipToFrom overridesPartyRelationshipToFrom(Map<String, dynamic> map) {
    return PartyRelationshipToFrom(
        entityId: create_id_from('PartyRelationshipToFrom', ['oneRoleTypeIdTo', 'onePartyIdFrom', 'oneRoleTypeIdFrom', 'oneFromDate', 'onePartyIdTo', 'twoRoleTypeIdTo', 'twoPartyIdFrom', 'twoRoleTypeIdFrom', 'twoFromDate', 'twoPartyIdTo'], map),
        twoComments: map['twoComments'],
        twoSecurityGroupId: map['twoSecurityGroupId'],
        onePartyIdFrom: map['onePartyIdFrom'],
        onePartyRelationshipTypeId: map['onePartyRelationshipTypeId'],
        twoThruDate: map['twoThruDate'],
        onePartyIdTo: map['onePartyIdTo'],
        twoPriorityTypeId: map['twoPriorityTypeId'],
        twoPositionTitle: map['twoPositionTitle'],
        twoPartyIdTo: map['twoPartyIdTo'],
        oneComments: map['oneComments'],
        onePriorityTypeId: map['onePriorityTypeId'],
        oneStatusId: map['oneStatusId'],
        oneRoleTypeIdTo: map['oneRoleTypeIdTo'],
        onePermissionsEnumId: map['onePermissionsEnumId'],
        oneRelationshipName: map['oneRelationshipName'],
        oneFromDate: map['oneFromDate'],
        twoPermissionsEnumId: map['twoPermissionsEnumId'],
        twoRelationshipName: map['twoRelationshipName'],
        twoRoleTypeIdFrom: map['twoRoleTypeIdFrom'],
        twoPartyRelationshipTypeId: map['twoPartyRelationshipTypeId'],
        oneRoleTypeIdFrom: map['oneRoleTypeIdFrom'],
        twoRoleTypeIdTo: map['twoRoleTypeIdTo'],
        oneThruDate: map['oneThruDate'],
        twoFromDate: map['twoFromDate'],
        onePositionTitle: map['onePositionTitle'],
        oneSecurityGroupId: map['oneSecurityGroupId'],
        twoPartyIdFrom: map['twoPartyIdFrom'],
        twoStatusId: map['twoStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRelationshipType extractPartyRelationshipType(dynamic json) {
    return PartyRelationshipType(
        entityId: create_id_from('PartyRelationshipType', ['partyRelationshipTypeId'], json),
        partyRelationshipName: json['partyRelationshipName'] as String,
        roleTypeIdValidTo: json['roleTypeIdValidTo'] as String,
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        roleTypeIdValidFrom: json['roleTypeIdValidFrom'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRelationshipType overridesPartyRelationshipType(Map<String, dynamic> map) {
    return PartyRelationshipType(
        entityId: create_id_from('PartyRelationshipType', ['partyRelationshipTypeId'], map),
        partyRelationshipName: map['partyRelationshipName'],
        roleTypeIdValidTo: map['roleTypeIdValidTo'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        roleTypeIdValidFrom: map['roleTypeIdValidFrom'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRole extractPartyRole(dynamic json) {
    return PartyRole(
        entityId: create_id_from('PartyRole', ['partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRole overridesPartyRole(Map<String, dynamic> map) {
    return PartyRole(
        entityId: create_id_from('PartyRole', ['partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRoleAndContactMechDetail extractPartyRoleAndContactMechDetail(dynamic json) {
    return PartyRoleAndContactMechDetail(
        entityId: create_id_from('PartyRoleAndContactMechDetail', ['partyId', 'roleTypeId', 'contactMechId', 'fromDate', 'paContactMechId', 'tnContactMechId'], json),
        occupation: json['occupation'] as String,
        tnAreaCode: json['tnAreaCode'] as String,
        tnContactNumber: json['tnContactNumber'] as String,
        paCountryGeoId: json['paCountryGeoId'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        paAddress2: json['paAddress2'] as String,
        paAddress1: json['paAddress1'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        contactMechId: json['contactMechId'] as String,
        paStateProvinceGeoId: json['paStateProvinceGeoId'] as String,
        existingCustomer: json['existingCustomer'] as String,
        partyTypeId: json['partyTypeId'] as String,
        infoString: json['infoString'] as String,
        hasTable: json['hasTable'] as String,
        paHouseNumber: json['paHouseNumber'] as int,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        paContactMechId: json['paContactMechId'] as String,
        paAttnName: json['paAttnName'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        paPostalCodeGeoId: json['paPostalCodeGeoId'] as String,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        personComments: json['personComments'] as String,
        monthsWithContactMech: json['monthsWithContactMech'] as int,
        otherLocal: json['otherLocal'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        thruDate: check_dt(json['thruDate']),
        paToName: json['paToName'] as String,
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        paCountyGeoId: json['paCountyGeoId'] as String,
        paGeoPointId: json['paGeoPointId'] as String,
        statusId: json['statusId'] as String,
        cardId: json['cardId'] as String,
        paDirections: json['paDirections'] as String,
        paPostalCode: json['paPostalCode'] as String,
        partyGroupComments: json['partyGroupComments'] as String,
        salutation: json['salutation'] as String,
        paCityGeoId: json['paCityGeoId'] as String,
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        extension: json['extension'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        description: json['description'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        tnContactMechId: json['tnContactMechId'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        nickname: json['nickname'] as String,
        tnCountryCode: json['tnCountryCode'] as String,
        tnAskForName: json['tnAskForName'] as String,
        roleTypeId: json['roleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        comments: json['comments'] as String,
        paMunicipalityGeoId: json['paMunicipalityGeoId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        verified: json['verified'] as String,
        externalId: json['externalId'] as String,
        paCity: json['paCity'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        birthDate: check_dt(json['birthDate']),
        isUnread: json['isUnread'] as String,
        allowSolicitation: json['allowSolicitation'] as String,
        createdDate: check_dt(json['createdDate']),
        yearsWithContactMech: json['yearsWithContactMech'] as int,
        paPostalCodeExt: json['paPostalCodeExt'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        personalTitle: json['personalTitle'] as String,
        paHouseNumberExt: json['paHouseNumberExt'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRoleAndContactMechDetail overridesPartyRoleAndContactMechDetail(Map<String, dynamic> map) {
    return PartyRoleAndContactMechDetail(
        entityId: create_id_from('PartyRoleAndContactMechDetail', ['partyId', 'roleTypeId', 'contactMechId', 'fromDate', 'paContactMechId', 'tnContactMechId'], map),
        occupation: map['occupation'],
        tnAreaCode: map['tnAreaCode'],
        tnContactNumber: map['tnContactNumber'],
        paCountryGeoId: map['paCountryGeoId'],
        contactMechTypeId: map['contactMechTypeId'],
        paAddress2: map['paAddress2'],
        paAddress1: map['paAddress1'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        contactMechId: map['contactMechId'],
        paStateProvinceGeoId: map['paStateProvinceGeoId'],
        existingCustomer: map['existingCustomer'],
        partyTypeId: map['partyTypeId'],
        infoString: map['infoString'],
        hasTable: map['hasTable'],
        paHouseNumber: map['paHouseNumber'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        paContactMechId: map['paContactMechId'],
        paAttnName: map['paAttnName'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        memberId: map['memberId'],
        height: map['height'],
        paPostalCodeGeoId: map['paPostalCodeGeoId'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        personComments: map['personComments'],
        monthsWithContactMech: map['monthsWithContactMech'],
        otherLocal: map['otherLocal'],
        logoImageUrl: map['logoImageUrl'],
        thruDate: map['thruDate'],
        paToName: map['paToName'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        paCountyGeoId: map['paCountyGeoId'],
        paGeoPointId: map['paGeoPointId'],
        statusId: map['statusId'],
        cardId: map['cardId'],
        paDirections: map['paDirections'],
        paPostalCode: map['paPostalCode'],
        partyGroupComments: map['partyGroupComments'],
        salutation: map['salutation'],
        paCityGeoId: map['paCityGeoId'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        extension: map['extension'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        description: map['description'],
        middleNameLocal: map['middleNameLocal'],
        tnContactMechId: map['tnContactMechId'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        nickname: map['nickname'],
        tnCountryCode: map['tnCountryCode'],
        tnAskForName: map['tnAskForName'],
        roleTypeId: map['roleTypeId'],
        parentTypeId: map['parentTypeId'],
        comments: map['comments'],
        paMunicipalityGeoId: map['paMunicipalityGeoId'],
        lastModifiedDate: map['lastModifiedDate'],
        verified: map['verified'],
        externalId: map['externalId'],
        paCity: map['paCity'],
        tickerSymbol: map['tickerSymbol'],
        birthDate: map['birthDate'],
        isUnread: map['isUnread'],
        allowSolicitation: map['allowSolicitation'],
        createdDate: map['createdDate'],
        yearsWithContactMech: map['yearsWithContactMech'],
        paPostalCodeExt: map['paPostalCodeExt'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        personalTitle: map['personalTitle'],
        paHouseNumberExt: map['paHouseNumberExt'],
        deceasedDate: map['deceasedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRoleAndPartyDetail extractPartyRoleAndPartyDetail(dynamic json) {
    return PartyRoleAndPartyDetail(
        entityId: create_id_from('PartyRoleAndPartyDetail', ['partyId', 'roleTypeId'], json),
        occupation: json['occupation'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        existingCustomer: json['existingCustomer'] as String,
        partyTypeId: json['partyTypeId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        personComments: json['personComments'] as String,
        otherLocal: json['otherLocal'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        statusId: json['statusId'] as String,
        cardId: json['cardId'] as String,
        partyGroupComments: json['partyGroupComments'] as String,
        salutation: json['salutation'] as String,
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        description: json['description'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        nickname: json['nickname'] as String,
        roleTypeId: json['roleTypeId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        birthDate: check_dt(json['birthDate']),
        isUnread: json['isUnread'] as String,
        createdDate: check_dt(json['createdDate']),
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRoleAndPartyDetail overridesPartyRoleAndPartyDetail(Map<String, dynamic> map) {
    return PartyRoleAndPartyDetail(
        entityId: create_id_from('PartyRoleAndPartyDetail', ['partyId', 'roleTypeId'], map),
        occupation: map['occupation'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        existingCustomer: map['existingCustomer'],
        partyTypeId: map['partyTypeId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        personComments: map['personComments'],
        otherLocal: map['otherLocal'],
        logoImageUrl: map['logoImageUrl'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        statusId: map['statusId'],
        cardId: map['cardId'],
        partyGroupComments: map['partyGroupComments'],
        salutation: map['salutation'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        description: map['description'],
        middleNameLocal: map['middleNameLocal'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        nickname: map['nickname'],
        roleTypeId: map['roleTypeId'],
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        tickerSymbol: map['tickerSymbol'],
        birthDate: map['birthDate'],
        isUnread: map['isUnread'],
        createdDate: map['createdDate'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRoleDetailAndPartyDetail extractPartyRoleDetailAndPartyDetail(dynamic json) {
    return PartyRoleDetailAndPartyDetail(
        entityId: create_id_from('PartyRoleDetailAndPartyDetail', ['partyId', 'roleTypeId'], json),
        occupation: json['occupation'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        existingCustomer: json['existingCustomer'] as String,
        partyTypeId: json['partyTypeId'] as String,
        hasTable: json['hasTable'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        personComments: json['personComments'] as String,
        otherLocal: json['otherLocal'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        statusId: json['statusId'] as String,
        cardId: json['cardId'] as String,
        partyGroupComments: json['partyGroupComments'] as String,
        salutation: json['salutation'] as String,
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        description: json['description'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        nickname: json['nickname'] as String,
        roleTypeId: json['roleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        birthDate: check_dt(json['birthDate']),
        isUnread: json['isUnread'] as String,
        createdDate: check_dt(json['createdDate']),
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRoleDetailAndPartyDetail overridesPartyRoleDetailAndPartyDetail(Map<String, dynamic> map) {
    return PartyRoleDetailAndPartyDetail(
        entityId: create_id_from('PartyRoleDetailAndPartyDetail', ['partyId', 'roleTypeId'], map),
        occupation: map['occupation'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        existingCustomer: map['existingCustomer'],
        partyTypeId: map['partyTypeId'],
        hasTable: map['hasTable'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        personComments: map['personComments'],
        otherLocal: map['otherLocal'],
        logoImageUrl: map['logoImageUrl'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        statusId: map['statusId'],
        cardId: map['cardId'],
        partyGroupComments: map['partyGroupComments'],
        salutation: map['salutation'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        description: map['description'],
        middleNameLocal: map['middleNameLocal'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        nickname: map['nickname'],
        roleTypeId: map['roleTypeId'],
        parentTypeId: map['parentTypeId'],
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        tickerSymbol: map['tickerSymbol'],
        birthDate: map['birthDate'],
        isUnread: map['isUnread'],
        createdDate: map['createdDate'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyRoleNameDetail extractPartyRoleNameDetail(dynamic json) {
    return PartyRoleNameDetail(
        entityId: create_id_from('PartyRoleNameDetail', ['partyId', 'roleTypeId'], json),
        occupation: json['occupation'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        existingCustomer: json['existingCustomer'] as String,
        partyTypeId: json['partyTypeId'] as String,
        preferredCurrencyUomId: json['preferredCurrencyUomId'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        otherLocal: json['otherLocal'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        statusId: json['statusId'] as String,
        cardId: json['cardId'] as String,
        salutation: json['salutation'] as String,
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        description: json['description'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataSourceId: json['dataSourceId'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        nickname: json['nickname'] as String,
        roleTypeId: json['roleTypeId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        externalId: json['externalId'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        birthDate: check_dt(json['birthDate']),
        isUnread: json['isUnread'] as String,
        createdDate: check_dt(json['createdDate']),
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyRoleNameDetail overridesPartyRoleNameDetail(Map<String, dynamic> map) {
    return PartyRoleNameDetail(
        entityId: create_id_from('PartyRoleNameDetail', ['partyId', 'roleTypeId'], map),
        occupation: map['occupation'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        existingCustomer: map['existingCustomer'],
        partyTypeId: map['partyTypeId'],
        preferredCurrencyUomId: map['preferredCurrencyUomId'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        otherLocal: map['otherLocal'],
        logoImageUrl: map['logoImageUrl'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        statusId: map['statusId'],
        cardId: map['cardId'],
        salutation: map['salutation'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        description: map['description'],
        middleNameLocal: map['middleNameLocal'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataSourceId: map['dataSourceId'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        nickname: map['nickname'],
        roleTypeId: map['roleTypeId'],
        lastModifiedDate: map['lastModifiedDate'],
        externalId: map['externalId'],
        tickerSymbol: map['tickerSymbol'],
        birthDate: map['birthDate'],
        isUnread: map['isUnread'],
        createdDate: map['createdDate'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyStatus extractPartyStatus(dynamic json) {
    return PartyStatus(
        entityId: create_id_from('PartyStatus', ['statusId', 'partyId', 'statusDate'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        partyId: json['partyId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyStatus overridesPartyStatus(Map<String, dynamic> map) {
    return PartyStatus(
        entityId: create_id_from('PartyStatus', ['statusId', 'partyId', 'statusDate'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        partyId: map['partyId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyType extractPartyType(dynamic json) {
    return PartyType(
        entityId: create_id_from('PartyType', ['partyTypeId'], json),
        partyTypeId: json['partyTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyType overridesPartyType(Map<String, dynamic> map) {
    return PartyType(
        entityId: create_id_from('PartyType', ['partyTypeId'], map),
        partyTypeId: map['partyTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyTypeAttr extractPartyTypeAttr(dynamic json) {
    return PartyTypeAttr(
        entityId: create_id_from('PartyTypeAttr', ['partyTypeId', 'attrName'], json),
        partyTypeId: json['partyTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyTypeAttr overridesPartyTypeAttr(Map<String, dynamic> map) {
    return PartyTypeAttr(
        entityId: create_id_from('PartyTypeAttr', ['partyTypeId', 'attrName'], map),
        partyTypeId: map['partyTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Person extractPerson(dynamic json) {
    return Person(
        entityId: create_id_from('Person', ['partyId'], json),
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        occupation: json['occupation'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        existingCustomer: json['existingCustomer'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        nickname: json['nickname'] as String,
        partyId: json['partyId'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        comments: json['comments'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        birthDate: check_dt(json['birthDate']),
        otherLocal: json['otherLocal'] as String,
        firstName: json['firstName'] as String,
        cardId: json['cardId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        salutation: json['salutation'] as String,
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Person overridesPerson(Map<String, dynamic> map) {
    return Person(
        entityId: create_id_from('Person', ['partyId'], map),
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        occupation: map['occupation'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        middleNameLocal: map['middleNameLocal'],
        existingCustomer: map['existingCustomer'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        nickname: map['nickname'],
        partyId: map['partyId'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        comments: map['comments'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        birthDate: map['birthDate'],
        otherLocal: map['otherLocal'],
        firstName: map['firstName'],
        cardId: map['cardId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        salutation: map['salutation'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PriorityType extractPriorityType(dynamic json) {
    return PriorityType(
        entityId: create_id_from('PriorityType', ['priorityTypeId'], json),
        priorityTypeId: json['priorityTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PriorityType overridesPriorityType(Map<String, dynamic> map) {
    return PriorityType(
        entityId: create_id_from('PriorityType', ['priorityTypeId'], map),
        priorityTypeId: map['priorityTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RoleType extractRoleType(dynamic json) {
    return RoleType(
        entityId: create_id_from('RoleType', ['roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RoleType overridesRoleType(Map<String, dynamic> map) {
    return RoleType(
        entityId: create_id_from('RoleType', ['roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RoleTypeAndParty extractRoleTypeAndParty(dynamic json) {
    return RoleTypeAndParty(
        entityId: create_id_from('RoleTypeAndParty', ['partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RoleTypeAndParty overridesRoleTypeAndParty(Map<String, dynamic> map) {
    return RoleTypeAndParty(
        entityId: create_id_from('RoleTypeAndParty', ['partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RoleTypeAttr extractRoleTypeAttr(dynamic json) {
    return RoleTypeAttr(
        entityId: create_id_from('RoleTypeAttr', ['roleTypeId', 'attrName'], json),
        roleTypeId: json['roleTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RoleTypeAttr overridesRoleTypeAttr(Map<String, dynamic> map) {
    return RoleTypeAttr(
        entityId: create_id_from('RoleTypeAttr', ['roleTypeId', 'attrName'], map),
        roleTypeId: map['roleTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RoleTypeIn3Levels extractRoleTypeIn3Levels(dynamic json) {
    return RoleTypeIn3Levels(
        entityId: create_id_from('RoleTypeIn3Levels', ['topRoleTypeId', 'midRoleTypeId', 'lowRoleTypeId'], json),
        topDescription: json['topDescription'] as String,
        midRoleTypeId: json['midRoleTypeId'] as String,
        midDescription: json['midDescription'] as String,
        lowRoleTypeId: json['lowRoleTypeId'] as String,
        lowDescription: json['lowDescription'] as String,
        topRoleTypeId: json['topRoleTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RoleTypeIn3Levels overridesRoleTypeIn3Levels(Map<String, dynamic> map) {
    return RoleTypeIn3Levels(
        entityId: create_id_from('RoleTypeIn3Levels', ['topRoleTypeId', 'midRoleTypeId', 'lowRoleTypeId'], map),
        topDescription: map['topDescription'],
        midRoleTypeId: map['midRoleTypeId'],
        midDescription: map['midDescription'],
        lowRoleTypeId: map['lowRoleTypeId'],
        lowDescription: map['lowDescription'],
        topRoleTypeId: map['topRoleTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginAndPartyDetails extractUserLoginAndPartyDetails(dynamic json) {
    return UserLoginAndPartyDetails(
        entityId: create_id_from('UserLoginAndPartyDetails', ['partyId', 'userLoginId'], json),
        lastName: json['lastName'] as String,
        successiveFailedLogins: json['successiveFailedLogins'] as int,
        passwordHint: json['passwordHint'] as String,
        enabled: json['enabled'] as String,
        currentPassword: json['currentPassword'] as String,
        userLoginId: json['userLoginId'] as String,
        disabledDateTime: check_dt(json['disabledDateTime']),
        partyTypeId: json['partyTypeId'] as String,
        firstName: json['firstName'] as String,
        groupName: json['groupName'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        middleName: json['middleName'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginAndPartyDetails overridesUserLoginAndPartyDetails(Map<String, dynamic> map) {
    return UserLoginAndPartyDetails(
        entityId: create_id_from('UserLoginAndPartyDetails', ['partyId', 'userLoginId'], map),
        lastName: map['lastName'],
        successiveFailedLogins: map['successiveFailedLogins'],
        passwordHint: map['passwordHint'],
        enabled: map['enabled'],
        currentPassword: map['currentPassword'],
        userLoginId: map['userLoginId'],
        disabledDateTime: map['disabledDateTime'],
        partyTypeId: map['partyTypeId'],
        firstName: map['firstName'],
        groupName: map['groupName'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        middleName: map['middleName'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Vendor extractVendor(dynamic json) {
    return Vendor(
        entityId: create_id_from('Vendor', ['partyId'], json),
        manifestCompanyTitle: json['manifestCompanyTitle'] as String,
        manifestPolicies: json['manifestPolicies'] as String,
        manifestLogoUrl: json['manifestLogoUrl'] as String,
        partyId: json['partyId'] as String,
        manifestCompanyName: json['manifestCompanyName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Vendor overridesVendor(Map<String, dynamic> map) {
    return Vendor(
        entityId: create_id_from('Vendor', ['partyId'], map),
        manifestCompanyTitle: map['manifestCompanyTitle'],
        manifestPolicies: map['manifestPolicies'],
        manifestLogoUrl: map['manifestLogoUrl'],
        partyId: map['partyId'],
        manifestCompanyName: map['manifestCompanyName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSiteRole extractWebSiteRole(dynamic json) {
    return WebSiteRole(
        entityId: create_id_from('WebSiteRole', ['partyId', 'roleTypeId', 'webSiteId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        partyId: json['partyId'] as String,
        webSiteId: json['webSiteId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSiteRole overridesWebSiteRole(Map<String, dynamic> map) {
    return WebSiteRole(
        entityId: create_id_from('WebSiteRole', ['partyId', 'roleTypeId', 'webSiteId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        sequenceNum: map['sequenceNum'],
        partyId: map['partyId'],
        webSiteId: map['webSiteId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}