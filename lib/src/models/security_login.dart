import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity UserLogin, UserLogin
class UserLogin extends EntityBase {

  /// this entity has only one pk
  final int successiveFailedLogins;
  final String passwordHint;
  final String externalAuthId;
  final String lastTimeZone;
  final String enabled;
  final String lastLocale;
  final String currentPassword;
  final String userLoginId; // pk
  final String isSystem;
  final DateTime disabledDateTime;
  final String disabledBy;
  final String hasLoggedOut;
  final String userLdapDn;
  final String requirePasswordChange;
  final String lastCurrencyUom;
  final String partyId;
  UserLogin({entityId,
    this.successiveFailedLogins, this.passwordHint, this.externalAuthId, this.lastTimeZone, this.enabled, this.lastLocale, this.currentPassword, @required this.userLoginId, this.isSystem, this.disabledDateTime, this.disabledBy, this.hasLoggedOut, this.userLdapDn, this.requirePasswordChange, this.lastCurrencyUom, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLogin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'successiveFailedLogins':successiveFailedLogins, 'passwordHint':passwordHint, 'externalAuthId':externalAuthId, 'lastTimeZone':lastTimeZone, 'enabled':enabled, 'lastLocale':lastLocale, 'currentPassword':currentPassword, 'userLoginId':userLoginId, 'isSystem':isSystem, 'disabledDateTime':disabledDateTime, 'disabledBy':disabledBy, 'hasLoggedOut':hasLoggedOut, 'userLdapDn':userLdapDn, 'requirePasswordChange':requirePasswordChange, 'lastCurrencyUom':lastCurrencyUom, 'partyId':partyId};
  }

}

/// Entity UserLoginHistory, UserLoginHistory
class UserLoginHistory extends EntityBase {

  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final String visitId;
  final String passwordUsed;
  final String partyId;
  final String successfulLogin;
  final DateTime thruDate;
  UserLoginHistory({entityId,
    @required this.userLoginId, @required this.fromDate, this.visitId, this.passwordUsed, this.partyId, this.successfulLogin, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'fromDate':fromDate, 'visitId':visitId, 'passwordUsed':passwordUsed, 'partyId':partyId, 'successfulLogin':successfulLogin, 'thruDate':thruDate};
  }

}

/// Entity UserLoginPasswordHistory, User Login Password History
class UserLoginPasswordHistory extends EntityBase {

  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final DateTime thruDate;
  final String currentPassword;
  UserLoginPasswordHistory({entityId,
    @required this.userLoginId, @required this.fromDate, this.thruDate, this.currentPassword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginPasswordHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'fromDate':fromDate, 'thruDate':thruDate, 'currentPassword':currentPassword};
  }

}

/// Entity UserLoginSecurityQuestion, UserLoginSecurityQuestion
class UserLoginSecurityQuestion extends EntityBase {

  final String userLoginId; // pk
  final String questionEnumId; // pk
  final String securityAnswer;
  UserLoginSecurityQuestion({entityId,
    @required this.userLoginId, @required this.questionEnumId, this.securityAnswer,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginSecurityQuestion { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'questionEnumId':questionEnumId, 'securityAnswer':securityAnswer};
  }

}

/// Entity UserLoginSession, User Login History
class UserLoginSession extends EntityBase {

  /// this entity has only one pk
  final String userLoginId; // pk
  final String sessionData;
  final DateTime savedDate;
  UserLoginSession({entityId,
    @required this.userLoginId, this.sessionData, this.savedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginSession { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'sessionData':sessionData, 'savedDate':savedDate};
  }

}