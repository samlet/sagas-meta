import 'package:sagas_meta/src/models/security_login.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class SecurityLoginJsonifier{
  static UserLogin extractUserLogin(dynamic json) {
    return UserLogin(
        entityId: create_id_from('UserLogin', ['userLoginId'], json),
        successiveFailedLogins: json['successiveFailedLogins'] as int,
        passwordHint: json['passwordHint'] as String,
        externalAuthId: json['externalAuthId'] as String,
        lastTimeZone: json['lastTimeZone'] as String,
        enabled: json['enabled'] as String,
        lastLocale: json['lastLocale'] as String,
        currentPassword: json['currentPassword'] as String,
        userLoginId: json['userLoginId'] as String,
        isSystem: json['isSystem'] as String,
        disabledDateTime: check_dt(json['disabledDateTime']),
        disabledBy: json['disabledBy'] as String,
        hasLoggedOut: json['hasLoggedOut'] as String,
        userLdapDn: json['userLdapDn'] as String,
        requirePasswordChange: json['requirePasswordChange'] as String,
        lastCurrencyUom: json['lastCurrencyUom'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLogin overridesUserLogin(Map<String, dynamic> map) {
    return UserLogin(
        entityId: create_id_from('UserLogin', ['userLoginId'], map),
        successiveFailedLogins: map['successiveFailedLogins'],
        passwordHint: map['passwordHint'],
        externalAuthId: map['externalAuthId'],
        lastTimeZone: map['lastTimeZone'],
        enabled: map['enabled'],
        lastLocale: map['lastLocale'],
        currentPassword: map['currentPassword'],
        userLoginId: map['userLoginId'],
        isSystem: map['isSystem'],
        disabledDateTime: map['disabledDateTime'],
        disabledBy: map['disabledBy'],
        hasLoggedOut: map['hasLoggedOut'],
        userLdapDn: map['userLdapDn'],
        requirePasswordChange: map['requirePasswordChange'],
        lastCurrencyUom: map['lastCurrencyUom'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginHistory extractUserLoginHistory(dynamic json) {
    return UserLoginHistory(
        entityId: create_id_from('UserLoginHistory', ['userLoginId', 'fromDate'], json),
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        visitId: json['visitId'] as String,
        passwordUsed: json['passwordUsed'] as String,
        partyId: json['partyId'] as String,
        successfulLogin: json['successfulLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginHistory overridesUserLoginHistory(Map<String, dynamic> map) {
    return UserLoginHistory(
        entityId: create_id_from('UserLoginHistory', ['userLoginId', 'fromDate'], map),
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        visitId: map['visitId'],
        passwordUsed: map['passwordUsed'],
        partyId: map['partyId'],
        successfulLogin: map['successfulLogin'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginPasswordHistory extractUserLoginPasswordHistory(dynamic json) {
    return UserLoginPasswordHistory(
        entityId: create_id_from('UserLoginPasswordHistory', ['userLoginId', 'fromDate'], json),
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        thruDate: check_dt(json['thruDate']),
        currentPassword: json['currentPassword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginPasswordHistory overridesUserLoginPasswordHistory(Map<String, dynamic> map) {
    return UserLoginPasswordHistory(
        entityId: create_id_from('UserLoginPasswordHistory', ['userLoginId', 'fromDate'], map),
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        thruDate: map['thruDate'],
        currentPassword: map['currentPassword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginSecurityQuestion extractUserLoginSecurityQuestion(dynamic json) {
    return UserLoginSecurityQuestion(
        entityId: create_id_from('UserLoginSecurityQuestion', ['questionEnumId', 'userLoginId'], json),
        userLoginId: json['userLoginId'] as String,
        questionEnumId: json['questionEnumId'] as String,
        securityAnswer: json['securityAnswer'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginSecurityQuestion overridesUserLoginSecurityQuestion(Map<String, dynamic> map) {
    return UserLoginSecurityQuestion(
        entityId: create_id_from('UserLoginSecurityQuestion', ['questionEnumId', 'userLoginId'], map),
        userLoginId: map['userLoginId'],
        questionEnumId: map['questionEnumId'],
        securityAnswer: map['securityAnswer'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginSession extractUserLoginSession(dynamic json) {
    return UserLoginSession(
        entityId: create_id_from('UserLoginSession', ['userLoginId'], json),
        userLoginId: json['userLoginId'] as String,
        sessionData: json['sessionData'] as String,
        savedDate: check_dt(json['savedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginSession overridesUserLoginSession(Map<String, dynamic> map) {
    return UserLoginSession(
        entityId: create_id_from('UserLoginSession', ['userLoginId'], map),
        userLoginId: map['userLoginId'],
        sessionData: map['sessionData'],
        savedDate: map['savedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}