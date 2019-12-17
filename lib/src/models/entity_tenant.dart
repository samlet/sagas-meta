import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Component, Component
class Component extends EntityBase {

  /// this entity has only one pk
  final String componentName; // pk
  final String rootLocation;
  Component({entityId,
    @required this.componentName, this.rootLocation,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Component { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'componentName':componentName, 'rootLocation':rootLocation};
  }

}

/// Entity Tenant, Tenant
class Tenant extends EntityBase {

  /// this entity has only one pk
  final String tenantName;
  final String tenantId; // pk
  final String initialPath;
  final String disabled;
  Tenant({entityId,
    this.tenantName, @required this.tenantId, this.initialPath, this.disabled,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Tenant { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'tenantName':tenantName, 'tenantId':tenantId, 'initialPath':initialPath, 'disabled':disabled};
  }

}

/// Entity TenantComponent, TenantComponent
class TenantComponent extends EntityBase {

  final int sequenceNum;
  final String tenantId; // pk
  final String componentName; // pk
  TenantComponent({entityId,
    this.sequenceNum, @required this.tenantId, @required this.componentName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TenantComponent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'tenantId':tenantId, 'componentName':componentName};
  }

}

/// Entity TenantDataSource, TenantDataSource
class TenantDataSource extends EntityBase {

  final String tenantId; // pk
  final String jdbcPassword;
  final String entityGroupName; // pk
  final String jdbcUri;
  final String jdbcUsername;
  TenantDataSource({entityId,
    @required this.tenantId, this.jdbcPassword, @required this.entityGroupName, this.jdbcUri, this.jdbcUsername,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TenantDataSource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'tenantId':tenantId, 'jdbcPassword':jdbcPassword, 'entityGroupName':entityGroupName, 'jdbcUri':jdbcUri, 'jdbcUsername':jdbcUsername};
  }

}

/// Entity TenantDomainName, Tenant and its Domain Name
class TenantDomainName extends EntityBase {

  /// this entity has only one pk
  final String domainName; // pk
  final String tenantId;
  TenantDomainName({entityId,
    @required this.domainName, this.tenantId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TenantDomainName { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'domainName':domainName, 'tenantId':tenantId};
  }

}

/// Entity TenantKeyEncryptingKey, TenantKeyEncryptingKey
class TenantKeyEncryptingKey extends EntityBase {

  /// this entity has only one pk
  final String kekText;
  final String tenantId; // pk
  TenantKeyEncryptingKey({entityId,
    this.kekText, @required this.tenantId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TenantKeyEncryptingKey { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'kekText':kekText, 'tenantId':tenantId};
  }

}