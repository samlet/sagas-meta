import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Container, Container
class Container extends EntityBase {

  /// this entity has only one pk
  final String facilityId;
  final String containerTypeId;
  final String description;
  final String containerId; // pk
  Container({entityId,
    this.facilityId, this.containerTypeId, this.description, @required this.containerId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Container { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'containerTypeId':containerTypeId, 'description':description, 'containerId':containerId};
  }

}

/// Entity ContainerAndGeoPoint, Container and Geo Point View
class ContainerAndGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final double elevation;
  final String dataSourceId;
  final String elevationUomId;
  final String geoPointTypeEnumId;
  final String latitude;
  final String description;
  final String information;
  final String containerId; // pk
  final String geoPointId; // pk
  final DateTime thruDate;
  final String longitude;
  ContainerAndGeoPoint({entityId,
    @required this.fromDate, this.elevation, this.dataSourceId, this.elevationUomId, this.geoPointTypeEnumId, this.latitude, this.description, this.information, @required this.containerId, @required this.geoPointId, this.thruDate, this.longitude,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContainerAndGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'elevation':elevation, 'dataSourceId':dataSourceId, 'elevationUomId':elevationUomId, 'geoPointTypeEnumId':geoPointTypeEnumId, 'latitude':latitude, 'description':description, 'information':information, 'containerId':containerId, 'geoPointId':geoPointId, 'thruDate':thruDate, 'longitude':longitude};
  }

}

/// Entity ContainerGeoPoint, Container Geo Location with history
class ContainerGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final String containerId; // pk
  final String geoPointId; // pk
  final DateTime thruDate;
  ContainerGeoPoint({entityId,
    @required this.fromDate, @required this.containerId, @required this.geoPointId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContainerGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'containerId':containerId, 'geoPointId':geoPointId, 'thruDate':thruDate};
  }

}

/// Entity ContainerType, Container Type
class ContainerType extends EntityBase {

  /// this entity has only one pk
  final String containerTypeId; // pk
  final String description;
  ContainerType({entityId,
    @required this.containerTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContainerType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'containerTypeId':containerTypeId, 'description':description};
  }

}

/// Entity Facility, Facility
class Facility extends EntityBase {

  /// this entity has only one pk
  final String facilityId; // pk
  final String defaultInventoryItemTypeId;
  final String parentFacilityId;
  final String description;
  final String defaultWeightUomId;
  final String primaryFacilityGroupId;
  final DateTime openedDate;
  final String ownerPartyId;
  final double facilitySize;
  final String facilitySizeUomId;
  final DateTime closedDate;
  final String facilityTypeId;
  final int defaultDaysToShip;
  final String defaultDimensionUomId;
  final String facilityName;
  final String productStoreId;
  final String geoPointId;
  final int oldSquareFootage;
  Facility({entityId,
    @required this.facilityId, this.defaultInventoryItemTypeId, this.parentFacilityId, this.description, this.defaultWeightUomId, this.primaryFacilityGroupId, this.openedDate, this.ownerPartyId, this.facilitySize, this.facilitySizeUomId, this.closedDate, this.facilityTypeId, this.defaultDaysToShip, this.defaultDimensionUomId, this.facilityName, this.productStoreId, this.geoPointId, this.oldSquareFootage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Facility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'defaultInventoryItemTypeId':defaultInventoryItemTypeId, 'parentFacilityId':parentFacilityId, 'description':description, 'defaultWeightUomId':defaultWeightUomId, 'primaryFacilityGroupId':primaryFacilityGroupId, 'openedDate':openedDate, 'ownerPartyId':ownerPartyId, 'facilitySize':facilitySize, 'facilitySizeUomId':facilitySizeUomId, 'closedDate':closedDate, 'facilityTypeId':facilityTypeId, 'defaultDaysToShip':defaultDaysToShip, 'defaultDimensionUomId':defaultDimensionUomId, 'facilityName':facilityName, 'productStoreId':productStoreId, 'geoPointId':geoPointId, 'oldSquareFootage':oldSquareFootage};
  }

}

/// Entity FacilityAndContactMech, Facility and Contact Mech View
class FacilityAndContactMech extends EntityBase {

  final String extension;
  final String parentFacilityId;
  final String description;
  final String contactMechTypeId;
  final String contactMechId; // pk
  final String primaryFacilityGroupId;
  final double facilitySize;
  final String infoString;
  final String facilitySizeUomId;
  final String facilityTypeId;
  final int defaultDaysToShip;
  final String defaultDimensionUomId;
  final String facilityName;
  final String productStoreId;
  final String facilityId; // pk
  final String comments;
  final String defaultInventoryItemTypeId;
  final String defaultWeightUomId;
  final DateTime thruDate;
  final DateTime openedDate;
  final DateTime fromDate; // pk
  final String ownerPartyId;
  final DateTime closedDate;
  final String geoPointId;
  final int oldSquareFootage;
  FacilityAndContactMech({entityId,
    this.extension, this.parentFacilityId, this.description, this.contactMechTypeId, @required this.contactMechId, this.primaryFacilityGroupId, this.facilitySize, this.infoString, this.facilitySizeUomId, this.facilityTypeId, this.defaultDaysToShip, this.defaultDimensionUomId, this.facilityName, this.productStoreId, @required this.facilityId, this.comments, this.defaultInventoryItemTypeId, this.defaultWeightUomId, this.thruDate, this.openedDate, @required this.fromDate, this.ownerPartyId, this.closedDate, this.geoPointId, this.oldSquareFootage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityAndContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'extension':extension, 'parentFacilityId':parentFacilityId, 'description':description, 'contactMechTypeId':contactMechTypeId, 'contactMechId':contactMechId, 'primaryFacilityGroupId':primaryFacilityGroupId, 'facilitySize':facilitySize, 'infoString':infoString, 'facilitySizeUomId':facilitySizeUomId, 'facilityTypeId':facilityTypeId, 'defaultDaysToShip':defaultDaysToShip, 'defaultDimensionUomId':defaultDimensionUomId, 'facilityName':facilityName, 'productStoreId':productStoreId, 'facilityId':facilityId, 'comments':comments, 'defaultInventoryItemTypeId':defaultInventoryItemTypeId, 'defaultWeightUomId':defaultWeightUomId, 'thruDate':thruDate, 'openedDate':openedDate, 'fromDate':fromDate, 'ownerPartyId':ownerPartyId, 'closedDate':closedDate, 'geoPointId':geoPointId, 'oldSquareFootage':oldSquareFootage};
  }

}

/// Entity FacilityAttribute, Facility Attribute
class FacilityAttribute extends EntityBase {

  final String facilityId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  FacilityAttribute({entityId,
    @required this.facilityId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity FacilityCalendar, Facility Calendar
class FacilityCalendar extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final String calendarId; // pk
  final String facilityCalendarTypeId; // pk
  final DateTime thruDate;
  FacilityCalendar({entityId,
    @required this.fromDate, @required this.facilityId, @required this.calendarId, @required this.facilityCalendarTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityCalendar { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'calendarId':calendarId, 'facilityCalendarTypeId':facilityCalendarTypeId, 'thruDate':thruDate};
  }

}

/// Entity FacilityCalendarType, Facility Calendar Type
class FacilityCalendarType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String facilityCalendarTypeId; // pk
  final String description;
  FacilityCalendarType({entityId,
    this.parentTypeId, @required this.facilityCalendarTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityCalendarType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'facilityCalendarTypeId':facilityCalendarTypeId, 'description':description};
  }

}

/// Entity FacilityCarrierShipment, Facility Role Type
class FacilityCarrierShipment extends EntityBase {

  final String roleTypeId; // pk
  final String facilityId; // pk
  final String partyId; // pk
  final String shipmentMethodTypeId; // pk
  FacilityCarrierShipment({entityId,
    @required this.roleTypeId, @required this.facilityId, @required this.partyId, @required this.shipmentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityCarrierShipment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'facilityId':facilityId, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId};
  }

}

/// Entity FacilityContactMech, Facility Contact Mechanism
class FacilityContactMech extends EntityBase {

  final DateTime fromDate; // pk
  final String extension;
  final String facilityId; // pk
  final String comments;
  final String contactMechId; // pk
  final DateTime thruDate;
  FacilityContactMech({entityId,
    @required this.fromDate, this.extension, @required this.facilityId, this.comments, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'extension':extension, 'facilityId':facilityId, 'comments':comments, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity FacilityContactMechPurpose, Facility Contact Mechanism Purpose
class FacilityContactMechPurpose extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final String contactMechPurposeTypeId; // pk
  final String contactMechId; // pk
  final DateTime thruDate;
  FacilityContactMechPurpose({entityId,
    @required this.fromDate, @required this.facilityId, @required this.contactMechPurposeTypeId, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityContactMechPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity FacilityContent, Facility Content
class FacilityContent extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final String contentId; // pk
  final DateTime thruDate;
  FacilityContent({entityId,
    @required this.fromDate, @required this.facilityId, @required this.contentId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'contentId':contentId, 'thruDate':thruDate};
  }

}

/// Entity FacilityContentDetail, Facility Content Detail View
class FacilityContentDetail extends EntityBase {

  final String ownerContentId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String dataResourceId;
  final String createdByUserLogin;
  final String facilityId; // pk
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String decoratorContentId;
  final int childBranchCount;
  FacilityContentDetail({entityId,
    this.ownerContentId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.dataResourceId, this.createdByUserLogin, @required this.facilityId, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.thruDate, this.contentName, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.decoratorContentId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityContentDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerContentId':ownerContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'facilityId':facilityId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'childBranchCount':childBranchCount};
  }

}

/// Entity FacilityGroup, Facility Group
class FacilityGroup extends EntityBase {

  /// this entity has only one pk
  final String primaryParentGroupId;
  final String facilityGroupTypeId;
  final String facilityGroupId; // pk
  final String description;
  final String facilityGroupName;
  FacilityGroup({entityId,
    this.primaryParentGroupId, this.facilityGroupTypeId, @required this.facilityGroupId, this.description, this.facilityGroupName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'primaryParentGroupId':primaryParentGroupId, 'facilityGroupTypeId':facilityGroupTypeId, 'facilityGroupId':facilityGroupId, 'description':description, 'facilityGroupName':facilityGroupName};
  }

}

/// Entity FacilityGroupMember, Facility Group
class FacilityGroupMember extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final int sequenceNum;
  final String facilityGroupId; // pk
  final DateTime thruDate;
  FacilityGroupMember({entityId,
    @required this.fromDate, @required this.facilityId, this.sequenceNum, @required this.facilityGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityGroupMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'sequenceNum':sequenceNum, 'facilityGroupId':facilityGroupId, 'thruDate':thruDate};
  }

}

/// Entity FacilityGroupRole, Facility Group Role
class FacilityGroupRole extends EntityBase {

  final String roleTypeId; // pk
  final String facilityGroupId; // pk
  final String partyId; // pk
  FacilityGroupRole({entityId,
    @required this.roleTypeId, @required this.facilityGroupId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityGroupRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'facilityGroupId':facilityGroupId, 'partyId':partyId};
  }

}

/// Entity FacilityGroupRollup, Facility Group Rollup
class FacilityGroupRollup extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String facilityGroupId; // pk
  final String parentFacilityGroupId; // pk
  final DateTime thruDate;
  FacilityGroupRollup({entityId,
    @required this.fromDate, this.sequenceNum, @required this.facilityGroupId, @required this.parentFacilityGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityGroupRollup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'facilityGroupId':facilityGroupId, 'parentFacilityGroupId':parentFacilityGroupId, 'thruDate':thruDate};
  }

}

/// Entity FacilityGroupType, Facility Group Type
class FacilityGroupType extends EntityBase {

  /// this entity has only one pk
  final String facilityGroupTypeId; // pk
  final String description;
  FacilityGroupType({entityId,
    @required this.facilityGroupTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityGroupTypeId':facilityGroupTypeId, 'description':description};
  }

}

/// Entity FacilityLocation, Facility Location
class FacilityLocation extends EntityBase {

  final String facilityId; // pk
  final String sectionId;
  final String aisleId;
  final String areaId;
  final String positionId;
  final String levelId;
  final String geoPointId;
  final String locationTypeEnumId;
  final String locationSeqId; // pk
  FacilityLocation({entityId,
    @required this.facilityId, this.sectionId, this.aisleId, this.areaId, this.positionId, this.levelId, this.geoPointId, this.locationTypeEnumId, @required this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityLocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'sectionId':sectionId, 'aisleId':aisleId, 'areaId':areaId, 'positionId':positionId, 'levelId':levelId, 'geoPointId':geoPointId, 'locationTypeEnumId':locationTypeEnumId, 'locationSeqId':locationSeqId};
  }

}

/// Entity FacilityLocationAndGeoPoint, Facility Location and Geo Point View
class FacilityLocationAndGeoPoint extends EntityBase {

  final double elevation;
  final String facilityId; // pk
  final String geoPointTypeEnumId;
  final String latitude;
  final String description;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String dataSourceId;
  final String elevationUomId;
  final String information;
  final String geoPointId; // pk
  final String locationSeqId; // pk
  final String longitude;
  FacilityLocationAndGeoPoint({entityId,
    this.elevation, @required this.facilityId, this.geoPointTypeEnumId, this.latitude, this.description, this.thruDate, @required this.fromDate, this.dataSourceId, this.elevationUomId, this.information, @required this.geoPointId, @required this.locationSeqId, this.longitude,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityLocationAndGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'elevation':elevation, 'facilityId':facilityId, 'geoPointTypeEnumId':geoPointTypeEnumId, 'latitude':latitude, 'description':description, 'thruDate':thruDate, 'fromDate':fromDate, 'dataSourceId':dataSourceId, 'elevationUomId':elevationUomId, 'information':information, 'geoPointId':geoPointId, 'locationSeqId':locationSeqId, 'longitude':longitude};
  }

}

/// Entity FacilityLocationGeoPoint, Facility Location Geo Location with history
class FacilityLocationGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final String geoPointId; // pk
  final String locationSeqId; // pk
  final DateTime thruDate;
  FacilityLocationGeoPoint({entityId,
    @required this.fromDate, @required this.facilityId, @required this.geoPointId, @required this.locationSeqId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityLocationGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'geoPointId':geoPointId, 'locationSeqId':locationSeqId, 'thruDate':thruDate};
  }

}

/// Entity FacilityParty, Facility Party
class FacilityParty extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String facilityId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  FacilityParty({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.facilityId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity FacilityType, Facility Type
class FacilityType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String facilityTypeId; // pk
  final String description;
  FacilityType({entityId,
    this.parentTypeId, this.hasTable, @required this.facilityTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'facilityTypeId':facilityTypeId, 'description':description};
  }

}

/// Entity FacilityTypeAttr, Facility Type Attribute
class FacilityTypeAttr extends EntityBase {

  final String facilityTypeId; // pk
  final String description;
  final String attrName; // pk
  FacilityTypeAttr({entityId,
    @required this.facilityTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FacilityTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityTypeId':facilityTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity ProductFacility, Product Facility
class ProductFacility extends EntityBase {

  final double lastInventoryCount;
  final String facilityId; // pk
  final String productId; // pk
  final double minimumStock;
  final double reorderQuantity;
  final String requirementMethodEnumId;
  final int daysToShip;
  ProductFacility({entityId,
    this.lastInventoryCount, @required this.facilityId, @required this.productId, this.minimumStock, this.reorderQuantity, this.requirementMethodEnumId, this.daysToShip,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFacility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastInventoryCount':lastInventoryCount, 'facilityId':facilityId, 'productId':productId, 'minimumStock':minimumStock, 'reorderQuantity':reorderQuantity, 'requirementMethodEnumId':requirementMethodEnumId, 'daysToShip':daysToShip};
  }

}

/// Entity ProductFacilityAndPostalAddress, Product Facility And Contactmech And Postal Address View Entity, to be able to list products by geographic location
class ProductFacilityAndPostalAddress extends EntityBase {

  final String houseNumberExt;
  final String extension;
  final String city;
  final String postalCode;
  final String postalCodeGeoId;
  final int houseNumber;
  final double reorderQuantity;
  final String contactMechTypeId;
  final String postalCodeExt;
  final String contactMechId; // pk
  final double lastInventoryCount;
  final String attnName;
  final String infoString;
  final String countyGeoId;
  final String toName;
  final String cityGeoId;
  final double minimumStock;
  final int daysToShip;
  final String countryGeoId;
  final String facilityId; // pk
  final String comments;
  final String productId; // pk
  final String address2;
  final String address1;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String directions;
  final String municipalityGeoId;
  final String stateProvinceGeoId;
  final String requirementMethodEnumId;
  final String geoPointId;
  ProductFacilityAndPostalAddress({entityId,
    this.houseNumberExt, this.extension, this.city, this.postalCode, this.postalCodeGeoId, this.houseNumber, this.reorderQuantity, this.contactMechTypeId, this.postalCodeExt, @required this.contactMechId, this.lastInventoryCount, this.attnName, this.infoString, this.countyGeoId, this.toName, this.cityGeoId, this.minimumStock, this.daysToShip, this.countryGeoId, @required this.facilityId, this.comments, @required this.productId, this.address2, this.address1, this.thruDate, @required this.fromDate, this.directions, this.municipalityGeoId, this.stateProvinceGeoId, this.requirementMethodEnumId, this.geoPointId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFacilityAndPostalAddress { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'houseNumberExt':houseNumberExt, 'extension':extension, 'city':city, 'postalCode':postalCode, 'postalCodeGeoId':postalCodeGeoId, 'houseNumber':houseNumber, 'reorderQuantity':reorderQuantity, 'contactMechTypeId':contactMechTypeId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'lastInventoryCount':lastInventoryCount, 'attnName':attnName, 'infoString':infoString, 'countyGeoId':countyGeoId, 'toName':toName, 'cityGeoId':cityGeoId, 'minimumStock':minimumStock, 'daysToShip':daysToShip, 'countryGeoId':countryGeoId, 'facilityId':facilityId, 'comments':comments, 'productId':productId, 'address2':address2, 'address1':address1, 'thruDate':thruDate, 'fromDate':fromDate, 'directions':directions, 'municipalityGeoId':municipalityGeoId, 'stateProvinceGeoId':stateProvinceGeoId, 'requirementMethodEnumId':requirementMethodEnumId, 'geoPointId':geoPointId};
  }

}

/// Entity ProductFacilityLocation, Product Facility
class ProductFacilityLocation extends EntityBase {

  final String facilityId; // pk
  final String productId; // pk
  final double moveQuantity;
  final double minimumStock;
  final String locationSeqId; // pk
  ProductFacilityLocation({entityId,
    @required this.facilityId, @required this.productId, this.moveQuantity, this.minimumStock, @required this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFacilityLocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'productId':productId, 'moveQuantity':moveQuantity, 'minimumStock':minimumStock, 'locationSeqId':locationSeqId};
  }

}

/// Entity ProductFacilityLocationQuantityTest, ProductFacilityLocation Quantity Test View
class ProductFacilityLocationQuantityTest extends EntityBase {

  final String facilityId; // pk
  final String productId; // pk
  final double moveQuantity;
  final double quantityOnHandTotal;
  final double minimumStock;
  final double availableToPromiseTotal;
  final String locationTypeEnumId;
  final String locationSeqId; // pk
  ProductFacilityLocationQuantityTest({entityId,
    @required this.facilityId, @required this.productId, this.moveQuantity, this.quantityOnHandTotal, this.minimumStock, this.availableToPromiseTotal, this.locationTypeEnumId, @required this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFacilityLocationQuantityTest { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'productId':productId, 'moveQuantity':moveQuantity, 'quantityOnHandTotal':quantityOnHandTotal, 'minimumStock':minimumStock, 'availableToPromiseTotal':availableToPromiseTotal, 'locationTypeEnumId':locationTypeEnumId, 'locationSeqId':locationSeqId};
  }

}

/// Entity ProductFacilityLocationView, ProductFacilityLocation And FacilityLocation View
class ProductFacilityLocationView extends EntityBase {

  final String facilityId; // pk
  final String areaId;
  final String productId; // pk
  final String positionId;
  final double moveQuantity;
  final String levelId;
  final double minimumStock;
  final String sectionId;
  final String geoPointId;
  final String locationTypeEnumId;
  final String locationSeqId; // pk
  final String aisleId;
  ProductFacilityLocationView({entityId,
    @required this.facilityId, this.areaId, @required this.productId, this.positionId, this.moveQuantity, this.levelId, this.minimumStock, this.sectionId, this.geoPointId, this.locationTypeEnumId, @required this.locationSeqId, this.aisleId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFacilityLocationView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'areaId':areaId, 'productId':productId, 'positionId':positionId, 'moveQuantity':moveQuantity, 'levelId':levelId, 'minimumStock':minimumStock, 'sectionId':sectionId, 'geoPointId':geoPointId, 'locationTypeEnumId':locationTypeEnumId, 'locationSeqId':locationSeqId, 'aisleId':aisleId};
  }

}