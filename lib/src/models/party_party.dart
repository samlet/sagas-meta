import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AddressMatchMap, Address Matching Map
class AddressMatchMap extends EntityBase {

  final String mapValue; // pk
  final int sequenceNum;
  final String mapKey; // pk
  AddressMatchMap({entityId,
    @required this.mapValue, this.sequenceNum, @required this.mapKey,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AddressMatchMap { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mapValue':mapValue, 'sequenceNum':sequenceNum, 'mapKey':mapKey};
  }

}

/// Entity Affiliate, Affiliate Party
class Affiliate extends EntityBase {

  /// this entity has only one pk
  final String yearEstablished;
  final String affiliateDescription;
  final String sitePageViews;
  final String affiliateName;
  final DateTime dateTimeCreated;
  final DateTime dateTimeApproved;
  final String partyId; // pk
  final String siteVisitors;
  final String siteType;
  Affiliate({entityId,
    this.yearEstablished, this.affiliateDescription, this.sitePageViews, this.affiliateName, this.dateTimeCreated, this.dateTimeApproved, @required this.partyId, this.siteVisitors, this.siteType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Affiliate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'yearEstablished':yearEstablished, 'affiliateDescription':affiliateDescription, 'sitePageViews':sitePageViews, 'affiliateName':affiliateName, 'dateTimeCreated':dateTimeCreated, 'dateTimeApproved':dateTimeApproved, 'partyId':partyId, 'siteVisitors':siteVisitors, 'siteType':siteType};
  }

}

/// Entity Party, Party
class Party extends EntityBase {

  /// this entity has only one pk
  final DateTime lastModifiedDate;
  final String externalId;
  final String description;
  final String isUnread;
  final String partyTypeId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final DateTime createdDate;
  final String statusId;
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  Party({entityId,
    this.lastModifiedDate, this.externalId, this.description, this.isUnread, this.partyTypeId, this.lastModifiedByUserLogin, this.dataSourceId, this.createdDate, this.statusId, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Party { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'description':description, 'isUnread':isUnread, 'partyTypeId':partyTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'createdDate':createdDate, 'statusId':statusId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity PartyAcctgPrefAndGroup, PartyAcctgPreference and PartyGroup
class PartyAcctgPrefAndGroup extends EntityBase {

  final String groupName;
  final String roleTypeId; // pk
  final String baseCurrencyUomId;
  final String partyId; // pk
  PartyAcctgPrefAndGroup({entityId,
    this.groupName, @required this.roleTypeId, this.baseCurrencyUomId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAcctgPrefAndGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'groupName':groupName, 'roleTypeId':roleTypeId, 'baseCurrencyUomId':baseCurrencyUomId, 'partyId':partyId};
  }

}

/// Entity PartyAndGeoPoint, Party and Geo Point View
class PartyAndGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final double elevation;
  final String dataSourceId;
  final String elevationUomId;
  final String geoPointTypeEnumId;
  final String latitude;
  final String description;
  final String information;
  final String partyId; // pk
  final String geoPointId; // pk
  final DateTime thruDate;
  final String longitude;
  PartyAndGeoPoint({entityId,
    @required this.fromDate, this.elevation, this.dataSourceId, this.elevationUomId, this.geoPointTypeEnumId, this.latitude, this.description, this.information, @required this.partyId, @required this.geoPointId, this.thruDate, this.longitude,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'elevation':elevation, 'dataSourceId':dataSourceId, 'elevationUomId':elevationUomId, 'geoPointTypeEnumId':geoPointTypeEnumId, 'latitude':latitude, 'description':description, 'information':information, 'partyId':partyId, 'geoPointId':geoPointId, 'thruDate':thruDate, 'longitude':longitude};
  }

}

/// Entity PartyAndGroup, Party and Party Group View
class PartyAndGroup extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final DateTime lastModifiedDate;
  final String externalId;
  final String description;
  final String tickerSymbol;
  final String isUnread;
  final String logoImageUrl;
  final String partyTypeId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupName;
  final DateTime createdDate;
  final String groupNameLocal;
  final String statusId;
  final int numEmployees;
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String officeSiteName;
  final double annualRevenue;
  PartyAndGroup({entityId,
    this.comments, this.lastModifiedDate, this.externalId, this.description, this.tickerSymbol, this.isUnread, this.logoImageUrl, this.partyTypeId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupName, this.createdDate, this.groupNameLocal, this.statusId, this.numEmployees, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin, this.officeSiteName, this.annualRevenue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'description':description, 'tickerSymbol':tickerSymbol, 'isUnread':isUnread, 'logoImageUrl':logoImageUrl, 'partyTypeId':partyTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupName':groupName, 'createdDate':createdDate, 'groupNameLocal':groupNameLocal, 'statusId':statusId, 'numEmployees':numEmployees, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue};
  }

}

/// Entity PartyAndPerson, Party and Person View
class PartyAndPerson extends EntityBase {

  /// this entity has only one pk
  final int yearsWithEmployer;
  final String lastName;
  final String occupation;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String description;
  final String suffix;
  final String mothersMaidenName;
  final String middleNameLocal;
  final String existingCustomer;
  final String partyTypeId;
  final String residenceStatusEnumId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String preferredCurrencyUomId;
  final String nickname;
  final String partyId; // pk
  final String createdByUserLogin;
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final String comments;
  final DateTime lastModifiedDate;
  final int monthsWithEmployer;
  final String externalId;
  final double weight;
  final DateTime birthDate;
  final String isUnread;
  final String otherLocal;
  final String firstName;
  final DateTime createdDate;
  final String statusId;
  final String cardId;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String salutation;
  final String personalTitle;
  final DateTime deceasedDate;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  PartyAndPerson({entityId,
    this.yearsWithEmployer, this.lastName, this.occupation, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.description, this.suffix, this.mothersMaidenName, this.middleNameLocal, this.existingCustomer, this.partyTypeId, this.residenceStatusEnumId, this.lastModifiedByUserLogin, this.dataSourceId, this.preferredCurrencyUomId, this.nickname, @required this.partyId, this.createdByUserLogin, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.comments, this.lastModifiedDate, this.monthsWithEmployer, this.externalId, this.weight, this.birthDate, this.isUnread, this.otherLocal, this.firstName, this.createdDate, this.statusId, this.cardId, this.middleName, this.firstNameLocal, this.passportExpireDate, this.salutation, this.personalTitle, this.deceasedDate, this.totalYearsWorkExperience, this.maritalStatus,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndPerson { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'occupation':occupation, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'description':description, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'middleNameLocal':middleNameLocal, 'existingCustomer':existingCustomer, 'partyTypeId':partyTypeId, 'residenceStatusEnumId':residenceStatusEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'nickname':nickname, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'monthsWithEmployer':monthsWithEmployer, 'externalId':externalId, 'weight':weight, 'birthDate':birthDate, 'isUnread':isUnread, 'otherLocal':otherLocal, 'firstName':firstName, 'createdDate':createdDate, 'statusId':statusId, 'cardId':cardId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'salutation':salutation, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus};
  }

}

/// Entity PartyAndUserLogin, Party and Contact Mech View
class PartyAndUserLogin extends EntityBase {

  final String userLoginId; // pk
  final DateTime disabledDateTime;
  final String partyTypeId;
  final int successiveFailedLogins;
  final String passwordHint;
  final String partyId; // pk
  final String enabled;
  final String currentPassword;
  PartyAndUserLogin({entityId,
    @required this.userLoginId, this.disabledDateTime, this.partyTypeId, this.successiveFailedLogins, this.passwordHint, @required this.partyId, this.enabled, this.currentPassword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndUserLogin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'disabledDateTime':disabledDateTime, 'partyTypeId':partyTypeId, 'successiveFailedLogins':successiveFailedLogins, 'passwordHint':passwordHint, 'partyId':partyId, 'enabled':enabled, 'currentPassword':currentPassword};
  }

}

/// Entity PartyAndUserLoginAndPerson, Parts of Party and UserLogin and Person
class PartyAndUserLoginAndPerson extends EntityBase {

  final String userLoginId; // pk
  final DateTime disabledDateTime;
  final String partyTypeId;
  final String lastName;
  final String firstName;
  final DateTime createdDate;
  final int successiveFailedLogins;
  final String statusId;
  final String passwordHint;
  final String partyId; // pk
  final String enabled;
  final String currentPassword;
  PartyAndUserLoginAndPerson({entityId,
    @required this.userLoginId, this.disabledDateTime, this.partyTypeId, this.lastName, this.firstName, this.createdDate, this.successiveFailedLogins, this.statusId, this.passwordHint, @required this.partyId, this.enabled, this.currentPassword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAndUserLoginAndPerson { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'disabledDateTime':disabledDateTime, 'partyTypeId':partyTypeId, 'lastName':lastName, 'firstName':firstName, 'createdDate':createdDate, 'successiveFailedLogins':successiveFailedLogins, 'statusId':statusId, 'passwordHint':passwordHint, 'partyId':partyId, 'enabled':enabled, 'currentPassword':currentPassword};
  }

}

/// Entity PartyAttribute, Party Attribute
class PartyAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String partyId; // pk
  final String attrName; // pk
  PartyAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.partyId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'partyId':partyId, 'attrName':attrName};
  }

}

/// Entity PartyCarrierAccount, Party Carrier Account
class PartyCarrierAccount extends EntityBase {

  final DateTime fromDate; // pk
  final String carrierPartyId; // pk
  final String partyId; // pk
  final String accountNumber;
  final DateTime thruDate;
  PartyCarrierAccount({entityId,
    @required this.fromDate, @required this.carrierPartyId, @required this.partyId, this.accountNumber, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyCarrierAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'carrierPartyId':carrierPartyId, 'partyId':partyId, 'accountNumber':accountNumber, 'thruDate':thruDate};
  }

}

/// Entity PartyClassification, Party Classification
class PartyClassification extends EntityBase {

  final DateTime fromDate; // pk
  final String partyClassificationGroupId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  PartyClassification({entityId,
    @required this.fromDate, @required this.partyClassificationGroupId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyClassification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'partyClassificationGroupId':partyClassificationGroupId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PartyClassificationGroup, Party Classification Group
class PartyClassificationGroup extends EntityBase {

  /// this entity has only one pk
  final String partyClassificationGroupId; // pk
  final String parentGroupId;
  final String description;
  final String partyClassificationTypeId;
  PartyClassificationGroup({entityId,
    @required this.partyClassificationGroupId, this.parentGroupId, this.description, this.partyClassificationTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyClassificationGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyClassificationGroupId':partyClassificationGroupId, 'parentGroupId':parentGroupId, 'description':description, 'partyClassificationTypeId':partyClassificationTypeId};
  }

}

/// Entity PartyClassificationGroupAndType, PartyClassificationGroup and PartyClassificationTypeView
class PartyClassificationGroupAndType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String partyClassificationGroupId; // pk
  final String parentGroupId;
  final String description;
  final String typeDescription;
  final String partyClassificationTypeId;
  PartyClassificationGroupAndType({entityId,
    this.parentTypeId, @required this.partyClassificationGroupId, this.parentGroupId, this.description, this.typeDescription, this.partyClassificationTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyClassificationGroupAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'partyClassificationGroupId':partyClassificationGroupId, 'parentGroupId':parentGroupId, 'description':description, 'typeDescription':typeDescription, 'partyClassificationTypeId':partyClassificationTypeId};
  }

}

/// Entity PartyClassificationType, Party Classification Type
class PartyClassificationType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String partyClassificationTypeId; // pk
  PartyClassificationType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.partyClassificationTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyClassificationType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'partyClassificationTypeId':partyClassificationTypeId};
  }

}

/// Entity PartyContactWithPurpose, Party Contact Purpose View
class PartyContactWithPurpose extends EntityBase {

  final DateTime contactThruDate;
  final DateTime purposeFromDate; // pk
  final String extension;
  final String comments;
  final String contactMechTypeId;
  final String contactMechId; // pk
  final String allowSolicitation;
  final String infoString;
  final String contactMechPurposeTypeId; // pk
  final String purposeDescription;
  final DateTime contactFromDate; // pk
  final DateTime purposeThruDate;
  final String partyId; // pk
  PartyContactWithPurpose({entityId,
    this.contactThruDate, @required this.purposeFromDate, this.extension, this.comments, this.contactMechTypeId, @required this.contactMechId, this.allowSolicitation, this.infoString, @required this.contactMechPurposeTypeId, this.purposeDescription, @required this.contactFromDate, this.purposeThruDate, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContactWithPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactThruDate':contactThruDate, 'purposeFromDate':purposeFromDate, 'extension':extension, 'comments':comments, 'contactMechTypeId':contactMechTypeId, 'contactMechId':contactMechId, 'allowSolicitation':allowSolicitation, 'infoString':infoString, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'purposeDescription':purposeDescription, 'contactFromDate':contactFromDate, 'purposeThruDate':purposeThruDate, 'partyId':partyId};
  }

}

/// Entity PartyContent, Party Data Object
class PartyContent extends EntityBase {

  final DateTime fromDate; // pk
  final String partyContentTypeId; // pk
  final String contentId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  PartyContent({entityId,
    @required this.fromDate, @required this.partyContentTypeId, @required this.contentId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'partyContentTypeId':partyContentTypeId, 'contentId':contentId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PartyContentType, Party Content Type
class PartyContentType extends EntityBase {

  /// this entity has only one pk
  final String partyContentTypeId; // pk
  final String parentTypeId;
  final String description;
  PartyContentType({entityId,
    @required this.partyContentTypeId, this.parentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyContentTypeId':partyContentTypeId, 'parentTypeId':parentTypeId, 'description':description};
  }

}

/// Entity PartyDataSource, Party Data Source
class PartyDataSource extends EntityBase {

  final DateTime fromDate; // pk
  final String dataSourceId; // pk
  final String comments;
  final String visitId;
  final String isCreate;
  final String partyId; // pk
  PartyDataSource({entityId,
    @required this.fromDate, @required this.dataSourceId, this.comments, this.visitId, this.isCreate, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyDataSource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'dataSourceId':dataSourceId, 'comments':comments, 'visitId':visitId, 'isCreate':isCreate, 'partyId':partyId};
  }

}

/// Entity PartyDetailAndWorkEffortAssign, View to show the party assignment names for a workeffort with the partyStatus and AssignStatus
class PartyDetailAndWorkEffortAssign extends EntityBase {

  final String workEffortId; // pk
  final String lastName;
  final String roleTypeId; // pk
  final String workEffortTypeId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyTypeId;
  final String firstName;
  final String groupName;
  final String statusId;
  final String middleName;
  final String partyId; // pk
  final String partyStatusId;
  PartyDetailAndWorkEffortAssign({entityId,
    @required this.workEffortId, this.lastName, @required this.roleTypeId, this.workEffortTypeId, this.thruDate, @required this.fromDate, this.partyTypeId, this.firstName, this.groupName, this.statusId, this.middleName, @required this.partyId, this.partyStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyDetailAndWorkEffortAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'lastName':lastName, 'roleTypeId':roleTypeId, 'workEffortTypeId':workEffortTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'partyTypeId':partyTypeId, 'firstName':firstName, 'groupName':groupName, 'statusId':statusId, 'middleName':middleName, 'partyId':partyId, 'partyStatusId':partyStatusId};
  }

}

/// Entity PartyGeoPoint, Party Geo Location with history
class PartyGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final String partyId; // pk
  final String geoPointId; // pk
  final DateTime thruDate;
  PartyGeoPoint({entityId,
    @required this.fromDate, @required this.partyId, @required this.geoPointId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'partyId':partyId, 'geoPointId':geoPointId, 'thruDate':thruDate};
  }

}

/// Entity PartyGroup, Party Group
class PartyGroup extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String tickerSymbol;
  final String logoImageUrl;
  final String groupName;
  final String groupNameLocal;
  final int numEmployees;
  final String partyId; // pk
  final String officeSiteName;
  final double annualRevenue;
  PartyGroup({entityId,
    this.comments, this.tickerSymbol, this.logoImageUrl, this.groupName, this.groupNameLocal, this.numEmployees, @required this.partyId, this.officeSiteName, this.annualRevenue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'tickerSymbol':tickerSymbol, 'logoImageUrl':logoImageUrl, 'groupName':groupName, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'partyId':partyId, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue};
  }

}

/// Entity PartyIcsAvsOverride, Party ICS AVS Override
class PartyIcsAvsOverride extends EntityBase {

  /// this entity has only one pk
  final String avsDeclineString;
  final String partyId; // pk
  PartyIcsAvsOverride({entityId,
    this.avsDeclineString, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyIcsAvsOverride { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'avsDeclineString':avsDeclineString, 'partyId':partyId};
  }

}

/// Entity PartyIdentification, Party Identification
class PartyIdentification extends EntityBase {

  final String partyIdentificationTypeId; // pk
  final String idValue;
  final String partyId; // pk
  PartyIdentification({entityId,
    @required this.partyIdentificationTypeId, this.idValue, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyIdentification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdentificationTypeId':partyIdentificationTypeId, 'idValue':idValue, 'partyId':partyId};
  }

}

/// Entity PartyIdentificationAndParty, PartyIdentification and Party View
class PartyIdentificationAndParty extends EntityBase {

  final String partyIdentTypeDesc;
  final DateTime lastModifiedDate;
  final String externalId;
  final String description;
  final String idValue;
  final String isUnread;
  final String partyTypeId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final DateTime createdDate;
  final String statusId;
  final String partyIdentificationTypeId; // pk
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  PartyIdentificationAndParty({entityId,
    this.partyIdentTypeDesc, this.lastModifiedDate, this.externalId, this.description, this.idValue, this.isUnread, this.partyTypeId, this.lastModifiedByUserLogin, this.dataSourceId, this.createdDate, this.statusId, @required this.partyIdentificationTypeId, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyIdentificationAndParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdentTypeDesc':partyIdentTypeDesc, 'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'description':description, 'idValue':idValue, 'isUnread':isUnread, 'partyTypeId':partyTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'createdDate':createdDate, 'statusId':statusId, 'partyIdentificationTypeId':partyIdentificationTypeId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity PartyIdentificationType, Party Identification Type
class PartyIdentificationType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String partyIdentificationTypeId; // pk
  final String description;
  PartyIdentificationType({entityId,
    this.parentTypeId, this.hasTable, @required this.partyIdentificationTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyIdentificationType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'partyIdentificationTypeId':partyIdentificationTypeId, 'description':description};
  }

}

/// Entity PartyInvitation, Party Invitation
class PartyInvitation extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String emailAddress;
  final String statusId;
  final String toName;
  final DateTime lastInviteDate;
  final String partyId;
  final String partyInvitationId; // pk
  PartyInvitation({entityId,
    this.partyIdFrom, this.emailAddress, this.statusId, this.toName, this.lastInviteDate, this.partyId, @required this.partyInvitationId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyInvitation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'emailAddress':emailAddress, 'statusId':statusId, 'toName':toName, 'lastInviteDate':lastInviteDate, 'partyId':partyId, 'partyInvitationId':partyInvitationId};
  }

}

/// Entity PartyInvitationGroupAssoc, Party Invitation Group Assoc
class PartyInvitationGroupAssoc extends EntityBase {

  final String partyIdTo; // pk
  final String partyInvitationId; // pk
  PartyInvitationGroupAssoc({entityId,
    @required this.partyIdTo, @required this.partyInvitationId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyInvitationGroupAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdTo':partyIdTo, 'partyInvitationId':partyInvitationId};
  }

}

/// Entity PartyInvitationRoleAssoc, Party Invitation Role Assoc
class PartyInvitationRoleAssoc extends EntityBase {

  final String roleTypeId; // pk
  final String partyInvitationId; // pk
  PartyInvitationRoleAssoc({entityId,
    @required this.roleTypeId, @required this.partyInvitationId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyInvitationRoleAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'partyInvitationId':partyInvitationId};
  }

}

/// Entity PartyNameContactMechView, Party Name Contact Mech View
class PartyNameContactMechView extends EntityBase {

  final String lastName;
  final String lastNameLocal;
  final String contactMechTypeId;
  final String suffix;
  final String contactMechId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyTypeId;
  final String firstName;
  final String groupName;
  final String groupNameLocal;
  final String infoString;
  final String statusId;
  final String middleName;
  final String firstNameLocal;
  final String partyId; // pk
  final String personalTitle;
  PartyNameContactMechView({entityId,
    this.lastName, this.lastNameLocal, this.contactMechTypeId, this.suffix, @required this.contactMechId, this.thruDate, @required this.fromDate, this.partyTypeId, this.firstName, this.groupName, this.groupNameLocal, this.infoString, this.statusId, this.middleName, this.firstNameLocal, @required this.partyId, this.personalTitle,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNameContactMechView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastName':lastName, 'lastNameLocal':lastNameLocal, 'contactMechTypeId':contactMechTypeId, 'suffix':suffix, 'contactMechId':contactMechId, 'thruDate':thruDate, 'fromDate':fromDate, 'partyTypeId':partyTypeId, 'firstName':firstName, 'groupName':groupName, 'groupNameLocal':groupNameLocal, 'infoString':infoString, 'statusId':statusId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'partyId':partyId, 'personalTitle':personalTitle};
  }

}

/// Entity PartyNameHistory, Party Name History
class PartyNameHistory extends EntityBase {

  final String firstName;
  final String lastName;
  final String groupName;
  final DateTime changeDate; // pk
  final String middleName;
  final String partyId; // pk
  final String personalTitle;
  final String suffix;
  PartyNameHistory({entityId,
    this.firstName, this.lastName, this.groupName, @required this.changeDate, this.middleName, @required this.partyId, this.personalTitle, this.suffix,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNameHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstName':firstName, 'lastName':lastName, 'groupName':groupName, 'changeDate':changeDate, 'middleName':middleName, 'partyId':partyId, 'personalTitle':personalTitle, 'suffix':suffix};
  }

}

/// Entity PartyNameView, Party Name View
class PartyNameView extends EntityBase {

  /// this entity has only one pk
  final String lastName;
  final String lastNameLocal;
  final String description;
  final String suffix;
  final String partyTypeId;
  final String firstName;
  final String groupName;
  final String groupNameLocal;
  final String statusId;
  final String middleName;
  final String firstNameLocal;
  final String partyId; // pk
  final String personalTitle;
  PartyNameView({entityId,
    this.lastName, this.lastNameLocal, this.description, this.suffix, this.partyTypeId, this.firstName, this.groupName, this.groupNameLocal, this.statusId, this.middleName, this.firstNameLocal, @required this.partyId, this.personalTitle,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNameView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastName':lastName, 'lastNameLocal':lastNameLocal, 'description':description, 'suffix':suffix, 'partyTypeId':partyTypeId, 'firstName':firstName, 'groupName':groupName, 'groupNameLocal':groupNameLocal, 'statusId':statusId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'partyId':partyId, 'personalTitle':personalTitle};
  }

}

/// Entity PartyNote, Party Note
class PartyNote extends EntityBase {

  final String noteId; // pk
  final String partyId; // pk
  PartyNote({entityId,
    @required this.noteId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'noteId':noteId, 'partyId':partyId};
  }

}

/// Entity PartyNoteView, Party Note View
class PartyNoteView extends EntityBase {

  final String targetPartyId; // pk
  final String noteName;
  final DateTime noteDateTime;
  final String noteInfo;
  final String noteId; // pk
  final String noteParty;
  PartyNoteView({entityId,
    @required this.targetPartyId, this.noteName, this.noteDateTime, this.noteInfo, @required this.noteId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'targetPartyId':targetPartyId, 'noteName':noteName, 'noteDateTime':noteDateTime, 'noteInfo':noteInfo, 'noteId':noteId, 'noteParty':noteParty};
  }

}

/// Entity PartyProfileDefault, Party Profile Defaults
class PartyProfileDefault extends EntityBase {

  final String defaultPayMeth;
  final String defaultShipAddr;
  final String defaultShipMeth;
  final String productStoreId; // pk
  final String partyId; // pk
  final String defaultBillAddr;
  PartyProfileDefault({entityId,
    this.defaultPayMeth, this.defaultShipAddr, this.defaultShipMeth, @required this.productStoreId, @required this.partyId, this.defaultBillAddr,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyProfileDefault { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'defaultPayMeth':defaultPayMeth, 'defaultShipAddr':defaultShipAddr, 'defaultShipMeth':defaultShipMeth, 'productStoreId':productStoreId, 'partyId':partyId, 'defaultBillAddr':defaultBillAddr};
  }

}

/// Entity PartyRelationship, Party Relationship
class PartyRelationship extends EntityBase {

  final String roleTypeIdTo; // pk
  final String partyIdFrom; // pk
  final String positionTitle;
  final String comments;
  final String priorityTypeId;
  final String permissionsEnumId;
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String relationshipName;
  final String securityGroupId;
  final String partyRelationshipTypeId;
  final String statusId;
  final String partyIdTo; // pk
  PartyRelationship({entityId,
    @required this.roleTypeIdTo, @required this.partyIdFrom, this.positionTitle, this.comments, this.priorityTypeId, this.permissionsEnumId, @required this.roleTypeIdFrom, this.thruDate, @required this.fromDate, this.relationshipName, this.securityGroupId, this.partyRelationshipTypeId, this.statusId, @required this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationship { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'positionTitle':positionTitle, 'comments':comments, 'priorityTypeId':priorityTypeId, 'permissionsEnumId':permissionsEnumId, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'relationshipName':relationshipName, 'securityGroupId':securityGroupId, 'partyRelationshipTypeId':partyRelationshipTypeId, 'statusId':statusId, 'partyIdTo':partyIdTo};
  }

}

/// Entity PartyRelationshipAndContactMechDetail, Party Relationship And Contact Mech Details
class PartyRelationshipAndContactMechDetail extends EntityBase {

  final String partyIdFrom; // pk
  final String priorityTypeId;
  final String tnAreaCode;
  final String tnContactNumber;
  final String paCountryGeoId;
  final String contactMechTypeId;
  final String paAddress2;
  final String paAddress1;
  final String suffix;
  final String contactMechId; // pk
  final String paStateProvinceGeoId;
  final String relationshipName;
  final String securityGroupId;
  final String partyTypeId;
  final String infoString;
  final int paHouseNumber;
  final String preferredCurrencyUomId;
  final String paContactMechId; // pk
  final String paAttnName;
  final String partyId; // pk
  final String createdByUserLogin;
  final String paPostalCodeGeoId;
  final String roleTypeIdTo; // pk
  final String lastNameLocal;
  final DateTime thruDate;
  final String paToName;
  final DateTime fromDate; // pk
  final String firstName;
  final String partyRelationshipTypeId;
  final String groupName;
  final String paCountyGeoId;
  final String paGeoPointId;
  final String statusId;
  final String paDirections;
  final String paPostalCode;
  final String paCityGeoId;
  final String partyStatusId;
  final String lastName;
  final String positionTitle;
  final String description;
  final String tnContactMechId; // pk
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupNameLocal;
  final String tnCountryCode;
  final String tnAskForName;
  final String comments;
  final String paMunicipalityGeoId;
  final DateTime lastModifiedDate;
  final String permissionsEnumId;
  final String externalId;
  final String paCity;
  final String roleTypeIdFrom; // pk
  final String isUnread;
  final DateTime createdDate;
  final String paPostalCodeExt;
  final String middleName;
  final String firstNameLocal;
  final String partyIdTo; // pk
  final String personalTitle;
  final String paHouseNumberExt;
  PartyRelationshipAndContactMechDetail({entityId,
    @required this.partyIdFrom, this.priorityTypeId, this.tnAreaCode, this.tnContactNumber, this.paCountryGeoId, this.contactMechTypeId, this.paAddress2, this.paAddress1, this.suffix, @required this.contactMechId, this.paStateProvinceGeoId, this.relationshipName, this.securityGroupId, this.partyTypeId, this.infoString, this.paHouseNumber, this.preferredCurrencyUomId, @required this.paContactMechId, this.paAttnName, @required this.partyId, this.createdByUserLogin, this.paPostalCodeGeoId, @required this.roleTypeIdTo, this.lastNameLocal, this.thruDate, this.paToName, @required this.fromDate, this.firstName, this.partyRelationshipTypeId, this.groupName, this.paCountyGeoId, this.paGeoPointId, this.statusId, this.paDirections, this.paPostalCode, this.paCityGeoId, this.partyStatusId, this.lastName, this.positionTitle, this.description, @required this.tnContactMechId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupNameLocal, this.tnCountryCode, this.tnAskForName, this.comments, this.paMunicipalityGeoId, this.lastModifiedDate, this.permissionsEnumId, this.externalId, this.paCity, @required this.roleTypeIdFrom, this.isUnread, this.createdDate, this.paPostalCodeExt, this.middleName, this.firstNameLocal, @required this.partyIdTo, this.personalTitle, this.paHouseNumberExt,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationshipAndContactMechDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'priorityTypeId':priorityTypeId, 'tnAreaCode':tnAreaCode, 'tnContactNumber':tnContactNumber, 'paCountryGeoId':paCountryGeoId, 'contactMechTypeId':contactMechTypeId, 'paAddress2':paAddress2, 'paAddress1':paAddress1, 'suffix':suffix, 'contactMechId':contactMechId, 'paStateProvinceGeoId':paStateProvinceGeoId, 'relationshipName':relationshipName, 'securityGroupId':securityGroupId, 'partyTypeId':partyTypeId, 'infoString':infoString, 'paHouseNumber':paHouseNumber, 'preferredCurrencyUomId':preferredCurrencyUomId, 'paContactMechId':paContactMechId, 'paAttnName':paAttnName, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'paPostalCodeGeoId':paPostalCodeGeoId, 'roleTypeIdTo':roleTypeIdTo, 'lastNameLocal':lastNameLocal, 'thruDate':thruDate, 'paToName':paToName, 'fromDate':fromDate, 'firstName':firstName, 'partyRelationshipTypeId':partyRelationshipTypeId, 'groupName':groupName, 'paCountyGeoId':paCountyGeoId, 'paGeoPointId':paGeoPointId, 'statusId':statusId, 'paDirections':paDirections, 'paPostalCode':paPostalCode, 'paCityGeoId':paCityGeoId, 'partyStatusId':partyStatusId, 'lastName':lastName, 'positionTitle':positionTitle, 'description':description, 'tnContactMechId':tnContactMechId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupNameLocal':groupNameLocal, 'tnCountryCode':tnCountryCode, 'tnAskForName':tnAskForName, 'comments':comments, 'paMunicipalityGeoId':paMunicipalityGeoId, 'lastModifiedDate':lastModifiedDate, 'permissionsEnumId':permissionsEnumId, 'externalId':externalId, 'paCity':paCity, 'roleTypeIdFrom':roleTypeIdFrom, 'isUnread':isUnread, 'createdDate':createdDate, 'paPostalCodeExt':paPostalCodeExt, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'partyIdTo':partyIdTo, 'personalTitle':personalTitle, 'paHouseNumberExt':paHouseNumberExt};
  }

}

/// Entity PartyRelationshipAndDetail, Party Relationship And Details
class PartyRelationshipAndDetail extends EntityBase {

  final String lastName;
  final String partyIdFrom; // pk
  final String positionTitle;
  final String priorityTypeId;
  final String description;
  final String suffix;
  final String relationshipName;
  final String securityGroupId;
  final String partyTypeId;
  final String groupNameLocal;
  final String partyId; // pk
  final String roleTypeIdTo; // pk
  final String lastNameLocal;
  final String comments;
  final String permissionsEnumId;
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String firstName;
  final String partyRelationshipTypeId;
  final String groupName;
  final String statusId;
  final String middleName;
  final String firstNameLocal;
  final String partyIdTo; // pk
  final String personalTitle;
  final String partyStatusId;
  PartyRelationshipAndDetail({entityId,
    this.lastName, @required this.partyIdFrom, this.positionTitle, this.priorityTypeId, this.description, this.suffix, this.relationshipName, this.securityGroupId, this.partyTypeId, this.groupNameLocal, @required this.partyId, @required this.roleTypeIdTo, this.lastNameLocal, this.comments, this.permissionsEnumId, @required this.roleTypeIdFrom, this.thruDate, @required this.fromDate, this.firstName, this.partyRelationshipTypeId, this.groupName, this.statusId, this.middleName, this.firstNameLocal, @required this.partyIdTo, this.personalTitle, this.partyStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationshipAndDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastName':lastName, 'partyIdFrom':partyIdFrom, 'positionTitle':positionTitle, 'priorityTypeId':priorityTypeId, 'description':description, 'suffix':suffix, 'relationshipName':relationshipName, 'securityGroupId':securityGroupId, 'partyTypeId':partyTypeId, 'groupNameLocal':groupNameLocal, 'partyId':partyId, 'roleTypeIdTo':roleTypeIdTo, 'lastNameLocal':lastNameLocal, 'comments':comments, 'permissionsEnumId':permissionsEnumId, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'firstName':firstName, 'partyRelationshipTypeId':partyRelationshipTypeId, 'groupName':groupName, 'statusId':statusId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'partyIdTo':partyIdTo, 'personalTitle':personalTitle, 'partyStatusId':partyStatusId};
  }

}

/// Entity PartyRelationshipAndPartyDetail, Party Relationship And Party Details
class PartyRelationshipAndPartyDetail extends EntityBase {

  final String partyIdFrom; // pk
  final String fromGroupNameLocal;
  final String positionTitle;
  final String priorityTypeId;
  final String toPersonalTitle;
  final String toGroupNameLocal;
  final String description;
  final String fromFirstName;
  final String toLastNameLocal;
  final String relationshipName;
  final String securityGroupId;
  final String partyTypeId;
  final String toLastName;
  final String relParentTypeId;
  final String partyId; // pk
  final String fromMiddleName;
  final String roleTypeIdTo; // pk
  final String fromfirstNameLocal;
  final String comments;
  final String permissionsEnumId;
  final String fromGroupName;
  final String roleTypeIdFrom; // pk
  final String toGroupName;
  final String tofirstNameLocal;
  final String toMiddleName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyRelationshipTypeId;
  final String toSuffix;
  final String fromSuffix;
  final String statusId;
  final String toFirstName;
  final String fromPersonalTitle;
  final String partyIdTo; // pk
  final String fromLastNameLocal;
  final String partyStatusId;
  final String fromLastName;
  PartyRelationshipAndPartyDetail({entityId,
    @required this.partyIdFrom, this.fromGroupNameLocal, this.positionTitle, this.priorityTypeId, this.toPersonalTitle, this.toGroupNameLocal, this.description, this.fromFirstName, this.toLastNameLocal, this.relationshipName, this.securityGroupId, this.partyTypeId, this.toLastName, this.relParentTypeId, @required this.partyId, this.fromMiddleName, @required this.roleTypeIdTo, this.fromfirstNameLocal, this.comments, this.permissionsEnumId, this.fromGroupName, @required this.roleTypeIdFrom, this.toGroupName, this.tofirstNameLocal, this.toMiddleName, this.thruDate, @required this.fromDate, this.partyRelationshipTypeId, this.toSuffix, this.fromSuffix, this.statusId, this.toFirstName, this.fromPersonalTitle, @required this.partyIdTo, this.fromLastNameLocal, this.partyStatusId, this.fromLastName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationshipAndPartyDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'fromGroupNameLocal':fromGroupNameLocal, 'positionTitle':positionTitle, 'priorityTypeId':priorityTypeId, 'toPersonalTitle':toPersonalTitle, 'toGroupNameLocal':toGroupNameLocal, 'description':description, 'fromFirstName':fromFirstName, 'toLastNameLocal':toLastNameLocal, 'relationshipName':relationshipName, 'securityGroupId':securityGroupId, 'partyTypeId':partyTypeId, 'toLastName':toLastName, 'relParentTypeId':relParentTypeId, 'partyId':partyId, 'fromMiddleName':fromMiddleName, 'roleTypeIdTo':roleTypeIdTo, 'fromfirstNameLocal':fromfirstNameLocal, 'comments':comments, 'permissionsEnumId':permissionsEnumId, 'fromGroupName':fromGroupName, 'roleTypeIdFrom':roleTypeIdFrom, 'toGroupName':toGroupName, 'tofirstNameLocal':tofirstNameLocal, 'toMiddleName':toMiddleName, 'thruDate':thruDate, 'fromDate':fromDate, 'partyRelationshipTypeId':partyRelationshipTypeId, 'toSuffix':toSuffix, 'fromSuffix':fromSuffix, 'statusId':statusId, 'toFirstName':toFirstName, 'fromPersonalTitle':fromPersonalTitle, 'partyIdTo':partyIdTo, 'fromLastNameLocal':fromLastNameLocal, 'partyStatusId':partyStatusId, 'fromLastName':fromLastName};
  }

}

/// Entity PartyRelationshipToFrom, PartyRelationshipToFrom
class PartyRelationshipToFrom extends EntityBase {

  final String twoComments;
  final String twoSecurityGroupId;
  final String onePartyIdFrom; // pk
  final String onePartyRelationshipTypeId;
  final DateTime twoThruDate;
  final String onePartyIdTo; // pk
  final String twoPriorityTypeId;
  final String twoPositionTitle;
  final String twoPartyIdTo; // pk
  final String oneComments;
  final String onePriorityTypeId;
  final String oneStatusId;
  final String oneRoleTypeIdTo; // pk
  final String onePermissionsEnumId;
  final String oneRelationshipName;
  final DateTime oneFromDate; // pk
  final String twoPermissionsEnumId;
  final String twoRelationshipName;
  final String twoRoleTypeIdFrom; // pk
  final String twoPartyRelationshipTypeId;
  final String oneRoleTypeIdFrom; // pk
  final String twoRoleTypeIdTo; // pk
  final DateTime oneThruDate;
  final DateTime twoFromDate; // pk
  final String onePositionTitle;
  final String oneSecurityGroupId;
  final String twoPartyIdFrom; // pk
  final String twoStatusId;
  PartyRelationshipToFrom({entityId,
    this.twoComments, this.twoSecurityGroupId, @required this.onePartyIdFrom, this.onePartyRelationshipTypeId, this.twoThruDate, @required this.onePartyIdTo, this.twoPriorityTypeId, this.twoPositionTitle, @required this.twoPartyIdTo, this.oneComments, this.onePriorityTypeId, this.oneStatusId, @required this.oneRoleTypeIdTo, this.onePermissionsEnumId, this.oneRelationshipName, @required this.oneFromDate, this.twoPermissionsEnumId, this.twoRelationshipName, @required this.twoRoleTypeIdFrom, this.twoPartyRelationshipTypeId, @required this.oneRoleTypeIdFrom, @required this.twoRoleTypeIdTo, this.oneThruDate, @required this.twoFromDate, this.onePositionTitle, this.oneSecurityGroupId, @required this.twoPartyIdFrom, this.twoStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationshipToFrom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'twoComments':twoComments, 'twoSecurityGroupId':twoSecurityGroupId, 'onePartyIdFrom':onePartyIdFrom, 'onePartyRelationshipTypeId':onePartyRelationshipTypeId, 'twoThruDate':twoThruDate, 'onePartyIdTo':onePartyIdTo, 'twoPriorityTypeId':twoPriorityTypeId, 'twoPositionTitle':twoPositionTitle, 'twoPartyIdTo':twoPartyIdTo, 'oneComments':oneComments, 'onePriorityTypeId':onePriorityTypeId, 'oneStatusId':oneStatusId, 'oneRoleTypeIdTo':oneRoleTypeIdTo, 'onePermissionsEnumId':onePermissionsEnumId, 'oneRelationshipName':oneRelationshipName, 'oneFromDate':oneFromDate, 'twoPermissionsEnumId':twoPermissionsEnumId, 'twoRelationshipName':twoRelationshipName, 'twoRoleTypeIdFrom':twoRoleTypeIdFrom, 'twoPartyRelationshipTypeId':twoPartyRelationshipTypeId, 'oneRoleTypeIdFrom':oneRoleTypeIdFrom, 'twoRoleTypeIdTo':twoRoleTypeIdTo, 'oneThruDate':oneThruDate, 'twoFromDate':twoFromDate, 'onePositionTitle':onePositionTitle, 'oneSecurityGroupId':oneSecurityGroupId, 'twoPartyIdFrom':twoPartyIdFrom, 'twoStatusId':twoStatusId};
  }

}

/// Entity PartyRelationshipType, Party Relationship Type
class PartyRelationshipType extends EntityBase {

  /// this entity has only one pk
  final String partyRelationshipName;
  final String roleTypeIdValidTo;
  final String partyRelationshipTypeId; // pk
  final String roleTypeIdValidFrom;
  final String parentTypeId;
  final String hasTable;
  final String description;
  PartyRelationshipType({entityId,
    this.partyRelationshipName, this.roleTypeIdValidTo, @required this.partyRelationshipTypeId, this.roleTypeIdValidFrom, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRelationshipType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyRelationshipName':partyRelationshipName, 'roleTypeIdValidTo':roleTypeIdValidTo, 'partyRelationshipTypeId':partyRelationshipTypeId, 'roleTypeIdValidFrom':roleTypeIdValidFrom, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PartyRole, Party Role
class PartyRole extends EntityBase {

  final String roleTypeId; // pk
  final String partyId; // pk
  PartyRole({entityId,
    @required this.roleTypeId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'partyId':partyId};
  }

}

/// Entity PartyRoleAndContactMechDetail, Party Role And Contact Mech Details
class PartyRoleAndContactMechDetail extends EntityBase {

  final String occupation;
  final String tnAreaCode;
  final String tnContactNumber;
  final String paCountryGeoId;
  final String contactMechTypeId;
  final String paAddress2;
  final String paAddress1;
  final String suffix;
  final String mothersMaidenName;
  final String contactMechId; // pk
  final String paStateProvinceGeoId;
  final String existingCustomer;
  final String partyTypeId;
  final String infoString;
  final String hasTable;
  final int paHouseNumber;
  final String preferredCurrencyUomId;
  final String paContactMechId; // pk
  final String paAttnName;
  final String partyId; // pk
  final String createdByUserLogin;
  final String memberId;
  final double height;
  final String paPostalCodeGeoId;
  final String passportNumber;
  final String lastNameLocal;
  final int monthsWithEmployer;
  final double weight;
  final String personComments;
  final int monthsWithContactMech;
  final String otherLocal;
  final String logoImageUrl;
  final DateTime thruDate;
  final String paToName;
  final DateTime fromDate; // pk
  final String firstName;
  final String groupName;
  final String paCountyGeoId;
  final String paGeoPointId;
  final String statusId;
  final String cardId;
  final String paDirections;
  final String paPostalCode;
  final String partyGroupComments;
  final String salutation;
  final String paCityGeoId;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  final String officeSiteName;
  final double annualRevenue;
  final int yearsWithEmployer;
  final String lastName;
  final String extension;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String description;
  final String middleNameLocal;
  final String tnContactMechId; // pk
  final String residenceStatusEnumId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupNameLocal;
  final int numEmployees;
  final String nickname;
  final String tnCountryCode;
  final String tnAskForName;
  final String roleTypeId; // pk
  final String parentTypeId;
  final String comments;
  final String paMunicipalityGeoId;
  final DateTime lastModifiedDate;
  final String verified;
  final String externalId;
  final String paCity;
  final String tickerSymbol;
  final DateTime birthDate;
  final String isUnread;
  final String allowSolicitation;
  final DateTime createdDate;
  final int yearsWithContactMech;
  final String paPostalCodeExt;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String personalTitle;
  final String paHouseNumberExt;
  final DateTime deceasedDate;
  PartyRoleAndContactMechDetail({entityId,
    this.occupation, this.tnAreaCode, this.tnContactNumber, this.paCountryGeoId, this.contactMechTypeId, this.paAddress2, this.paAddress1, this.suffix, this.mothersMaidenName, @required this.contactMechId, this.paStateProvinceGeoId, this.existingCustomer, this.partyTypeId, this.infoString, this.hasTable, this.paHouseNumber, this.preferredCurrencyUomId, @required this.paContactMechId, this.paAttnName, @required this.partyId, this.createdByUserLogin, this.memberId, this.height, this.paPostalCodeGeoId, this.passportNumber, this.lastNameLocal, this.monthsWithEmployer, this.weight, this.personComments, this.monthsWithContactMech, this.otherLocal, this.logoImageUrl, this.thruDate, this.paToName, @required this.fromDate, this.firstName, this.groupName, this.paCountyGeoId, this.paGeoPointId, this.statusId, this.cardId, this.paDirections, this.paPostalCode, this.partyGroupComments, this.salutation, this.paCityGeoId, this.totalYearsWorkExperience, this.maritalStatus, this.officeSiteName, this.annualRevenue, this.yearsWithEmployer, this.lastName, this.extension, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.description, this.middleNameLocal, @required this.tnContactMechId, this.residenceStatusEnumId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupNameLocal, this.numEmployees, this.nickname, this.tnCountryCode, this.tnAskForName, @required this.roleTypeId, this.parentTypeId, this.comments, this.paMunicipalityGeoId, this.lastModifiedDate, this.verified, this.externalId, this.paCity, this.tickerSymbol, this.birthDate, this.isUnread, this.allowSolicitation, this.createdDate, this.yearsWithContactMech, this.paPostalCodeExt, this.middleName, this.firstNameLocal, this.passportExpireDate, this.personalTitle, this.paHouseNumberExt, this.deceasedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRoleAndContactMechDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'occupation':occupation, 'tnAreaCode':tnAreaCode, 'tnContactNumber':tnContactNumber, 'paCountryGeoId':paCountryGeoId, 'contactMechTypeId':contactMechTypeId, 'paAddress2':paAddress2, 'paAddress1':paAddress1, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'contactMechId':contactMechId, 'paStateProvinceGeoId':paStateProvinceGeoId, 'existingCustomer':existingCustomer, 'partyTypeId':partyTypeId, 'infoString':infoString, 'hasTable':hasTable, 'paHouseNumber':paHouseNumber, 'preferredCurrencyUomId':preferredCurrencyUomId, 'paContactMechId':paContactMechId, 'paAttnName':paAttnName, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'memberId':memberId, 'height':height, 'paPostalCodeGeoId':paPostalCodeGeoId, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'personComments':personComments, 'monthsWithContactMech':monthsWithContactMech, 'otherLocal':otherLocal, 'logoImageUrl':logoImageUrl, 'thruDate':thruDate, 'paToName':paToName, 'fromDate':fromDate, 'firstName':firstName, 'groupName':groupName, 'paCountyGeoId':paCountyGeoId, 'paGeoPointId':paGeoPointId, 'statusId':statusId, 'cardId':cardId, 'paDirections':paDirections, 'paPostalCode':paPostalCode, 'partyGroupComments':partyGroupComments, 'salutation':salutation, 'paCityGeoId':paCityGeoId, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'extension':extension, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'description':description, 'middleNameLocal':middleNameLocal, 'tnContactMechId':tnContactMechId, 'residenceStatusEnumId':residenceStatusEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'nickname':nickname, 'tnCountryCode':tnCountryCode, 'tnAskForName':tnAskForName, 'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'comments':comments, 'paMunicipalityGeoId':paMunicipalityGeoId, 'lastModifiedDate':lastModifiedDate, 'verified':verified, 'externalId':externalId, 'paCity':paCity, 'tickerSymbol':tickerSymbol, 'birthDate':birthDate, 'isUnread':isUnread, 'allowSolicitation':allowSolicitation, 'createdDate':createdDate, 'yearsWithContactMech':yearsWithContactMech, 'paPostalCodeExt':paPostalCodeExt, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'personalTitle':personalTitle, 'paHouseNumberExt':paHouseNumberExt, 'deceasedDate':deceasedDate};
  }

}

/// Entity PartyRoleAndPartyDetail, Party Role and Party Detail (Person, PartyGroup, etc.) View
class PartyRoleAndPartyDetail extends EntityBase {

  final String occupation;
  final String suffix;
  final String mothersMaidenName;
  final String existingCustomer;
  final String partyTypeId;
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final int monthsWithEmployer;
  final double weight;
  final String personComments;
  final String otherLocal;
  final String logoImageUrl;
  final String firstName;
  final String groupName;
  final String statusId;
  final String cardId;
  final String partyGroupComments;
  final String salutation;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  final String officeSiteName;
  final double annualRevenue;
  final int yearsWithEmployer;
  final String lastName;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String description;
  final String middleNameLocal;
  final String residenceStatusEnumId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupNameLocal;
  final int numEmployees;
  final String nickname;
  final String roleTypeId; // pk
  final DateTime lastModifiedDate;
  final String externalId;
  final String tickerSymbol;
  final DateTime birthDate;
  final String isUnread;
  final DateTime createdDate;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String personalTitle;
  final DateTime deceasedDate;
  PartyRoleAndPartyDetail({entityId,
    this.occupation, this.suffix, this.mothersMaidenName, this.existingCustomer, this.partyTypeId, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.monthsWithEmployer, this.weight, this.personComments, this.otherLocal, this.logoImageUrl, this.firstName, this.groupName, this.statusId, this.cardId, this.partyGroupComments, this.salutation, this.totalYearsWorkExperience, this.maritalStatus, this.officeSiteName, this.annualRevenue, this.yearsWithEmployer, this.lastName, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.description, this.middleNameLocal, this.residenceStatusEnumId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupNameLocal, this.numEmployees, this.nickname, @required this.roleTypeId, this.lastModifiedDate, this.externalId, this.tickerSymbol, this.birthDate, this.isUnread, this.createdDate, this.middleName, this.firstNameLocal, this.passportExpireDate, this.personalTitle, this.deceasedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRoleAndPartyDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'occupation':occupation, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'existingCustomer':existingCustomer, 'partyTypeId':partyTypeId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'personComments':personComments, 'otherLocal':otherLocal, 'logoImageUrl':logoImageUrl, 'firstName':firstName, 'groupName':groupName, 'statusId':statusId, 'cardId':cardId, 'partyGroupComments':partyGroupComments, 'salutation':salutation, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'description':description, 'middleNameLocal':middleNameLocal, 'residenceStatusEnumId':residenceStatusEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'nickname':nickname, 'roleTypeId':roleTypeId, 'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'tickerSymbol':tickerSymbol, 'birthDate':birthDate, 'isUnread':isUnread, 'createdDate':createdDate, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate};
  }

}

/// Entity PartyRoleDetailAndPartyDetail, Party Role and Party Detail (Person, PartyGroup, etc.) View
class PartyRoleDetailAndPartyDetail extends EntityBase {

  final String occupation;
  final String suffix;
  final String mothersMaidenName;
  final String existingCustomer;
  final String partyTypeId;
  final String hasTable;
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final int monthsWithEmployer;
  final double weight;
  final String personComments;
  final String otherLocal;
  final String logoImageUrl;
  final String firstName;
  final String groupName;
  final String statusId;
  final String cardId;
  final String partyGroupComments;
  final String salutation;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  final String officeSiteName;
  final double annualRevenue;
  final int yearsWithEmployer;
  final String lastName;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String description;
  final String middleNameLocal;
  final String residenceStatusEnumId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupNameLocal;
  final int numEmployees;
  final String nickname;
  final String roleTypeId; // pk
  final String parentTypeId;
  final DateTime lastModifiedDate;
  final String externalId;
  final String tickerSymbol;
  final DateTime birthDate;
  final String isUnread;
  final DateTime createdDate;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String personalTitle;
  final DateTime deceasedDate;
  PartyRoleDetailAndPartyDetail({entityId,
    this.occupation, this.suffix, this.mothersMaidenName, this.existingCustomer, this.partyTypeId, this.hasTable, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.monthsWithEmployer, this.weight, this.personComments, this.otherLocal, this.logoImageUrl, this.firstName, this.groupName, this.statusId, this.cardId, this.partyGroupComments, this.salutation, this.totalYearsWorkExperience, this.maritalStatus, this.officeSiteName, this.annualRevenue, this.yearsWithEmployer, this.lastName, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.description, this.middleNameLocal, this.residenceStatusEnumId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupNameLocal, this.numEmployees, this.nickname, @required this.roleTypeId, this.parentTypeId, this.lastModifiedDate, this.externalId, this.tickerSymbol, this.birthDate, this.isUnread, this.createdDate, this.middleName, this.firstNameLocal, this.passportExpireDate, this.personalTitle, this.deceasedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRoleDetailAndPartyDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'occupation':occupation, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'existingCustomer':existingCustomer, 'partyTypeId':partyTypeId, 'hasTable':hasTable, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'personComments':personComments, 'otherLocal':otherLocal, 'logoImageUrl':logoImageUrl, 'firstName':firstName, 'groupName':groupName, 'statusId':statusId, 'cardId':cardId, 'partyGroupComments':partyGroupComments, 'salutation':salutation, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'description':description, 'middleNameLocal':middleNameLocal, 'residenceStatusEnumId':residenceStatusEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'nickname':nickname, 'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'tickerSymbol':tickerSymbol, 'birthDate':birthDate, 'isUnread':isUnread, 'createdDate':createdDate, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate};
  }

}

/// Entity PartyRoleNameDetail, Party Role and Party Detail (Person, PartyGroup, etc.) View
class PartyRoleNameDetail extends EntityBase {

  final String occupation;
  final String suffix;
  final String mothersMaidenName;
  final String existingCustomer;
  final String partyTypeId;
  final String preferredCurrencyUomId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final int monthsWithEmployer;
  final double weight;
  final String otherLocal;
  final String logoImageUrl;
  final String firstName;
  final String groupName;
  final String statusId;
  final String cardId;
  final String salutation;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  final String officeSiteName;
  final double annualRevenue;
  final int yearsWithEmployer;
  final String lastName;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String description;
  final String middleNameLocal;
  final String residenceStatusEnumId;
  final String lastModifiedByUserLogin;
  final String dataSourceId;
  final String groupNameLocal;
  final int numEmployees;
  final String nickname;
  final String roleTypeId; // pk
  final DateTime lastModifiedDate;
  final String externalId;
  final String tickerSymbol;
  final DateTime birthDate;
  final String isUnread;
  final DateTime createdDate;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String personalTitle;
  final DateTime deceasedDate;
  PartyRoleNameDetail({entityId,
    this.occupation, this.suffix, this.mothersMaidenName, this.existingCustomer, this.partyTypeId, this.preferredCurrencyUomId, @required this.partyId, this.createdByUserLogin, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.monthsWithEmployer, this.weight, this.otherLocal, this.logoImageUrl, this.firstName, this.groupName, this.statusId, this.cardId, this.salutation, this.totalYearsWorkExperience, this.maritalStatus, this.officeSiteName, this.annualRevenue, this.yearsWithEmployer, this.lastName, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.description, this.middleNameLocal, this.residenceStatusEnumId, this.lastModifiedByUserLogin, this.dataSourceId, this.groupNameLocal, this.numEmployees, this.nickname, @required this.roleTypeId, this.lastModifiedDate, this.externalId, this.tickerSymbol, this.birthDate, this.isUnread, this.createdDate, this.middleName, this.firstNameLocal, this.passportExpireDate, this.personalTitle, this.deceasedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyRoleNameDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'occupation':occupation, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'existingCustomer':existingCustomer, 'partyTypeId':partyTypeId, 'preferredCurrencyUomId':preferredCurrencyUomId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'otherLocal':otherLocal, 'logoImageUrl':logoImageUrl, 'firstName':firstName, 'groupName':groupName, 'statusId':statusId, 'cardId':cardId, 'salutation':salutation, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'description':description, 'middleNameLocal':middleNameLocal, 'residenceStatusEnumId':residenceStatusEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataSourceId':dataSourceId, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'nickname':nickname, 'roleTypeId':roleTypeId, 'lastModifiedDate':lastModifiedDate, 'externalId':externalId, 'tickerSymbol':tickerSymbol, 'birthDate':birthDate, 'isUnread':isUnread, 'createdDate':createdDate, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate};
  }

}

/// Entity PartyStatus, Tracks a history of the status of a Party
class PartyStatus extends EntityBase {

  final DateTime statusDate; // pk
  final String statusId; // pk
  final String partyId; // pk
  final String changeByUserLoginId;
  PartyStatus({entityId,
    @required this.statusDate, @required this.statusId, @required this.partyId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'partyId':partyId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity PartyType, Party Type
class PartyType extends EntityBase {

  /// this entity has only one pk
  final String partyTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  PartyType({entityId,
    @required this.partyTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyTypeId':partyTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PartyTypeAttr, Party Type Attribute
class PartyTypeAttr extends EntityBase {

  final String partyTypeId; // pk
  final String description;
  final String attrName; // pk
  PartyTypeAttr({entityId,
    @required this.partyTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyTypeId':partyTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity Person, Person
class Person extends EntityBase {

  /// this entity has only one pk
  final int yearsWithEmployer;
  final String lastName;
  final String occupation;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String suffix;
  final String mothersMaidenName;
  final String middleNameLocal;
  final String existingCustomer;
  final String residenceStatusEnumId;
  final String nickname;
  final String partyId; // pk
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final String comments;
  final int monthsWithEmployer;
  final double weight;
  final DateTime birthDate;
  final String otherLocal;
  final String firstName;
  final String cardId;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String salutation;
  final String personalTitle;
  final DateTime deceasedDate;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  Person({entityId,
    this.yearsWithEmployer, this.lastName, this.occupation, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.suffix, this.mothersMaidenName, this.middleNameLocal, this.existingCustomer, this.residenceStatusEnumId, this.nickname, @required this.partyId, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.comments, this.monthsWithEmployer, this.weight, this.birthDate, this.otherLocal, this.firstName, this.cardId, this.middleName, this.firstNameLocal, this.passportExpireDate, this.salutation, this.personalTitle, this.deceasedDate, this.totalYearsWorkExperience, this.maritalStatus,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Person { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'occupation':occupation, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'middleNameLocal':middleNameLocal, 'existingCustomer':existingCustomer, 'residenceStatusEnumId':residenceStatusEnumId, 'nickname':nickname, 'partyId':partyId, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'comments':comments, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'birthDate':birthDate, 'otherLocal':otherLocal, 'firstName':firstName, 'cardId':cardId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'salutation':salutation, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus};
  }

}

/// Entity PriorityType, Priority Type
class PriorityType extends EntityBase {

  /// this entity has only one pk
  final String priorityTypeId; // pk
  final String description;
  PriorityType({entityId,
    @required this.priorityTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PriorityType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'priorityTypeId':priorityTypeId, 'description':description};
  }

}

/// Entity RoleType, Role Type
class RoleType extends EntityBase {

  /// this entity has only one pk
  final String roleTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  RoleType({entityId,
    @required this.roleTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RoleType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity RoleTypeAndParty, Party Role View
class RoleTypeAndParty extends EntityBase {

  final String roleTypeId; // pk
  final String parentTypeId;
  final String description;
  final String partyId; // pk
  RoleTypeAndParty({entityId,
    @required this.roleTypeId, this.parentTypeId, this.description, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RoleTypeAndParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'description':description, 'partyId':partyId};
  }

}

/// Entity RoleTypeAttr, Role Type Attribute
class RoleTypeAttr extends EntityBase {

  final String roleTypeId; // pk
  final String description;
  final String attrName; // pk
  RoleTypeAttr({entityId,
    @required this.roleTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RoleTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity RoleTypeIn3Levels, Party Role View in 4 levels
class RoleTypeIn3Levels extends EntityBase {

  final String topDescription;
  final String midRoleTypeId; // pk
  final String midDescription;
  final String lowRoleTypeId; // pk
  final String lowDescription;
  final String topRoleTypeId; // pk
  RoleTypeIn3Levels({entityId,
    this.topDescription, @required this.midRoleTypeId, this.midDescription, @required this.lowRoleTypeId, this.lowDescription, @required this.topRoleTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RoleTypeIn3Levels { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'topDescription':topDescription, 'midRoleTypeId':midRoleTypeId, 'midDescription':midDescription, 'lowRoleTypeId':lowRoleTypeId, 'lowDescription':lowDescription, 'topRoleTypeId':topRoleTypeId};
  }

}

/// Entity UserLoginAndPartyDetails, UserLogin, Party, Person and PartyGroup
class UserLoginAndPartyDetails extends EntityBase {

  final String lastName;
  final int successiveFailedLogins;
  final String passwordHint;
  final String enabled;
  final String currentPassword;
  final String userLoginId; // pk
  final DateTime disabledDateTime;
  final String partyTypeId;
  final String firstName;
  final String groupName;
  final DateTime createdDate;
  final String statusId;
  final String middleName;
  final String partyId; // pk
  UserLoginAndPartyDetails({entityId,
    this.lastName, this.successiveFailedLogins, this.passwordHint, this.enabled, this.currentPassword, @required this.userLoginId, this.disabledDateTime, this.partyTypeId, this.firstName, this.groupName, this.createdDate, this.statusId, this.middleName, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginAndPartyDetails { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastName':lastName, 'successiveFailedLogins':successiveFailedLogins, 'passwordHint':passwordHint, 'enabled':enabled, 'currentPassword':currentPassword, 'userLoginId':userLoginId, 'disabledDateTime':disabledDateTime, 'partyTypeId':partyTypeId, 'firstName':firstName, 'groupName':groupName, 'createdDate':createdDate, 'statusId':statusId, 'middleName':middleName, 'partyId':partyId};
  }

}

/// Entity Vendor, Vendor
class Vendor extends EntityBase {

  /// this entity has only one pk
  final String manifestCompanyTitle;
  final String manifestPolicies;
  final String manifestLogoUrl;
  final String partyId; // pk
  final String manifestCompanyName;
  Vendor({entityId,
    this.manifestCompanyTitle, this.manifestPolicies, this.manifestLogoUrl, @required this.partyId, this.manifestCompanyName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Vendor { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'manifestCompanyTitle':manifestCompanyTitle, 'manifestPolicies':manifestPolicies, 'manifestLogoUrl':manifestLogoUrl, 'partyId':partyId, 'manifestCompanyName':manifestCompanyName};
  }

}

/// Entity WebSiteRole, WebSite Role Association
class WebSiteRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final int sequenceNum;
  final String partyId; // pk
  final String webSiteId; // pk
  final DateTime thruDate;
  WebSiteRole({entityId,
    @required this.fromDate, @required this.roleTypeId, this.sequenceNum, @required this.partyId, @required this.webSiteId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSiteRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'sequenceNum':sequenceNum, 'partyId':partyId, 'webSiteId':webSiteId, 'thruDate':thruDate};
  }

}