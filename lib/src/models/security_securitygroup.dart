import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProtectedView, Security Component - Protected View
class ProtectedView extends EntityBase {

  final String viewNameId; // pk
  final int maxHitsDuration;
  final int tarpitDuration;
  final String groupId; // pk
  final int maxHits;
  ProtectedView({entityId,
    @required this.viewNameId, this.maxHitsDuration, this.tarpitDuration, @required this.groupId, this.maxHits,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProtectedView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'viewNameId':viewNameId, 'maxHitsDuration':maxHitsDuration, 'tarpitDuration':tarpitDuration, 'groupId':groupId, 'maxHits':maxHits};
  }

}

/// Entity SecurityGroup, Security Component - Security Group
class SecurityGroup extends EntityBase {

  /// this entity has only one pk
  final String groupName;
  final String groupId; // pk
  final String description;
  SecurityGroup({entityId,
    this.groupName, @required this.groupId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SecurityGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'groupName':groupName, 'groupId':groupId, 'description':description};
  }

}

/// Entity SecurityGroupPermission, Security Component - Security Group Permission
class SecurityGroupPermission extends EntityBase {

  final DateTime fromDate; // pk
  final String permissionId; // pk
  final String groupId; // pk
  final DateTime thruDate;
  SecurityGroupPermission({entityId,
    @required this.fromDate, @required this.permissionId, @required this.groupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SecurityGroupPermission { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'permissionId':permissionId, 'groupId':groupId, 'thruDate':thruDate};
  }

}

/// Entity SecurityPermission, Security Component - Security Permission
class SecurityPermission extends EntityBase {

  /// this entity has only one pk
  final String permissionId; // pk
  final String description;
  SecurityPermission({entityId,
    @required this.permissionId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SecurityPermission { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'permissionId':permissionId, 'description':description};
  }

}

/// Entity TarpittedLoginView, Security Component - Protected View
class TarpittedLoginView extends EntityBase {

  final String viewNameId; // pk
  final String userLoginId; // pk
  final int tarpitReleaseDateTime;
  TarpittedLoginView({entityId,
    @required this.viewNameId, @required this.userLoginId, this.tarpitReleaseDateTime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TarpittedLoginView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'viewNameId':viewNameId, 'userLoginId':userLoginId, 'tarpitReleaseDateTime':tarpitReleaseDateTime};
  }

}

/// Entity UserLoginAndProtectedView, UserLogin And ProtectedView View
class UserLoginAndProtectedView extends EntityBase {

  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final String viewNameId; // pk
  final int maxHitsDuration;
  final int tarpitDuration;
  final String groupId; // pk
  final int maxHits;
  final DateTime thruDate;
  UserLoginAndProtectedView({entityId,
    @required this.userLoginId, @required this.fromDate, @required this.viewNameId, this.maxHitsDuration, this.tarpitDuration, @required this.groupId, this.maxHits, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginAndProtectedView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'fromDate':fromDate, 'viewNameId':viewNameId, 'maxHitsDuration':maxHitsDuration, 'tarpitDuration':tarpitDuration, 'groupId':groupId, 'maxHits':maxHits, 'thruDate':thruDate};
  }

}

/// Entity UserLoginAndSecurityGroup, UserLogin And SecurityGroup View
class UserLoginAndSecurityGroup extends EntityBase {

  final int successiveFailedLogins;
  final String passwordHint;
  final String groupId; // pk
  final String externalAuthId;
  final String lastTimeZone;
  final String enabled;
  final String lastLocale;
  final DateTime thruDate;
  final String currentPassword;
  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final String isSystem;
  final DateTime disabledDateTime;
  final String disabledBy;
  final String hasLoggedOut;
  final String userLdapDn;
  final String requirePasswordChange;
  final String lastCurrencyUom;
  final String partyId;
  UserLoginAndSecurityGroup({entityId,
    this.successiveFailedLogins, this.passwordHint, @required this.groupId, this.externalAuthId, this.lastTimeZone, this.enabled, this.lastLocale, this.thruDate, this.currentPassword, @required this.userLoginId, @required this.fromDate, this.isSystem, this.disabledDateTime, this.disabledBy, this.hasLoggedOut, this.userLdapDn, this.requirePasswordChange, this.lastCurrencyUom, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginAndSecurityGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'successiveFailedLogins':successiveFailedLogins, 'passwordHint':passwordHint, 'groupId':groupId, 'externalAuthId':externalAuthId, 'lastTimeZone':lastTimeZone, 'enabled':enabled, 'lastLocale':lastLocale, 'thruDate':thruDate, 'currentPassword':currentPassword, 'userLoginId':userLoginId, 'fromDate':fromDate, 'isSystem':isSystem, 'disabledDateTime':disabledDateTime, 'disabledBy':disabledBy, 'hasLoggedOut':hasLoggedOut, 'userLdapDn':userLdapDn, 'requirePasswordChange':requirePasswordChange, 'lastCurrencyUom':lastCurrencyUom, 'partyId':partyId};
  }

}

/// Entity UserLoginSecurityGroup, Security Component - User Login Security Group
class UserLoginSecurityGroup extends EntityBase {

  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final String groupId; // pk
  final DateTime thruDate;
  UserLoginSecurityGroup({entityId,
    @required this.userLoginId, @required this.fromDate, @required this.groupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserLoginSecurityGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'fromDate':fromDate, 'groupId':groupId, 'thruDate':thruDate};
  }

}