import 'package:sagas_meta/src/models/product_facility.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductFacilityJsonifier{
  static Container extractContainer(dynamic json) {
    return Container(
        entityId: create_id_from('Container', ['containerId'], json),
        facilityId: json['facilityId'] as String,
        containerTypeId: json['containerTypeId'] as String,
        description: json['description'] as String,
        containerId: json['containerId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Container overridesContainer(Map<String, dynamic> map) {
    return Container(
        entityId: create_id_from('Container', ['containerId'], map),
        facilityId: map['facilityId'],
        containerTypeId: map['containerTypeId'],
        description: map['description'],
        containerId: map['containerId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContainerAndGeoPoint extractContainerAndGeoPoint(dynamic json) {
    return ContainerAndGeoPoint(
        entityId: create_id_from('ContainerAndGeoPoint', ['containerId', 'fromDate', 'geoPointId'], json),
        fromDate: check_dt(json['fromDate']),
        elevation: json['elevation'] as double,
        dataSourceId: json['dataSourceId'] as String,
        elevationUomId: json['elevationUomId'] as String,
        geoPointTypeEnumId: json['geoPointTypeEnumId'] as String,
        latitude: json['latitude'] as String,
        description: json['description'] as String,
        information: json['information'] as String,
        containerId: json['containerId'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        longitude: json['longitude'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContainerAndGeoPoint overridesContainerAndGeoPoint(Map<String, dynamic> map) {
    return ContainerAndGeoPoint(
        entityId: create_id_from('ContainerAndGeoPoint', ['containerId', 'fromDate', 'geoPointId'], map),
        fromDate: map['fromDate'],
        elevation: map['elevation'],
        dataSourceId: map['dataSourceId'],
        elevationUomId: map['elevationUomId'],
        geoPointTypeEnumId: map['geoPointTypeEnumId'],
        latitude: map['latitude'],
        description: map['description'],
        information: map['information'],
        containerId: map['containerId'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        longitude: map['longitude'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContainerGeoPoint extractContainerGeoPoint(dynamic json) {
    return ContainerGeoPoint(
        entityId: create_id_from('ContainerGeoPoint', ['containerId', 'geoPointId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        containerId: json['containerId'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContainerGeoPoint overridesContainerGeoPoint(Map<String, dynamic> map) {
    return ContainerGeoPoint(
        entityId: create_id_from('ContainerGeoPoint', ['containerId', 'geoPointId', 'fromDate'], map),
        fromDate: map['fromDate'],
        containerId: map['containerId'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContainerType extractContainerType(dynamic json) {
    return ContainerType(
        entityId: create_id_from('ContainerType', ['containerTypeId'], json),
        containerTypeId: json['containerTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContainerType overridesContainerType(Map<String, dynamic> map) {
    return ContainerType(
        entityId: create_id_from('ContainerType', ['containerTypeId'], map),
        containerTypeId: map['containerTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Facility extractFacility(dynamic json) {
    return Facility(
        entityId: create_id_from('Facility', ['facilityId'], json),
        facilityId: json['facilityId'] as String,
        defaultInventoryItemTypeId: json['defaultInventoryItemTypeId'] as String,
        parentFacilityId: json['parentFacilityId'] as String,
        description: json['description'] as String,
        defaultWeightUomId: json['defaultWeightUomId'] as String,
        primaryFacilityGroupId: json['primaryFacilityGroupId'] as String,
        openedDate: check_dt(json['openedDate']),
        ownerPartyId: json['ownerPartyId'] as String,
        facilitySize: json['facilitySize'] as double,
        facilitySizeUomId: json['facilitySizeUomId'] as String,
        closedDate: check_dt(json['closedDate']),
        facilityTypeId: json['facilityTypeId'] as String,
        defaultDaysToShip: json['defaultDaysToShip'] as int,
        defaultDimensionUomId: json['defaultDimensionUomId'] as String,
        facilityName: json['facilityName'] as String,
        productStoreId: json['productStoreId'] as String,
        geoPointId: json['geoPointId'] as String,
        oldSquareFootage: json['oldSquareFootage'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Facility overridesFacility(Map<String, dynamic> map) {
    return Facility(
        entityId: create_id_from('Facility', ['facilityId'], map),
        facilityId: map['facilityId'],
        defaultInventoryItemTypeId: map['defaultInventoryItemTypeId'],
        parentFacilityId: map['parentFacilityId'],
        description: map['description'],
        defaultWeightUomId: map['defaultWeightUomId'],
        primaryFacilityGroupId: map['primaryFacilityGroupId'],
        openedDate: map['openedDate'],
        ownerPartyId: map['ownerPartyId'],
        facilitySize: map['facilitySize'],
        facilitySizeUomId: map['facilitySizeUomId'],
        closedDate: map['closedDate'],
        facilityTypeId: map['facilityTypeId'],
        defaultDaysToShip: map['defaultDaysToShip'],
        defaultDimensionUomId: map['defaultDimensionUomId'],
        facilityName: map['facilityName'],
        productStoreId: map['productStoreId'],
        geoPointId: map['geoPointId'],
        oldSquareFootage: map['oldSquareFootage'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityAndContactMech extractFacilityAndContactMech(dynamic json) {
    return FacilityAndContactMech(
        entityId: create_id_from('FacilityAndContactMech', ['facilityId', 'fromDate', 'contactMechId'], json),
        extension: json['extension'] as String,
        parentFacilityId: json['parentFacilityId'] as String,
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        primaryFacilityGroupId: json['primaryFacilityGroupId'] as String,
        facilitySize: json['facilitySize'] as double,
        infoString: json['infoString'] as String,
        facilitySizeUomId: json['facilitySizeUomId'] as String,
        facilityTypeId: json['facilityTypeId'] as String,
        defaultDaysToShip: json['defaultDaysToShip'] as int,
        defaultDimensionUomId: json['defaultDimensionUomId'] as String,
        facilityName: json['facilityName'] as String,
        productStoreId: json['productStoreId'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        defaultInventoryItemTypeId: json['defaultInventoryItemTypeId'] as String,
        defaultWeightUomId: json['defaultWeightUomId'] as String,
        thruDate: check_dt(json['thruDate']),
        openedDate: check_dt(json['openedDate']),
        fromDate: check_dt(json['fromDate']),
        ownerPartyId: json['ownerPartyId'] as String,
        closedDate: check_dt(json['closedDate']),
        geoPointId: json['geoPointId'] as String,
        oldSquareFootage: json['oldSquareFootage'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityAndContactMech overridesFacilityAndContactMech(Map<String, dynamic> map) {
    return FacilityAndContactMech(
        entityId: create_id_from('FacilityAndContactMech', ['facilityId', 'fromDate', 'contactMechId'], map),
        extension: map['extension'],
        parentFacilityId: map['parentFacilityId'],
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        contactMechId: map['contactMechId'],
        primaryFacilityGroupId: map['primaryFacilityGroupId'],
        facilitySize: map['facilitySize'],
        infoString: map['infoString'],
        facilitySizeUomId: map['facilitySizeUomId'],
        facilityTypeId: map['facilityTypeId'],
        defaultDaysToShip: map['defaultDaysToShip'],
        defaultDimensionUomId: map['defaultDimensionUomId'],
        facilityName: map['facilityName'],
        productStoreId: map['productStoreId'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        defaultInventoryItemTypeId: map['defaultInventoryItemTypeId'],
        defaultWeightUomId: map['defaultWeightUomId'],
        thruDate: map['thruDate'],
        openedDate: map['openedDate'],
        fromDate: map['fromDate'],
        ownerPartyId: map['ownerPartyId'],
        closedDate: map['closedDate'],
        geoPointId: map['geoPointId'],
        oldSquareFootage: map['oldSquareFootage'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityAttribute extractFacilityAttribute(dynamic json) {
    return FacilityAttribute(
        entityId: create_id_from('FacilityAttribute', ['facilityId', 'attrName'], json),
        facilityId: json['facilityId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityAttribute overridesFacilityAttribute(Map<String, dynamic> map) {
    return FacilityAttribute(
        entityId: create_id_from('FacilityAttribute', ['facilityId', 'attrName'], map),
        facilityId: map['facilityId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityCalendar extractFacilityCalendar(dynamic json) {
    return FacilityCalendar(
        entityId: create_id_from('FacilityCalendar', ['facilityId', 'calendarId', 'facilityCalendarTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        calendarId: json['calendarId'] as String,
        facilityCalendarTypeId: json['facilityCalendarTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityCalendar overridesFacilityCalendar(Map<String, dynamic> map) {
    return FacilityCalendar(
        entityId: create_id_from('FacilityCalendar', ['facilityId', 'calendarId', 'facilityCalendarTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        calendarId: map['calendarId'],
        facilityCalendarTypeId: map['facilityCalendarTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityCalendarType extractFacilityCalendarType(dynamic json) {
    return FacilityCalendarType(
        entityId: create_id_from('FacilityCalendarType', ['facilityCalendarTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        facilityCalendarTypeId: json['facilityCalendarTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityCalendarType overridesFacilityCalendarType(Map<String, dynamic> map) {
    return FacilityCalendarType(
        entityId: create_id_from('FacilityCalendarType', ['facilityCalendarTypeId'], map),
        parentTypeId: map['parentTypeId'],
        facilityCalendarTypeId: map['facilityCalendarTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityCarrierShipment extractFacilityCarrierShipment(dynamic json) {
    return FacilityCarrierShipment(
        entityId: create_id_from('FacilityCarrierShipment', ['facilityId', 'partyId', 'roleTypeId', 'shipmentMethodTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        facilityId: json['facilityId'] as String,
        partyId: json['partyId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityCarrierShipment overridesFacilityCarrierShipment(Map<String, dynamic> map) {
    return FacilityCarrierShipment(
        entityId: create_id_from('FacilityCarrierShipment', ['facilityId', 'partyId', 'roleTypeId', 'shipmentMethodTypeId'], map),
        roleTypeId: map['roleTypeId'],
        facilityId: map['facilityId'],
        partyId: map['partyId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityContactMech extractFacilityContactMech(dynamic json) {
    return FacilityContactMech(
        entityId: create_id_from('FacilityContactMech', ['facilityId', 'contactMechId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        extension: json['extension'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityContactMech overridesFacilityContactMech(Map<String, dynamic> map) {
    return FacilityContactMech(
        entityId: create_id_from('FacilityContactMech', ['facilityId', 'contactMechId', 'fromDate'], map),
        fromDate: map['fromDate'],
        extension: map['extension'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityContactMechPurpose extractFacilityContactMechPurpose(dynamic json) {
    return FacilityContactMechPurpose(
        entityId: create_id_from('FacilityContactMechPurpose', ['facilityId', 'contactMechId', 'contactMechPurposeTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        contactMechPurposeTypeId: json['contactMechPurposeTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityContactMechPurpose overridesFacilityContactMechPurpose(Map<String, dynamic> map) {
    return FacilityContactMechPurpose(
        entityId: create_id_from('FacilityContactMechPurpose', ['facilityId', 'contactMechId', 'contactMechPurposeTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        contactMechPurposeTypeId: map['contactMechPurposeTypeId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityContent extractFacilityContent(dynamic json) {
    return FacilityContent(
        entityId: create_id_from('FacilityContent', ['facilityId', 'contentId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        contentId: json['contentId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityContent overridesFacilityContent(Map<String, dynamic> map) {
    return FacilityContent(
        entityId: create_id_from('FacilityContent', ['facilityId', 'contentId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        contentId: map['contentId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityContentDetail extractFacilityContentDetail(dynamic json) {
    return FacilityContentDetail(
        entityId: create_id_from('FacilityContentDetail', ['fromDate', 'facilityId', 'contentId'], json),
        ownerContentId: json['ownerContentId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataResourceId: json['dataResourceId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        facilityId: json['facilityId'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        fromDate: check_dt(json['fromDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityContentDetail overridesFacilityContentDetail(Map<String, dynamic> map) {
    return FacilityContentDetail(
        entityId: create_id_from('FacilityContentDetail', ['fromDate', 'facilityId', 'contentId'], map),
        ownerContentId: map['ownerContentId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataResourceId: map['dataResourceId'],
        createdByUserLogin: map['createdByUserLogin'],
        facilityId: map['facilityId'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        fromDate: map['fromDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        decoratorContentId: map['decoratorContentId'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityGroup extractFacilityGroup(dynamic json) {
    return FacilityGroup(
        entityId: create_id_from('FacilityGroup', ['facilityGroupId'], json),
        primaryParentGroupId: json['primaryParentGroupId'] as String,
        facilityGroupTypeId: json['facilityGroupTypeId'] as String,
        facilityGroupId: json['facilityGroupId'] as String,
        description: json['description'] as String,
        facilityGroupName: json['facilityGroupName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityGroup overridesFacilityGroup(Map<String, dynamic> map) {
    return FacilityGroup(
        entityId: create_id_from('FacilityGroup', ['facilityGroupId'], map),
        primaryParentGroupId: map['primaryParentGroupId'],
        facilityGroupTypeId: map['facilityGroupTypeId'],
        facilityGroupId: map['facilityGroupId'],
        description: map['description'],
        facilityGroupName: map['facilityGroupName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityGroupMember extractFacilityGroupMember(dynamic json) {
    return FacilityGroupMember(
        entityId: create_id_from('FacilityGroupMember', ['facilityId', 'facilityGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        facilityGroupId: json['facilityGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityGroupMember overridesFacilityGroupMember(Map<String, dynamic> map) {
    return FacilityGroupMember(
        entityId: create_id_from('FacilityGroupMember', ['facilityId', 'facilityGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        sequenceNum: map['sequenceNum'],
        facilityGroupId: map['facilityGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityGroupRole extractFacilityGroupRole(dynamic json) {
    return FacilityGroupRole(
        entityId: create_id_from('FacilityGroupRole', ['facilityGroupId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        facilityGroupId: json['facilityGroupId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityGroupRole overridesFacilityGroupRole(Map<String, dynamic> map) {
    return FacilityGroupRole(
        entityId: create_id_from('FacilityGroupRole', ['facilityGroupId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        facilityGroupId: map['facilityGroupId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityGroupRollup extractFacilityGroupRollup(dynamic json) {
    return FacilityGroupRollup(
        entityId: create_id_from('FacilityGroupRollup', ['facilityGroupId', 'parentFacilityGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        facilityGroupId: json['facilityGroupId'] as String,
        parentFacilityGroupId: json['parentFacilityGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityGroupRollup overridesFacilityGroupRollup(Map<String, dynamic> map) {
    return FacilityGroupRollup(
        entityId: create_id_from('FacilityGroupRollup', ['facilityGroupId', 'parentFacilityGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        facilityGroupId: map['facilityGroupId'],
        parentFacilityGroupId: map['parentFacilityGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityGroupType extractFacilityGroupType(dynamic json) {
    return FacilityGroupType(
        entityId: create_id_from('FacilityGroupType', ['facilityGroupTypeId'], json),
        facilityGroupTypeId: json['facilityGroupTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityGroupType overridesFacilityGroupType(Map<String, dynamic> map) {
    return FacilityGroupType(
        entityId: create_id_from('FacilityGroupType', ['facilityGroupTypeId'], map),
        facilityGroupTypeId: map['facilityGroupTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityLocation extractFacilityLocation(dynamic json) {
    return FacilityLocation(
        entityId: create_id_from('FacilityLocation', ['facilityId', 'locationSeqId'], json),
        facilityId: json['facilityId'] as String,
        sectionId: json['sectionId'] as String,
        aisleId: json['aisleId'] as String,
        areaId: json['areaId'] as String,
        positionId: json['positionId'] as String,
        levelId: json['levelId'] as String,
        geoPointId: json['geoPointId'] as String,
        locationTypeEnumId: json['locationTypeEnumId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityLocation overridesFacilityLocation(Map<String, dynamic> map) {
    return FacilityLocation(
        entityId: create_id_from('FacilityLocation', ['facilityId', 'locationSeqId'], map),
        facilityId: map['facilityId'],
        sectionId: map['sectionId'],
        aisleId: map['aisleId'],
        areaId: map['areaId'],
        positionId: map['positionId'],
        levelId: map['levelId'],
        geoPointId: map['geoPointId'],
        locationTypeEnumId: map['locationTypeEnumId'],
        locationSeqId: map['locationSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityLocationAndGeoPoint extractFacilityLocationAndGeoPoint(dynamic json) {
    return FacilityLocationAndGeoPoint(
        entityId: create_id_from('FacilityLocationAndGeoPoint', ['facilityId', 'locationSeqId', 'fromDate', 'geoPointId'], json),
        elevation: json['elevation'] as double,
        facilityId: json['facilityId'] as String,
        geoPointTypeEnumId: json['geoPointTypeEnumId'] as String,
        latitude: json['latitude'] as String,
        description: json['description'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        dataSourceId: json['dataSourceId'] as String,
        elevationUomId: json['elevationUomId'] as String,
        information: json['information'] as String,
        geoPointId: json['geoPointId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        longitude: json['longitude'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityLocationAndGeoPoint overridesFacilityLocationAndGeoPoint(Map<String, dynamic> map) {
    return FacilityLocationAndGeoPoint(
        entityId: create_id_from('FacilityLocationAndGeoPoint', ['facilityId', 'locationSeqId', 'fromDate', 'geoPointId'], map),
        elevation: map['elevation'],
        facilityId: map['facilityId'],
        geoPointTypeEnumId: map['geoPointTypeEnumId'],
        latitude: map['latitude'],
        description: map['description'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        dataSourceId: map['dataSourceId'],
        elevationUomId: map['elevationUomId'],
        information: map['information'],
        geoPointId: map['geoPointId'],
        locationSeqId: map['locationSeqId'],
        longitude: map['longitude'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityLocationGeoPoint extractFacilityLocationGeoPoint(dynamic json) {
    return FacilityLocationGeoPoint(
        entityId: create_id_from('FacilityLocationGeoPoint', ['facilityId', 'locationSeqId', 'geoPointId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        geoPointId: json['geoPointId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityLocationGeoPoint overridesFacilityLocationGeoPoint(Map<String, dynamic> map) {
    return FacilityLocationGeoPoint(
        entityId: create_id_from('FacilityLocationGeoPoint', ['facilityId', 'locationSeqId', 'geoPointId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        geoPointId: map['geoPointId'],
        locationSeqId: map['locationSeqId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityParty extractFacilityParty(dynamic json) {
    return FacilityParty(
        entityId: create_id_from('FacilityParty', ['facilityId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        facilityId: json['facilityId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityParty overridesFacilityParty(Map<String, dynamic> map) {
    return FacilityParty(
        entityId: create_id_from('FacilityParty', ['facilityId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        facilityId: map['facilityId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityType extractFacilityType(dynamic json) {
    return FacilityType(
        entityId: create_id_from('FacilityType', ['facilityTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        facilityTypeId: json['facilityTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityType overridesFacilityType(Map<String, dynamic> map) {
    return FacilityType(
        entityId: create_id_from('FacilityType', ['facilityTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        facilityTypeId: map['facilityTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FacilityTypeAttr extractFacilityTypeAttr(dynamic json) {
    return FacilityTypeAttr(
        entityId: create_id_from('FacilityTypeAttr', ['facilityTypeId', 'attrName'], json),
        facilityTypeId: json['facilityTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FacilityTypeAttr overridesFacilityTypeAttr(Map<String, dynamic> map) {
    return FacilityTypeAttr(
        entityId: create_id_from('FacilityTypeAttr', ['facilityTypeId', 'attrName'], map),
        facilityTypeId: map['facilityTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFacility extractProductFacility(dynamic json) {
    return ProductFacility(
        entityId: create_id_from('ProductFacility', ['productId', 'facilityId'], json),
        lastInventoryCount: json['lastInventoryCount'] as double,
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        minimumStock: json['minimumStock'] as double,
        reorderQuantity: json['reorderQuantity'] as double,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        daysToShip: json['daysToShip'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFacility overridesProductFacility(Map<String, dynamic> map) {
    return ProductFacility(
        entityId: create_id_from('ProductFacility', ['productId', 'facilityId'], map),
        lastInventoryCount: map['lastInventoryCount'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        minimumStock: map['minimumStock'],
        reorderQuantity: map['reorderQuantity'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        daysToShip: map['daysToShip'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFacilityAndPostalAddress extractProductFacilityAndPostalAddress(dynamic json) {
    return ProductFacilityAndPostalAddress(
        entityId: create_id_from('ProductFacilityAndPostalAddress', ['facilityId', 'productId', 'fromDate', 'contactMechId'], json),
        houseNumberExt: json['houseNumberExt'] as String,
        extension: json['extension'] as String,
        city: json['city'] as String,
        postalCode: json['postalCode'] as String,
        postalCodeGeoId: json['postalCodeGeoId'] as String,
        houseNumber: json['houseNumber'] as int,
        reorderQuantity: json['reorderQuantity'] as double,
        contactMechTypeId: json['contactMechTypeId'] as String,
        postalCodeExt: json['postalCodeExt'] as String,
        contactMechId: json['contactMechId'] as String,
        lastInventoryCount: json['lastInventoryCount'] as double,
        attnName: json['attnName'] as String,
        infoString: json['infoString'] as String,
        countyGeoId: json['countyGeoId'] as String,
        toName: json['toName'] as String,
        cityGeoId: json['cityGeoId'] as String,
        minimumStock: json['minimumStock'] as double,
        daysToShip: json['daysToShip'] as int,
        countryGeoId: json['countryGeoId'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        productId: json['productId'] as String,
        address2: json['address2'] as String,
        address1: json['address1'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        directions: json['directions'] as String,
        municipalityGeoId: json['municipalityGeoId'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        geoPointId: json['geoPointId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFacilityAndPostalAddress overridesProductFacilityAndPostalAddress(Map<String, dynamic> map) {
    return ProductFacilityAndPostalAddress(
        entityId: create_id_from('ProductFacilityAndPostalAddress', ['facilityId', 'productId', 'fromDate', 'contactMechId'], map),
        houseNumberExt: map['houseNumberExt'],
        extension: map['extension'],
        city: map['city'],
        postalCode: map['postalCode'],
        postalCodeGeoId: map['postalCodeGeoId'],
        houseNumber: map['houseNumber'],
        reorderQuantity: map['reorderQuantity'],
        contactMechTypeId: map['contactMechTypeId'],
        postalCodeExt: map['postalCodeExt'],
        contactMechId: map['contactMechId'],
        lastInventoryCount: map['lastInventoryCount'],
        attnName: map['attnName'],
        infoString: map['infoString'],
        countyGeoId: map['countyGeoId'],
        toName: map['toName'],
        cityGeoId: map['cityGeoId'],
        minimumStock: map['minimumStock'],
        daysToShip: map['daysToShip'],
        countryGeoId: map['countryGeoId'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        productId: map['productId'],
        address2: map['address2'],
        address1: map['address1'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        directions: map['directions'],
        municipalityGeoId: map['municipalityGeoId'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        geoPointId: map['geoPointId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFacilityLocation extractProductFacilityLocation(dynamic json) {
    return ProductFacilityLocation(
        entityId: create_id_from('ProductFacilityLocation', ['productId', 'facilityId', 'locationSeqId'], json),
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        moveQuantity: json['moveQuantity'] as double,
        minimumStock: json['minimumStock'] as double,
        locationSeqId: json['locationSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFacilityLocation overridesProductFacilityLocation(Map<String, dynamic> map) {
    return ProductFacilityLocation(
        entityId: create_id_from('ProductFacilityLocation', ['productId', 'facilityId', 'locationSeqId'], map),
        facilityId: map['facilityId'],
        productId: map['productId'],
        moveQuantity: map['moveQuantity'],
        minimumStock: map['minimumStock'],
        locationSeqId: map['locationSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFacilityLocationQuantityTest extractProductFacilityLocationQuantityTest(dynamic json) {
    return ProductFacilityLocationQuantityTest(
        entityId: create_id_from('ProductFacilityLocationQuantityTest', ['productId', 'facilityId', 'locationSeqId'], json),
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        moveQuantity: json['moveQuantity'] as double,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        minimumStock: json['minimumStock'] as double,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        locationTypeEnumId: json['locationTypeEnumId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFacilityLocationQuantityTest overridesProductFacilityLocationQuantityTest(Map<String, dynamic> map) {
    return ProductFacilityLocationQuantityTest(
        entityId: create_id_from('ProductFacilityLocationQuantityTest', ['productId', 'facilityId', 'locationSeqId'], map),
        facilityId: map['facilityId'],
        productId: map['productId'],
        moveQuantity: map['moveQuantity'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        minimumStock: map['minimumStock'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        locationTypeEnumId: map['locationTypeEnumId'],
        locationSeqId: map['locationSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFacilityLocationView extractProductFacilityLocationView(dynamic json) {
    return ProductFacilityLocationView(
        entityId: create_id_from('ProductFacilityLocationView', ['facilityId', 'productId', 'locationSeqId'], json),
        facilityId: json['facilityId'] as String,
        areaId: json['areaId'] as String,
        productId: json['productId'] as String,
        positionId: json['positionId'] as String,
        moveQuantity: json['moveQuantity'] as double,
        levelId: json['levelId'] as String,
        minimumStock: json['minimumStock'] as double,
        sectionId: json['sectionId'] as String,
        geoPointId: json['geoPointId'] as String,
        locationTypeEnumId: json['locationTypeEnumId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        aisleId: json['aisleId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFacilityLocationView overridesProductFacilityLocationView(Map<String, dynamic> map) {
    return ProductFacilityLocationView(
        entityId: create_id_from('ProductFacilityLocationView', ['facilityId', 'productId', 'locationSeqId'], map),
        facilityId: map['facilityId'],
        areaId: map['areaId'],
        productId: map['productId'],
        positionId: map['positionId'],
        moveQuantity: map['moveQuantity'],
        levelId: map['levelId'],
        minimumStock: map['minimumStock'],
        sectionId: map['sectionId'],
        geoPointId: map['geoPointId'],
        locationTypeEnumId: map['locationTypeEnumId'],
        locationSeqId: map['locationSeqId'],
        aisleId: map['aisleId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}