import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity BrowserType, Browser Type
class BrowserType extends EntityBase {

  /// this entity has only one pk
  final String browserVersion;
  final String browserName;
  final String browserTypeId; // pk
  BrowserType({entityId,
    this.browserVersion, this.browserName, @required this.browserTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BrowserType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'browserVersion':browserVersion, 'browserName':browserName, 'browserTypeId':browserTypeId};
  }

}

/// Entity PlatformType, Platform Type
class PlatformType extends EntityBase {

  /// this entity has only one pk
  final String platformVersion;
  final String platformTypeId; // pk
  final String platformName;
  PlatformType({entityId,
    this.platformVersion, @required this.platformTypeId, this.platformName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PlatformType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'platformVersion':platformVersion, 'platformTypeId':platformTypeId, 'platformName':platformName};
  }

}

/// Entity ProtocolType, Protocol Type
class ProtocolType extends EntityBase {

  /// this entity has only one pk
  final String protocolTypeId; // pk
  final String protocolName;
  ProtocolType({entityId,
    @required this.protocolTypeId, this.protocolName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProtocolType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'protocolTypeId':protocolTypeId, 'protocolName':protocolName};
  }

}

/// Entity ServerHit, ServerHit
class ServerHit extends EntityBase {

  final DateTime hitStartDateTime; // pk
  final int numOfBytes;
  final String hitTypeId; // pk
  final String contentId; // pk
  final int runningTimeMillis;
  final String refByWebContactMechId;
  final String referrerUrl;
  final String serverHostName;
  final String userLoginId;
  final String internalContentId;
  final String visitId; // pk
  final String statusId;
  final String idByIpContactMechId;
  final String requestUrl;
  final String serverIpAddress;
  final String partyId;
  ServerHit({entityId,
    @required this.hitStartDateTime, this.numOfBytes, @required this.hitTypeId, @required this.contentId, this.runningTimeMillis, this.refByWebContactMechId, this.referrerUrl, this.serverHostName, this.userLoginId, this.internalContentId, @required this.visitId, this.statusId, this.idByIpContactMechId, this.requestUrl, this.serverIpAddress, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ServerHit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'hitStartDateTime':hitStartDateTime, 'numOfBytes':numOfBytes, 'hitTypeId':hitTypeId, 'contentId':contentId, 'runningTimeMillis':runningTimeMillis, 'refByWebContactMechId':refByWebContactMechId, 'referrerUrl':referrerUrl, 'serverHostName':serverHostName, 'userLoginId':userLoginId, 'internalContentId':internalContentId, 'visitId':visitId, 'statusId':statusId, 'idByIpContactMechId':idByIpContactMechId, 'requestUrl':requestUrl, 'serverIpAddress':serverIpAddress, 'partyId':partyId};
  }

}

/// Entity ServerHitBin, ServerHitBin
class ServerHitBin extends EntityBase {

  /// this entity has only one pk
  final DateTime binEndDateTime;
  final String internalContentId;
  final int numberHits;
  final String serverHitBinId; // pk
  final DateTime binStartDateTime;
  final String hitTypeId;
  final int totalTimeMillis;
  final String contentId;
  final String serverIpAddress;
  final int maxTimeMillis;
  final int minTimeMillis;
  final String serverHostName;
  ServerHitBin({entityId,
    this.binEndDateTime, this.internalContentId, this.numberHits, @required this.serverHitBinId, this.binStartDateTime, this.hitTypeId, this.totalTimeMillis, this.contentId, this.serverIpAddress, this.maxTimeMillis, this.minTimeMillis, this.serverHostName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ServerHitBin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'binEndDateTime':binEndDateTime, 'internalContentId':internalContentId, 'numberHits':numberHits, 'serverHitBinId':serverHitBinId, 'binStartDateTime':binStartDateTime, 'hitTypeId':hitTypeId, 'totalTimeMillis':totalTimeMillis, 'contentId':contentId, 'serverIpAddress':serverIpAddress, 'maxTimeMillis':maxTimeMillis, 'minTimeMillis':minTimeMillis, 'serverHostName':serverHostName};
  }

}

/// Entity ServerHitType, Server Hit Bin
class ServerHitType extends EntityBase {

  /// this entity has only one pk
  final String hitTypeId; // pk
  final String description;
  ServerHitType({entityId,
    @required this.hitTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ServerHitType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'hitTypeId':hitTypeId, 'description':description};
  }

}

/// Entity UserAgent, User Agent
class UserAgent extends EntityBase {

  /// this entity has only one pk
  final String userAgentId; // pk
  final String protocolTypeId;
  final String userAgentTypeId;
  final String platformTypeId;
  final String userAgentMethodTypeId;
  final String browserTypeId;
  UserAgent({entityId,
    @required this.userAgentId, this.protocolTypeId, this.userAgentTypeId, this.platformTypeId, this.userAgentMethodTypeId, this.browserTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserAgent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userAgentId':userAgentId, 'protocolTypeId':protocolTypeId, 'userAgentTypeId':userAgentTypeId, 'platformTypeId':platformTypeId, 'userAgentMethodTypeId':userAgentMethodTypeId, 'browserTypeId':browserTypeId};
  }

}

/// Entity UserAgentMethodType, User Agent Method Type
class UserAgentMethodType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String userAgentMethodTypeId; // pk
  UserAgentMethodType({entityId,
    this.description, @required this.userAgentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserAgentMethodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'userAgentMethodTypeId':userAgentMethodTypeId};
  }

}

/// Entity UserAgentType, User Agent Type
class UserAgentType extends EntityBase {

  /// this entity has only one pk
  final String userAgentTypeId; // pk
  final String description;
  UserAgentType({entityId,
    @required this.userAgentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserAgentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userAgentTypeId':userAgentTypeId, 'description':description};
  }

}

/// Entity Visit, Visit
class Visit extends EntityBase {

  /// this entity has only one pk
  final String clientUser;
  final String clientIpPostalCode;
  final String userCreated;
  final String contactMechId;
  final String serverHostName;
  final String initialReferrer;
  final String visitId; // pk
  final String serverIpAddress;
  final String initialLocale;
  final String partyId;
  final String clientHostName;
  final String clientIpAddress;
  final String initialUserAgent;
  final String roleTypeId;
  final String cookie;
  final String sessionId;
  final DateTime thruDate;
  final String userLoginId;
  final DateTime fromDate;
  final String userAgentId;
  final String clientIpCountryGeoId;
  final String webappName;
  final String clientIpIspName;
  final String clientIpStateProvGeoId;
  final String initialRequest;
  final String visitorId;
  Visit({entityId,
    this.clientUser, this.clientIpPostalCode, this.userCreated, this.contactMechId, this.serverHostName, this.initialReferrer, @required this.visitId, this.serverIpAddress, this.initialLocale, this.partyId, this.clientHostName, this.clientIpAddress, this.initialUserAgent, this.roleTypeId, this.cookie, this.sessionId, this.thruDate, this.userLoginId, this.fromDate, this.userAgentId, this.clientIpCountryGeoId, this.webappName, this.clientIpIspName, this.clientIpStateProvGeoId, this.initialRequest, this.visitorId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Visit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'clientUser':clientUser, 'clientIpPostalCode':clientIpPostalCode, 'userCreated':userCreated, 'contactMechId':contactMechId, 'serverHostName':serverHostName, 'initialReferrer':initialReferrer, 'visitId':visitId, 'serverIpAddress':serverIpAddress, 'initialLocale':initialLocale, 'partyId':partyId, 'clientHostName':clientHostName, 'clientIpAddress':clientIpAddress, 'initialUserAgent':initialUserAgent, 'roleTypeId':roleTypeId, 'cookie':cookie, 'sessionId':sessionId, 'thruDate':thruDate, 'userLoginId':userLoginId, 'fromDate':fromDate, 'userAgentId':userAgentId, 'clientIpCountryGeoId':clientIpCountryGeoId, 'webappName':webappName, 'clientIpIspName':clientIpIspName, 'clientIpStateProvGeoId':clientIpStateProvGeoId, 'initialRequest':initialRequest, 'visitorId':visitorId};
  }

}

/// Entity Visitor, Visitor
class Visitor extends EntityBase {

  /// this entity has only one pk
  final String userLoginId;
  final String partyId;
  final String visitorId; // pk
  Visitor({entityId,
    this.userLoginId, this.partyId, @required this.visitorId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Visitor { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'partyId':partyId, 'visitorId':visitorId};
  }

}