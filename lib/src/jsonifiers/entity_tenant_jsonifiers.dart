import 'package:sagas_meta/src/models/entity_tenant.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityTenantJsonifier{
  static Component extractComponent(dynamic json) {
    return Component(
        entityId: create_id_from('Component', ['componentName'], json),
        componentName: json['componentName'] as String,
        rootLocation: json['rootLocation'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Component overridesComponent(Map<String, dynamic> map) {
    return Component(
        entityId: create_id_from('Component', ['componentName'], map),
        componentName: map['componentName'],
        rootLocation: map['rootLocation'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Tenant extractTenant(dynamic json) {
    return Tenant(
        entityId: create_id_from('Tenant', ['tenantId'], json),
        tenantName: json['tenantName'] as String,
        tenantId: json['tenantId'] as String,
        initialPath: json['initialPath'] as String,
        disabled: json['disabled'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Tenant overridesTenant(Map<String, dynamic> map) {
    return Tenant(
        entityId: create_id_from('Tenant', ['tenantId'], map),
        tenantName: map['tenantName'],
        tenantId: map['tenantId'],
        initialPath: map['initialPath'],
        disabled: map['disabled'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TenantComponent extractTenantComponent(dynamic json) {
    return TenantComponent(
        entityId: create_id_from('TenantComponent', ['componentName', 'tenantId'], json),
        sequenceNum: json['sequenceNum'] as int,
        tenantId: json['tenantId'] as String,
        componentName: json['componentName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TenantComponent overridesTenantComponent(Map<String, dynamic> map) {
    return TenantComponent(
        entityId: create_id_from('TenantComponent', ['componentName', 'tenantId'], map),
        sequenceNum: map['sequenceNum'],
        tenantId: map['tenantId'],
        componentName: map['componentName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TenantDataSource extractTenantDataSource(dynamic json) {
    return TenantDataSource(
        entityId: create_id_from('TenantDataSource', ['tenantId', 'entityGroupName'], json),
        tenantId: json['tenantId'] as String,
        jdbcPassword: json['jdbcPassword'] as String,
        entityGroupName: json['entityGroupName'] as String,
        jdbcUri: json['jdbcUri'] as String,
        jdbcUsername: json['jdbcUsername'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TenantDataSource overridesTenantDataSource(Map<String, dynamic> map) {
    return TenantDataSource(
        entityId: create_id_from('TenantDataSource', ['tenantId', 'entityGroupName'], map),
        tenantId: map['tenantId'],
        jdbcPassword: map['jdbcPassword'],
        entityGroupName: map['entityGroupName'],
        jdbcUri: map['jdbcUri'],
        jdbcUsername: map['jdbcUsername'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TenantDomainName extractTenantDomainName(dynamic json) {
    return TenantDomainName(
        entityId: create_id_from('TenantDomainName', ['domainName'], json),
        domainName: json['domainName'] as String,
        tenantId: json['tenantId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TenantDomainName overridesTenantDomainName(Map<String, dynamic> map) {
    return TenantDomainName(
        entityId: create_id_from('TenantDomainName', ['domainName'], map),
        domainName: map['domainName'],
        tenantId: map['tenantId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TenantKeyEncryptingKey extractTenantKeyEncryptingKey(dynamic json) {
    return TenantKeyEncryptingKey(
        entityId: create_id_from('TenantKeyEncryptingKey', ['tenantId'], json),
        kekText: json['kekText'] as String,
        tenantId: json['tenantId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TenantKeyEncryptingKey overridesTenantKeyEncryptingKey(Map<String, dynamic> map) {
    return TenantKeyEncryptingKey(
        entityId: create_id_from('TenantKeyEncryptingKey', ['tenantId'], map),
        kekText: map['kekText'],
        tenantId: map['tenantId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}