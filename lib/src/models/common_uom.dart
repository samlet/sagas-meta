import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Uom, Unit Of Measure
class Uom extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String uomId; // pk
  final String abbreviation;
  final String uomTypeId;
  final int numericCode;
  Uom({entityId,
    this.description, @required this.uomId, this.abbreviation, this.uomTypeId, this.numericCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Uom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'uomId':uomId, 'abbreviation':abbreviation, 'uomTypeId':uomTypeId, 'numericCode':numericCode};
  }

}

/// Entity UomAndGroup, Unit Of Measure and Group/Type View
class UomAndGroup extends EntityBase {

  final String uomGroupId; // pk
  final String typeParentTypeId;
  final String description;
  final String uomId; // pk
  final String typeHasTable;
  final String typeDescription;
  final String typeUomTypeId; // pk
  final String abbreviation;
  final String uomTypeId;
  final int numericCode;
  UomAndGroup({entityId,
    @required this.uomGroupId, this.typeParentTypeId, this.description, @required this.uomId, this.typeHasTable, this.typeDescription, @required this.typeUomTypeId, this.abbreviation, this.uomTypeId, this.numericCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomAndGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'uomGroupId':uomGroupId, 'typeParentTypeId':typeParentTypeId, 'description':description, 'uomId':uomId, 'typeHasTable':typeHasTable, 'typeDescription':typeDescription, 'typeUomTypeId':typeUomTypeId, 'abbreviation':abbreviation, 'uomTypeId':uomTypeId, 'numericCode':numericCode};
  }

}

/// Entity UomAndType, Unit Of Measure and Type View
class UomAndType extends EntityBase {

  final String typeParentTypeId;
  final String description;
  final String uomId; // pk
  final String typeHasTable;
  final String typeDescription;
  final String typeUomTypeId; // pk
  final String abbreviation;
  final String uomTypeId;
  final int numericCode;
  UomAndType({entityId,
    this.typeParentTypeId, this.description, @required this.uomId, this.typeHasTable, this.typeDescription, @required this.typeUomTypeId, this.abbreviation, this.uomTypeId, this.numericCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'typeParentTypeId':typeParentTypeId, 'description':description, 'uomId':uomId, 'typeHasTable':typeHasTable, 'typeDescription':typeDescription, 'typeUomTypeId':typeUomTypeId, 'abbreviation':abbreviation, 'uomTypeId':uomTypeId, 'numericCode':numericCode};
  }

}

/// Entity UomConversion, Unit Of Measure Conversion Type
class UomConversion extends EntityBase {

  final String roundingMode;
  final double conversionFactor;
  final int decimalScale;
  final String uomId; // pk
  final String uomIdTo; // pk
  final String customMethodId;
  UomConversion({entityId,
    this.roundingMode, this.conversionFactor, this.decimalScale, @required this.uomId, @required this.uomIdTo, this.customMethodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomConversion { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roundingMode':roundingMode, 'conversionFactor':conversionFactor, 'decimalScale':decimalScale, 'uomId':uomId, 'uomIdTo':uomIdTo, 'customMethodId':customMethodId};
  }

}

/// Entity UomConversionDated, Unit Of Measure Conversion Entity for those Units of Measure whose conversion values change over time (ie, currencies)
class UomConversionDated extends EntityBase {

  final double conversionFactor;
  final int decimalScale;
  final String uomId; // pk
  final String uomIdTo; // pk
  final String customMethodId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String roundingMode;
  final String purposeEnumId;
  UomConversionDated({entityId,
    this.conversionFactor, this.decimalScale, @required this.uomId, @required this.uomIdTo, this.customMethodId, this.thruDate, @required this.fromDate, this.roundingMode, this.purposeEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomConversionDated { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'conversionFactor':conversionFactor, 'decimalScale':decimalScale, 'uomId':uomId, 'uomIdTo':uomIdTo, 'customMethodId':customMethodId, 'thruDate':thruDate, 'fromDate':fromDate, 'roundingMode':roundingMode, 'purposeEnumId':purposeEnumId};
  }

}

/// Entity UomGroup, Unit Of Measure Group
class UomGroup extends EntityBase {

  final String uomGroupId; // pk
  final String uomId; // pk
  UomGroup({entityId,
    @required this.uomGroupId, @required this.uomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'uomGroupId':uomGroupId, 'uomId':uomId};
  }

}

/// Entity UomType, Unit Of Measure Type
class UomType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String uomTypeId; // pk
  UomType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.uomTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UomType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'uomTypeId':uomTypeId};
  }

}