import 'package:sagas_meta/src/models/security_securitygroup.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class SecuritySecuritygroupJsonifier{
  static ProtectedView extractProtectedView(dynamic json) {
    return ProtectedView(
        entityId: create_id_from('ProtectedView', ['groupId', 'viewNameId'], json),
        viewNameId: json['viewNameId'] as String,
        maxHitsDuration: json['maxHitsDuration'] as int,
        tarpitDuration: json['tarpitDuration'] as int,
        groupId: json['groupId'] as String,
        maxHits: json['maxHits'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProtectedView overridesProtectedView(Map<String, dynamic> map) {
    return ProtectedView(
        entityId: create_id_from('ProtectedView', ['groupId', 'viewNameId'], map),
        viewNameId: map['viewNameId'],
        maxHitsDuration: map['maxHitsDuration'],
        tarpitDuration: map['tarpitDuration'],
        groupId: map['groupId'],
        maxHits: map['maxHits'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SecurityGroup extractSecurityGroup(dynamic json) {
    return SecurityGroup(
        entityId: create_id_from('SecurityGroup', ['groupId'], json),
        groupName: json['groupName'] as String,
        groupId: json['groupId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SecurityGroup overridesSecurityGroup(Map<String, dynamic> map) {
    return SecurityGroup(
        entityId: create_id_from('SecurityGroup', ['groupId'], map),
        groupName: map['groupName'],
        groupId: map['groupId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SecurityGroupPermission extractSecurityGroupPermission(dynamic json) {
    return SecurityGroupPermission(
        entityId: create_id_from('SecurityGroupPermission', ['groupId', 'permissionId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        permissionId: json['permissionId'] as String,
        groupId: json['groupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SecurityGroupPermission overridesSecurityGroupPermission(Map<String, dynamic> map) {
    return SecurityGroupPermission(
        entityId: create_id_from('SecurityGroupPermission', ['groupId', 'permissionId', 'fromDate'], map),
        fromDate: map['fromDate'],
        permissionId: map['permissionId'],
        groupId: map['groupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SecurityPermission extractSecurityPermission(dynamic json) {
    return SecurityPermission(
        entityId: create_id_from('SecurityPermission', ['permissionId'], json),
        permissionId: json['permissionId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SecurityPermission overridesSecurityPermission(Map<String, dynamic> map) {
    return SecurityPermission(
        entityId: create_id_from('SecurityPermission', ['permissionId'], map),
        permissionId: map['permissionId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TarpittedLoginView extractTarpittedLoginView(dynamic json) {
    return TarpittedLoginView(
        entityId: create_id_from('TarpittedLoginView', ['viewNameId', 'userLoginId'], json),
        viewNameId: json['viewNameId'] as String,
        userLoginId: json['userLoginId'] as String,
        tarpitReleaseDateTime: json['tarpitReleaseDateTime'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TarpittedLoginView overridesTarpittedLoginView(Map<String, dynamic> map) {
    return TarpittedLoginView(
        entityId: create_id_from('TarpittedLoginView', ['viewNameId', 'userLoginId'], map),
        viewNameId: map['viewNameId'],
        userLoginId: map['userLoginId'],
        tarpitReleaseDateTime: map['tarpitReleaseDateTime'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginAndProtectedView extractUserLoginAndProtectedView(dynamic json) {
    return UserLoginAndProtectedView(
        entityId: create_id_from('UserLoginAndProtectedView', ['userLoginId', 'fromDate', 'groupId', 'viewNameId'], json),
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        viewNameId: json['viewNameId'] as String,
        maxHitsDuration: json['maxHitsDuration'] as int,
        tarpitDuration: json['tarpitDuration'] as int,
        groupId: json['groupId'] as String,
        maxHits: json['maxHits'] as int,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginAndProtectedView overridesUserLoginAndProtectedView(Map<String, dynamic> map) {
    return UserLoginAndProtectedView(
        entityId: create_id_from('UserLoginAndProtectedView', ['userLoginId', 'fromDate', 'groupId', 'viewNameId'], map),
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        viewNameId: map['viewNameId'],
        maxHitsDuration: map['maxHitsDuration'],
        tarpitDuration: map['tarpitDuration'],
        groupId: map['groupId'],
        maxHits: map['maxHits'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserLoginAndSecurityGroup extractUserLoginAndSecurityGroup(dynamic json) {
    return UserLoginAndSecurityGroup(
        entityId: create_id_from('UserLoginAndSecurityGroup', ['userLoginId', 'fromDate', 'groupId'], json),
        successiveFailedLogins: json['successiveFailedLogins'] as int,
        passwordHint: json['passwordHint'] as String,
        groupId: json['groupId'] as String,
        externalAuthId: json['externalAuthId'] as String,
        lastTimeZone: json['lastTimeZone'] as String,
        enabled: json['enabled'] as String,
        lastLocale: json['lastLocale'] as String,
        thruDate: check_dt(json['thruDate']),
        currentPassword: json['currentPassword'] as String,
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
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

  static UserLoginAndSecurityGroup overridesUserLoginAndSecurityGroup(Map<String, dynamic> map) {
    return UserLoginAndSecurityGroup(
        entityId: create_id_from('UserLoginAndSecurityGroup', ['userLoginId', 'fromDate', 'groupId'], map),
        successiveFailedLogins: map['successiveFailedLogins'],
        passwordHint: map['passwordHint'],
        groupId: map['groupId'],
        externalAuthId: map['externalAuthId'],
        lastTimeZone: map['lastTimeZone'],
        enabled: map['enabled'],
        lastLocale: map['lastLocale'],
        thruDate: map['thruDate'],
        currentPassword: map['currentPassword'],
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
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

  static UserLoginSecurityGroup extractUserLoginSecurityGroup(dynamic json) {
    return UserLoginSecurityGroup(
        entityId: create_id_from('UserLoginSecurityGroup', ['userLoginId', 'groupId', 'fromDate'], json),
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        groupId: json['groupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserLoginSecurityGroup overridesUserLoginSecurityGroup(Map<String, dynamic> map) {
    return UserLoginSecurityGroup(
        entityId: create_id_from('UserLoginSecurityGroup', ['userLoginId', 'groupId', 'fromDate'], map),
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        groupId: map['groupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}