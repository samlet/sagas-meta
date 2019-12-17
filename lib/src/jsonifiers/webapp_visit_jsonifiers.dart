import 'package:sagas_meta/src/models/webapp_visit.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class WebappVisitJsonifier{
  static BrowserType extractBrowserType(dynamic json) {
    return BrowserType(
        entityId: create_id_from('BrowserType', ['browserTypeId'], json),
        browserVersion: json['browserVersion'] as String,
        browserName: json['browserName'] as String,
        browserTypeId: json['browserTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BrowserType overridesBrowserType(Map<String, dynamic> map) {
    return BrowserType(
        entityId: create_id_from('BrowserType', ['browserTypeId'], map),
        browserVersion: map['browserVersion'],
        browserName: map['browserName'],
        browserTypeId: map['browserTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PlatformType extractPlatformType(dynamic json) {
    return PlatformType(
        entityId: create_id_from('PlatformType', ['platformTypeId'], json),
        platformVersion: json['platformVersion'] as String,
        platformTypeId: json['platformTypeId'] as String,
        platformName: json['platformName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PlatformType overridesPlatformType(Map<String, dynamic> map) {
    return PlatformType(
        entityId: create_id_from('PlatformType', ['platformTypeId'], map),
        platformVersion: map['platformVersion'],
        platformTypeId: map['platformTypeId'],
        platformName: map['platformName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProtocolType extractProtocolType(dynamic json) {
    return ProtocolType(
        entityId: create_id_from('ProtocolType', ['protocolTypeId'], json),
        protocolTypeId: json['protocolTypeId'] as String,
        protocolName: json['protocolName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProtocolType overridesProtocolType(Map<String, dynamic> map) {
    return ProtocolType(
        entityId: create_id_from('ProtocolType', ['protocolTypeId'], map),
        protocolTypeId: map['protocolTypeId'],
        protocolName: map['protocolName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ServerHit extractServerHit(dynamic json) {
    return ServerHit(
        entityId: create_id_from('ServerHit', ['visitId', 'contentId', 'hitStartDateTime', 'hitTypeId'], json),
        hitStartDateTime: check_dt(json['hitStartDateTime']),
        numOfBytes: json['numOfBytes'] as int,
        hitTypeId: json['hitTypeId'] as String,
        contentId: json['contentId'] as String,
        runningTimeMillis: json['runningTimeMillis'] as int,
        refByWebContactMechId: json['refByWebContactMechId'] as String,
        referrerUrl: json['referrerUrl'] as String,
        serverHostName: json['serverHostName'] as String,
        userLoginId: json['userLoginId'] as String,
        internalContentId: json['internalContentId'] as String,
        visitId: json['visitId'] as String,
        statusId: json['statusId'] as String,
        idByIpContactMechId: json['idByIpContactMechId'] as String,
        requestUrl: json['requestUrl'] as String,
        serverIpAddress: json['serverIpAddress'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ServerHit overridesServerHit(Map<String, dynamic> map) {
    return ServerHit(
        entityId: create_id_from('ServerHit', ['visitId', 'contentId', 'hitStartDateTime', 'hitTypeId'], map),
        hitStartDateTime: map['hitStartDateTime'],
        numOfBytes: map['numOfBytes'],
        hitTypeId: map['hitTypeId'],
        contentId: map['contentId'],
        runningTimeMillis: map['runningTimeMillis'],
        refByWebContactMechId: map['refByWebContactMechId'],
        referrerUrl: map['referrerUrl'],
        serverHostName: map['serverHostName'],
        userLoginId: map['userLoginId'],
        internalContentId: map['internalContentId'],
        visitId: map['visitId'],
        statusId: map['statusId'],
        idByIpContactMechId: map['idByIpContactMechId'],
        requestUrl: map['requestUrl'],
        serverIpAddress: map['serverIpAddress'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ServerHitBin extractServerHitBin(dynamic json) {
    return ServerHitBin(
        entityId: create_id_from('ServerHitBin', ['serverHitBinId'], json),
        binEndDateTime: check_dt(json['binEndDateTime']),
        internalContentId: json['internalContentId'] as String,
        numberHits: json['numberHits'] as int,
        serverHitBinId: json['serverHitBinId'] as String,
        binStartDateTime: check_dt(json['binStartDateTime']),
        hitTypeId: json['hitTypeId'] as String,
        totalTimeMillis: json['totalTimeMillis'] as int,
        contentId: json['contentId'] as String,
        serverIpAddress: json['serverIpAddress'] as String,
        maxTimeMillis: json['maxTimeMillis'] as int,
        minTimeMillis: json['minTimeMillis'] as int,
        serverHostName: json['serverHostName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ServerHitBin overridesServerHitBin(Map<String, dynamic> map) {
    return ServerHitBin(
        entityId: create_id_from('ServerHitBin', ['serverHitBinId'], map),
        binEndDateTime: map['binEndDateTime'],
        internalContentId: map['internalContentId'],
        numberHits: map['numberHits'],
        serverHitBinId: map['serverHitBinId'],
        binStartDateTime: map['binStartDateTime'],
        hitTypeId: map['hitTypeId'],
        totalTimeMillis: map['totalTimeMillis'],
        contentId: map['contentId'],
        serverIpAddress: map['serverIpAddress'],
        maxTimeMillis: map['maxTimeMillis'],
        minTimeMillis: map['minTimeMillis'],
        serverHostName: map['serverHostName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ServerHitType extractServerHitType(dynamic json) {
    return ServerHitType(
        entityId: create_id_from('ServerHitType', ['hitTypeId'], json),
        hitTypeId: json['hitTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ServerHitType overridesServerHitType(Map<String, dynamic> map) {
    return ServerHitType(
        entityId: create_id_from('ServerHitType', ['hitTypeId'], map),
        hitTypeId: map['hitTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserAgent extractUserAgent(dynamic json) {
    return UserAgent(
        entityId: create_id_from('UserAgent', ['userAgentId'], json),
        userAgentId: json['userAgentId'] as String,
        protocolTypeId: json['protocolTypeId'] as String,
        userAgentTypeId: json['userAgentTypeId'] as String,
        platformTypeId: json['platformTypeId'] as String,
        userAgentMethodTypeId: json['userAgentMethodTypeId'] as String,
        browserTypeId: json['browserTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserAgent overridesUserAgent(Map<String, dynamic> map) {
    return UserAgent(
        entityId: create_id_from('UserAgent', ['userAgentId'], map),
        userAgentId: map['userAgentId'],
        protocolTypeId: map['protocolTypeId'],
        userAgentTypeId: map['userAgentTypeId'],
        platformTypeId: map['platformTypeId'],
        userAgentMethodTypeId: map['userAgentMethodTypeId'],
        browserTypeId: map['browserTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserAgentMethodType extractUserAgentMethodType(dynamic json) {
    return UserAgentMethodType(
        entityId: create_id_from('UserAgentMethodType', ['userAgentMethodTypeId'], json),
        description: json['description'] as String,
        userAgentMethodTypeId: json['userAgentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserAgentMethodType overridesUserAgentMethodType(Map<String, dynamic> map) {
    return UserAgentMethodType(
        entityId: create_id_from('UserAgentMethodType', ['userAgentMethodTypeId'], map),
        description: map['description'],
        userAgentMethodTypeId: map['userAgentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserAgentType extractUserAgentType(dynamic json) {
    return UserAgentType(
        entityId: create_id_from('UserAgentType', ['userAgentTypeId'], json),
        userAgentTypeId: json['userAgentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserAgentType overridesUserAgentType(Map<String, dynamic> map) {
    return UserAgentType(
        entityId: create_id_from('UserAgentType', ['userAgentTypeId'], map),
        userAgentTypeId: map['userAgentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Visit extractVisit(dynamic json) {
    return Visit(
        entityId: create_id_from('Visit', ['visitId'], json),
        clientUser: json['clientUser'] as String,
        clientIpPostalCode: json['clientIpPostalCode'] as String,
        userCreated: json['userCreated'] as String,
        contactMechId: json['contactMechId'] as String,
        serverHostName: json['serverHostName'] as String,
        initialReferrer: json['initialReferrer'] as String,
        visitId: json['visitId'] as String,
        serverIpAddress: json['serverIpAddress'] as String,
        initialLocale: json['initialLocale'] as String,
        partyId: json['partyId'] as String,
        clientHostName: json['clientHostName'] as String,
        clientIpAddress: json['clientIpAddress'] as String,
        initialUserAgent: json['initialUserAgent'] as String,
        roleTypeId: json['roleTypeId'] as String,
        cookie: json['cookie'] as String,
        sessionId: json['sessionId'] as String,
        thruDate: check_dt(json['thruDate']),
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        userAgentId: json['userAgentId'] as String,
        clientIpCountryGeoId: json['clientIpCountryGeoId'] as String,
        webappName: json['webappName'] as String,
        clientIpIspName: json['clientIpIspName'] as String,
        clientIpStateProvGeoId: json['clientIpStateProvGeoId'] as String,
        initialRequest: json['initialRequest'] as String,
        visitorId: json['visitorId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Visit overridesVisit(Map<String, dynamic> map) {
    return Visit(
        entityId: create_id_from('Visit', ['visitId'], map),
        clientUser: map['clientUser'],
        clientIpPostalCode: map['clientIpPostalCode'],
        userCreated: map['userCreated'],
        contactMechId: map['contactMechId'],
        serverHostName: map['serverHostName'],
        initialReferrer: map['initialReferrer'],
        visitId: map['visitId'],
        serverIpAddress: map['serverIpAddress'],
        initialLocale: map['initialLocale'],
        partyId: map['partyId'],
        clientHostName: map['clientHostName'],
        clientIpAddress: map['clientIpAddress'],
        initialUserAgent: map['initialUserAgent'],
        roleTypeId: map['roleTypeId'],
        cookie: map['cookie'],
        sessionId: map['sessionId'],
        thruDate: map['thruDate'],
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        userAgentId: map['userAgentId'],
        clientIpCountryGeoId: map['clientIpCountryGeoId'],
        webappName: map['webappName'],
        clientIpIspName: map['clientIpIspName'],
        clientIpStateProvGeoId: map['clientIpStateProvGeoId'],
        initialRequest: map['initialRequest'],
        visitorId: map['visitorId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Visitor extractVisitor(dynamic json) {
    return Visitor(
        entityId: create_id_from('Visitor', ['visitorId'], json),
        userLoginId: json['userLoginId'] as String,
        partyId: json['partyId'] as String,
        visitorId: json['visitorId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Visitor overridesVisitor(Map<String, dynamic> map) {
    return Visitor(
        entityId: create_id_from('Visitor', ['visitorId'], map),
        userLoginId: map['userLoginId'],
        partyId: map['partyId'],
        visitorId: map['visitorId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}