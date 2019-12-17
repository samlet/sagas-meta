import 'package:sagas_meta/src/models/security_login.dart';
import 'package:sagas_meta/src/models/security_securitygroup.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesSecurity{
  final SrvClient client;
  CommonServicesSecurity(this.client);

  /**
   * Add a Protected View to a SecurityGroup - ProtectedView
   *
   * Requires viewNameId, groupId, maxHits, maxHitsDuration, tarpitDuration
   * Returns 
   */
  Future<OfResult> addProtectedViewToSecurityGroup(ProtectedView ent, ) =>
      client.invoke('addProtectedViewToSecurityGroup', ent, {  });

  /**
   * Add a SecurityPermission to a SecurityGroup - SecurityGroupPermission
   *
   * Requires groupId, permissionId, fromDate
   * Returns 
   */
  Future<OfResult> addSecurityPermissionToSecurityGroup(SecurityGroupPermission ent, ) =>
      client.invoke('addSecurityPermissionToSecurityGroup', ent, {  });

  /**
   * Add a UserLogin to a SecurityGroup - UserLoginSecurityGroup
   *
   * Requires userLoginId, groupId
   * Returns 
   */
  Future<OfResult> addUserLoginToSecurityGroup(UserLoginSecurityGroup ent, ) =>
      client.invoke('addUserLoginToSecurityGroup', ent, {  });

  /**
   * Create an SecurityGroup - SecurityGroup
   *
   * Requires groupId
   * Returns 
   */
  Future<OfResult> createSecurityGroup(SecurityGroup ent, ) =>
      client.invoke('createSecurityGroup', ent, {  });

  /**
   * Create a SecurityPermission - SecurityPermission
   *
   * Requires permissionId
   * Returns 
   */
  Future<OfResult> createSecurityPermission(SecurityPermission ent, ) =>
      client.invoke('createSecurityPermission', ent, {  });

  /**
   * Create a UserLoginSecurityQuestion - UserLoginSecurityQuestion
   *
   * Requires questionEnumId, userLoginId
   * Returns 
   */
  Future<OfResult> createUserLoginSecurityQuestion(UserLoginSecurityQuestion ent, ) =>
      client.invoke('createUserLoginSecurityQuestion', ent, {  });

  /**
   * Delete a SecurityGroup - SecurityGroup
   *
   * Requires groupId
   * Returns 
   */
  Future<OfResult> deleteSecurityGroup(SecurityGroup ent, ) =>
      client.invoke('deleteSecurityGroup', ent, {  });

  /**
   * Expire a SecurityPermission from a SecurityGroup - SecurityGroupPermission
   *
   * Requires groupId, permissionId, fromDate
   * Returns 
   */
  Future<OfResult> expireSecurityPermissionToSecurityGroup(SecurityGroupPermission ent, ) =>
      client.invoke('expireSecurityPermissionToSecurityGroup', ent, {  });

  /**
   * Expire UserLoginSecurityGroup - UserLoginSecurityGroup
   *
   * Requires userLoginId, groupId, fromDate
   * Returns 
   */
  Future<OfResult> expireUserLoginSecurityGroup(UserLoginSecurityGroup ent, ) =>
      client.invoke('expireUserLoginSecurityGroup', ent, {  });

  /**
   * Remove a Protected View from a SecurityGroup - ProtectedView
   *
   * Requires viewNameId, groupId
   * Returns 
   */
  Future<OfResult> removeProtectedViewFromSecurityGroup(ProtectedView ent, ) =>
      client.invoke('removeProtectedViewFromSecurityGroup', ent, {  });

  /**
   * Remove a SecurityPermission from a SecurityGroup - SecurityGroupPermission
   *
   * Requires groupId, permissionId, fromDate
   * Returns 
   */
  Future<OfResult> removeSecurityPermissionFromSecurityGroup(SecurityGroupPermission ent, ) =>
      client.invoke('removeSecurityPermissionFromSecurityGroup', ent, {  });

  /**
   * Remove UserLoginSecurityQuestion - UserLoginSecurityQuestion
   *
   * Requires questionEnumId, userLoginId
   * Returns 
   */
  Future<OfResult> removeUserLoginSecurityQuestion(UserLoginSecurityQuestion ent, ) =>
      client.invoke('removeUserLoginSecurityQuestion', ent, {  });

  /**
   * Remove a UserLogin to SecurityGroup Appl - UserLoginSecurityGroup
   *
   * Requires userLoginId, groupId, fromDate
   * Returns 
   */
  Future<OfResult> removeUserLoginToSecurityGroup(UserLoginSecurityGroup ent, ) =>
      client.invoke('removeUserLoginToSecurityGroup', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> securityPermissionCheck({String primaryPermission, String mainAction, String altPermission, String resourceDescription}) =>
      client.invoke('securityPermissionCheck', null, { 'primaryPermission': primaryPermission, 'mainAction': mainAction, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Update a Protected View to SecurityGroup Assignment - ProtectedView
   *
   * Requires viewNameId, groupId, maxHits, maxHitsDuration, tarpitDuration
   * Returns 
   */
  Future<OfResult> updateProtectedViewToSecurityGroup(ProtectedView ent, ) =>
      client.invoke('updateProtectedViewToSecurityGroup', ent, {  });

  /**
   * Update a SecurityGroup - SecurityGroup
   *
   * Requires groupId
   * Returns 
   */
  Future<OfResult> updateSecurityGroup(SecurityGroup ent, ) =>
      client.invoke('updateSecurityGroup', ent, {  });

  /**
   * Update a SecurityPermission - SecurityPermission
   *
   * Requires permissionId
   * Returns 
   */
  Future<OfResult> updateSecurityPermission(SecurityPermission ent, ) =>
      client.invoke('updateSecurityPermission', ent, {  });

  /**
   * Update a SecurityPermission from a SecurityGroup - SecurityGroupPermission
   *
   * Requires groupId, permissionId, fromDate
   * Returns 
   */
  Future<OfResult> updateSecurityPermissionToSecurityGroup(SecurityGroupPermission ent, ) =>
      client.invoke('updateSecurityPermissionToSecurityGroup', ent, {  });

  /**
   * Update a UserLoginSecurityQuestion - UserLoginSecurityQuestion
   *
   * Requires questionEnumId, userLoginId
   * Returns 
   */
  Future<OfResult> updateUserLoginSecurityQuestion(UserLoginSecurityQuestion ent, ) =>
      client.invoke('updateUserLoginSecurityQuestion', ent, {  });

  /**
   * Update a UserLogin to SecurityGroup Appl - UserLoginSecurityGroup
   *
   * Requires userLoginId, groupId, fromDate
   * Returns 
   */
  Future<OfResult> updateUserLoginToSecurityGroup(UserLoginSecurityGroup ent, ) =>
      client.invoke('updateUserLoginToSecurityGroup', ent, {  });

}