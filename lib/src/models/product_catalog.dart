import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProdCatalog, Catalog
class ProdCatalog extends EntityBase {

  /// this entity has only one pk
  final String headerLogo;
  final String styleSheet;
  final String templatePathPrefix;
  final String catalogName;
  final String useQuickAdd;
  final String contentPathPrefix;
  final String viewAllowPermReqd;
  final String prodCatalogId; // pk
  final String purchaseAllowPermReqd;
  ProdCatalog({entityId,
    this.headerLogo, this.styleSheet, this.templatePathPrefix, this.catalogName, this.useQuickAdd, this.contentPathPrefix, this.viewAllowPermReqd, @required this.prodCatalogId, this.purchaseAllowPermReqd,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdCatalog { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'headerLogo':headerLogo, 'styleSheet':styleSheet, 'templatePathPrefix':templatePathPrefix, 'catalogName':catalogName, 'useQuickAdd':useQuickAdd, 'contentPathPrefix':contentPathPrefix, 'viewAllowPermReqd':viewAllowPermReqd, 'prodCatalogId':prodCatalogId, 'purchaseAllowPermReqd':purchaseAllowPermReqd};
  }

}

/// Entity ProdCatalogCategory, Catalog Category Association
class ProdCatalogCategory extends EntityBase {

  final DateTime fromDate; // pk
  final String prodCatalogCategoryTypeId; // pk
  final String productCategoryId; // pk
  final int sequenceNum;
  final String prodCatalogId; // pk
  final DateTime thruDate;
  ProdCatalogCategory({entityId,
    @required this.fromDate, @required this.prodCatalogCategoryTypeId, @required this.productCategoryId, this.sequenceNum, @required this.prodCatalogId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdCatalogCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'prodCatalogCategoryTypeId':prodCatalogCategoryTypeId, 'productCategoryId':productCategoryId, 'sequenceNum':sequenceNum, 'prodCatalogId':prodCatalogId, 'thruDate':thruDate};
  }

}

/// Entity ProdCatalogCategoryType, Catalog Category Association Type
class ProdCatalogCategoryType extends EntityBase {

  /// this entity has only one pk
  final String prodCatalogCategoryTypeId; // pk
  final String parentTypeId;
  final String description;
  ProdCatalogCategoryType({entityId,
    @required this.prodCatalogCategoryTypeId, this.parentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdCatalogCategoryType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'prodCatalogCategoryTypeId':prodCatalogCategoryTypeId, 'parentTypeId':parentTypeId, 'description':description};
  }

}

/// Entity ProdCatalogInvFacility, Product Catalog Inventory Facility Applicability
class ProdCatalogInvFacility extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final int sequenceNum;
  final String prodCatalogId; // pk
  final DateTime thruDate;
  ProdCatalogInvFacility({entityId,
    @required this.fromDate, @required this.facilityId, this.sequenceNum, @required this.prodCatalogId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdCatalogInvFacility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'sequenceNum':sequenceNum, 'prodCatalogId':prodCatalogId, 'thruDate':thruDate};
  }

}

/// Entity ProdCatalogRole, ProdCatalog Role Association
class ProdCatalogRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final int sequenceNum;
  final String partyId; // pk
  final String prodCatalogId; // pk
  final DateTime thruDate;
  ProdCatalogRole({entityId,
    @required this.fromDate, @required this.roleTypeId, this.sequenceNum, @required this.partyId, @required this.prodCatalogId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdCatalogRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'sequenceNum':sequenceNum, 'partyId':partyId, 'prodCatalogId':prodCatalogId, 'thruDate':thruDate};
  }

}