import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProdFeaGrpAppAndProdFeaApp, ProductFeatureGroupAppl And ProductFeatureAppl View
class ProdFeaGrpAppAndProdFeaApp extends EntityBase {

  final DateTime fromDate; // pk
  final double amount;
  final String productId; // pk
  final int sequenceNum;
  final double recurringAmount;
  final DateTime groupFromDate; // pk
  final DateTime groupThruDate;
  final String productFeatureId; // pk
  final String productFeatureApplTypeId;
  final String productFeatureGroupId; // pk
  final DateTime thruDate;
  ProdFeaGrpAppAndProdFeaApp({entityId,
    @required this.fromDate, this.amount, @required this.productId, this.sequenceNum, this.recurringAmount, @required this.groupFromDate, this.groupThruDate, @required this.productFeatureId, this.productFeatureApplTypeId, @required this.productFeatureGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdFeaGrpAppAndProdFeaApp { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'amount':amount, 'productId':productId, 'sequenceNum':sequenceNum, 'recurringAmount':recurringAmount, 'groupFromDate':groupFromDate, 'groupThruDate':groupThruDate, 'productFeatureId':productFeatureId, 'productFeatureApplTypeId':productFeatureApplTypeId, 'productFeatureGroupId':productFeatureGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductFeature, Product Feature
class ProductFeature extends EntityBase {

  /// this entity has only one pk
  final String productFeatureTypeId;
  final String idCode;
  final String productFeatureId; // pk
  final double numberSpecified;
  final String productFeatureCategoryId;
  final String description;
  final String uomId;
  final int defaultSequenceNum;
  final double defaultAmount;
  final String abbrev;
  ProductFeature({entityId,
    this.productFeatureTypeId, this.idCode, @required this.productFeatureId, this.numberSpecified, this.productFeatureCategoryId, this.description, this.uomId, this.defaultSequenceNum, this.defaultAmount, this.abbrev,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeature { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureTypeId':productFeatureTypeId, 'idCode':idCode, 'productFeatureId':productFeatureId, 'numberSpecified':numberSpecified, 'productFeatureCategoryId':productFeatureCategoryId, 'description':description, 'uomId':uomId, 'defaultSequenceNum':defaultSequenceNum, 'defaultAmount':defaultAmount, 'abbrev':abbrev};
  }

}

/// Entity ProductFeatureAndAppl, ProductFeature And ProductFeatureAppl View
class ProductFeatureAndAppl extends EntityBase {

  final String productFeatureTypeId;
  final double amount;
  final String productId; // pk
  final int sequenceNum;
  final double recurringAmount;
  final String idCode;
  final String productFeatureId; // pk
  final double numberSpecified;
  final String productFeatureCategoryId;
  final String description;
  final String uomId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final int defaultSequenceNum;
  final double defaultAmount;
  final String productFeatureApplTypeId;
  final String abbrev;
  ProductFeatureAndAppl({entityId,
    this.productFeatureTypeId, this.amount, @required this.productId, this.sequenceNum, this.recurringAmount, this.idCode, @required this.productFeatureId, this.numberSpecified, this.productFeatureCategoryId, this.description, this.uomId, this.thruDate, @required this.fromDate, this.defaultSequenceNum, this.defaultAmount, this.productFeatureApplTypeId, this.abbrev,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureAndAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureTypeId':productFeatureTypeId, 'amount':amount, 'productId':productId, 'sequenceNum':sequenceNum, 'recurringAmount':recurringAmount, 'idCode':idCode, 'productFeatureId':productFeatureId, 'numberSpecified':numberSpecified, 'productFeatureCategoryId':productFeatureCategoryId, 'description':description, 'uomId':uomId, 'thruDate':thruDate, 'fromDate':fromDate, 'defaultSequenceNum':defaultSequenceNum, 'defaultAmount':defaultAmount, 'productFeatureApplTypeId':productFeatureApplTypeId, 'abbrev':abbrev};
  }

}

/// Entity ProductFeatureAppl, Product Feature Applicability
class ProductFeatureAppl extends EntityBase {

  final DateTime fromDate; // pk
  final double amount;
  final String productId; // pk
  final int sequenceNum;
  final double recurringAmount;
  final String productFeatureId; // pk
  final String productFeatureApplTypeId;
  final DateTime thruDate;
  ProductFeatureAppl({entityId,
    @required this.fromDate, this.amount, @required this.productId, this.sequenceNum, this.recurringAmount, @required this.productFeatureId, this.productFeatureApplTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'amount':amount, 'productId':productId, 'sequenceNum':sequenceNum, 'recurringAmount':recurringAmount, 'productFeatureId':productFeatureId, 'productFeatureApplTypeId':productFeatureApplTypeId, 'thruDate':thruDate};
  }

}

/// Entity ProductFeatureApplAttr, Product Feature Applicability Attribute
class ProductFeatureApplAttr extends EntityBase {

  final DateTime fromDate; // pk
  final String productId; // pk
  final String productFeatureId; // pk
  final String attrValue;
  final String attrName; // pk
  ProductFeatureApplAttr({entityId,
    @required this.fromDate, @required this.productId, @required this.productFeatureId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureApplAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productId':productId, 'productFeatureId':productFeatureId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity ProductFeatureApplType, Product Feature Applicability Type
class ProductFeatureApplType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String productFeatureApplTypeId; // pk
  final String description;
  ProductFeatureApplType({entityId,
    this.parentTypeId, this.hasTable, @required this.productFeatureApplTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureApplType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'productFeatureApplTypeId':productFeatureApplTypeId, 'description':description};
  }

}

/// Entity ProductFeatureCatGrpAppl, Product Category Feature Group Application
class ProductFeatureCatGrpAppl extends EntityBase {

  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String productFeatureGroupId; // pk
  final DateTime thruDate;
  ProductFeatureCatGrpAppl({entityId,
    @required this.fromDate, @required this.productCategoryId, @required this.productFeatureGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureCatGrpAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productCategoryId':productCategoryId, 'productFeatureGroupId':productFeatureGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductFeatureCategory, Product Feature Category
class ProductFeatureCategory extends EntityBase {

  /// this entity has only one pk
  final String productFeatureCategoryId; // pk
  final String description;
  final String parentCategoryId;
  ProductFeatureCategory({entityId,
    @required this.productFeatureCategoryId, this.description, this.parentCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureCategoryId':productFeatureCategoryId, 'description':description, 'parentCategoryId':parentCategoryId};
  }

}

/// Entity ProductFeatureCategoryAppl, Product Feature Category Application
class ProductFeatureCategoryAppl extends EntityBase {

  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String productFeatureCategoryId; // pk
  final DateTime thruDate;
  ProductFeatureCategoryAppl({entityId,
    @required this.fromDate, @required this.productCategoryId, @required this.productFeatureCategoryId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureCategoryAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productCategoryId':productCategoryId, 'productFeatureCategoryId':productFeatureCategoryId, 'thruDate':thruDate};
  }

}

/// Entity ProductFeatureDataResource, Product Feature Data Resource
class ProductFeatureDataResource extends EntityBase {

  final String dataResourceId; // pk
  final String productFeatureId; // pk
  ProductFeatureDataResource({entityId,
    @required this.dataResourceId, @required this.productFeatureId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataResourceId':dataResourceId, 'productFeatureId':productFeatureId};
  }

}

/// Entity ProductFeatureGroup, Product Feature Group
class ProductFeatureGroup extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String productFeatureGroupId; // pk
  ProductFeatureGroup({entityId,
    this.description, @required this.productFeatureGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'productFeatureGroupId':productFeatureGroupId};
  }

}

/// Entity ProductFeatureGroupAndAppl, Product Feature Group And Applicability View
class ProductFeatureGroupAndAppl extends EntityBase {

  final String productFeatureTypeId;
  final int sequenceNum;
  final String idCode;
  final String productFeatureId; // pk
  final double numberSpecified;
  final String productFeatureCategoryId;
  final String description;
  final String uomId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final int defaultSequenceNum;
  final double defaultAmount;
  final String abbrev;
  final String productFeatureGroupId; // pk
  ProductFeatureGroupAndAppl({entityId,
    this.productFeatureTypeId, this.sequenceNum, this.idCode, @required this.productFeatureId, this.numberSpecified, this.productFeatureCategoryId, this.description, this.uomId, this.thruDate, @required this.fromDate, this.defaultSequenceNum, this.defaultAmount, this.abbrev, @required this.productFeatureGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureGroupAndAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureTypeId':productFeatureTypeId, 'sequenceNum':sequenceNum, 'idCode':idCode, 'productFeatureId':productFeatureId, 'numberSpecified':numberSpecified, 'productFeatureCategoryId':productFeatureCategoryId, 'description':description, 'uomId':uomId, 'thruDate':thruDate, 'fromDate':fromDate, 'defaultSequenceNum':defaultSequenceNum, 'defaultAmount':defaultAmount, 'abbrev':abbrev, 'productFeatureGroupId':productFeatureGroupId};
  }

}

/// Entity ProductFeatureGroupAppl, Product Feature Group Applicability
class ProductFeatureGroupAppl extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String productFeatureId; // pk
  final String productFeatureGroupId; // pk
  final DateTime thruDate;
  ProductFeatureGroupAppl({entityId,
    @required this.fromDate, this.sequenceNum, @required this.productFeatureId, @required this.productFeatureGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureGroupAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'productFeatureId':productFeatureId, 'productFeatureGroupId':productFeatureGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductFeatureIactn, Product Feature Interaction
class ProductFeatureIactn extends EntityBase {

  final String productId;
  final String productFeatureIactnTypeId;
  final String productFeatureId; // pk
  final String productFeatureIdTo; // pk
  ProductFeatureIactn({entityId,
    this.productId, this.productFeatureIactnTypeId, @required this.productFeatureId, @required this.productFeatureIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureIactn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'productFeatureIactnTypeId':productFeatureIactnTypeId, 'productFeatureId':productFeatureId, 'productFeatureIdTo':productFeatureIdTo};
  }

}

/// Entity ProductFeatureIactnType, Product Feature Interaction Type
class ProductFeatureIactnType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String productFeatureIactnTypeId; // pk
  final String hasTable;
  final String description;
  ProductFeatureIactnType({entityId,
    this.parentTypeId, @required this.productFeatureIactnTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureIactnType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'productFeatureIactnTypeId':productFeatureIactnTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity ProductFeatureType, Product Feature Type
class ProductFeatureType extends EntityBase {

  /// this entity has only one pk
  final String productFeatureTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  ProductFeatureType({entityId,
    @required this.productFeatureTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeatureType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureTypeId':productFeatureTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}