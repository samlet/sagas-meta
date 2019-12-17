import 'package:sagas_meta/src/models/common_portal.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonPortalJsonifier{
  static PortalPage extractPortalPage(dynamic json) {
    return PortalPage(
        entityId: create_id_from('PortalPage', ['portalPageId'], json),
        portalPageId: json['portalPageId'] as String,
        originalPortalPageId: json['originalPortalPageId'] as String,
        parentPortalPageId: json['parentPortalPageId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        helpContentId: json['helpContentId'] as String,
        description: json['description'] as String,
        ownerUserLoginId: json['ownerUserLoginId'] as String,
        securityGroupId: json['securityGroupId'] as String,
        portalPageName: json['portalPageName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPage overridesPortalPage(Map<String, dynamic> map) {
    return PortalPage(
        entityId: create_id_from('PortalPage', ['portalPageId'], map),
        portalPageId: map['portalPageId'],
        originalPortalPageId: map['originalPortalPageId'],
        parentPortalPageId: map['parentPortalPageId'],
        sequenceNum: map['sequenceNum'],
        helpContentId: map['helpContentId'],
        description: map['description'],
        ownerUserLoginId: map['ownerUserLoginId'],
        securityGroupId: map['securityGroupId'],
        portalPageName: map['portalPageName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPageAndPortlet extractPortalPageAndPortlet(dynamic json) {
    return PortalPageAndPortlet(
        entityId: create_id_from('PortalPageAndPortlet', ['portalPageId', 'portletSeqId', 'portalPortletId'], json),
        portalPageId: json['portalPageId'] as String,
        originalPortalPageId: json['originalPortalPageId'] as String,
        portletSeqId: json['portletSeqId'] as String,
        parentPortalPageId: json['parentPortalPageId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        helpContentId: json['helpContentId'] as String,
        description: json['description'] as String,
        portalPortletId: json['portalPortletId'] as String,
        columnSeqId: json['columnSeqId'] as String,
        portletSequenceNum: json['portletSequenceNum'] as int,
        ownerUserLoginId: json['ownerUserLoginId'] as String,
        securityGroupId: json['securityGroupId'] as String,
        portalPageName: json['portalPageName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPageAndPortlet overridesPortalPageAndPortlet(Map<String, dynamic> map) {
    return PortalPageAndPortlet(
        entityId: create_id_from('PortalPageAndPortlet', ['portalPageId', 'portletSeqId', 'portalPortletId'], map),
        portalPageId: map['portalPageId'],
        originalPortalPageId: map['originalPortalPageId'],
        portletSeqId: map['portletSeqId'],
        parentPortalPageId: map['parentPortalPageId'],
        sequenceNum: map['sequenceNum'],
        helpContentId: map['helpContentId'],
        description: map['description'],
        portalPortletId: map['portalPortletId'],
        columnSeqId: map['columnSeqId'],
        portletSequenceNum: map['portletSequenceNum'],
        ownerUserLoginId: map['ownerUserLoginId'],
        securityGroupId: map['securityGroupId'],
        portalPageName: map['portalPageName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPageAndUserLogin extractPortalPageAndUserLogin(dynamic json) {
    return PortalPageAndUserLogin(
        entityId: create_id_from('PortalPageAndUserLogin', ['portalPageId', 'userLoginId', 'fromDate'], json),
        portalPageId: json['portalPageId'] as String,
        securityGroupId: json['securityGroupId'] as String,
        userLoginId: json['userLoginId'] as String,
        fromDate: check_dt(json['fromDate']),
        parentPortalPageId: json['parentPortalPageId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPageAndUserLogin overridesPortalPageAndUserLogin(Map<String, dynamic> map) {
    return PortalPageAndUserLogin(
        entityId: create_id_from('PortalPageAndUserLogin', ['portalPageId', 'userLoginId', 'fromDate'], map),
        portalPageId: map['portalPageId'],
        securityGroupId: map['securityGroupId'],
        userLoginId: map['userLoginId'],
        fromDate: map['fromDate'],
        parentPortalPageId: map['parentPortalPageId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPageColumn extractPortalPageColumn(dynamic json) {
    return PortalPageColumn(
        entityId: create_id_from('PortalPageColumn', ['portalPageId', 'columnSeqId'], json),
        portalPageId: json['portalPageId'] as String,
        columnWidthPixels: json['columnWidthPixels'] as int,
        columnWidthPercentage: json['columnWidthPercentage'] as int,
        columnSeqId: json['columnSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPageColumn overridesPortalPageColumn(Map<String, dynamic> map) {
    return PortalPageColumn(
        entityId: create_id_from('PortalPageColumn', ['portalPageId', 'columnSeqId'], map),
        portalPageId: map['portalPageId'],
        columnWidthPixels: map['columnWidthPixels'],
        columnWidthPercentage: map['columnWidthPercentage'],
        columnSeqId: map['columnSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPagePortlet extractPortalPagePortlet(dynamic json) {
    return PortalPagePortlet(
        entityId: create_id_from('PortalPagePortlet', ['portalPageId', 'portalPortletId', 'portletSeqId'], json),
        portalPageId: json['portalPageId'] as String,
        portletSeqId: json['portletSeqId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        portalPortletId: json['portalPortletId'] as String,
        columnSeqId: json['columnSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPagePortlet overridesPortalPagePortlet(Map<String, dynamic> map) {
    return PortalPagePortlet(
        entityId: create_id_from('PortalPagePortlet', ['portalPageId', 'portalPortletId', 'portletSeqId'], map),
        portalPageId: map['portalPageId'],
        portletSeqId: map['portletSeqId'],
        sequenceNum: map['sequenceNum'],
        portalPortletId: map['portalPortletId'],
        columnSeqId: map['columnSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPagePortletView extractPortalPagePortletView(dynamic json) {
    return PortalPagePortletView(
        entityId: create_id_from('PortalPagePortletView', ['portalPageId', 'portletSeqId', 'portalPortletId'], json),
        portalPageId: json['portalPageId'] as String,
        portletSeqId: json['portletSeqId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        portalPortletId: json['portalPortletId'] as String,
        columnSeqId: json['columnSeqId'] as String,
        screenName: json['screenName'] as String,
        screenshot: json['screenshot'] as String,
        securityServiceName: json['securityServiceName'] as String,
        portletName: json['portletName'] as String,
        screenLocation: json['screenLocation'] as String,
        editFormLocation: json['editFormLocation'] as String,
        securityMainAction: json['securityMainAction'] as String,
        editFormName: json['editFormName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPagePortletView overridesPortalPagePortletView(Map<String, dynamic> map) {
    return PortalPagePortletView(
        entityId: create_id_from('PortalPagePortletView', ['portalPageId', 'portletSeqId', 'portalPortletId'], map),
        portalPageId: map['portalPageId'],
        portletSeqId: map['portletSeqId'],
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        portalPortletId: map['portalPortletId'],
        columnSeqId: map['columnSeqId'],
        screenName: map['screenName'],
        screenshot: map['screenshot'],
        securityServiceName: map['securityServiceName'],
        portletName: map['portletName'],
        screenLocation: map['screenLocation'],
        editFormLocation: map['editFormLocation'],
        securityMainAction: map['securityMainAction'],
        editFormName: map['editFormName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortalPortlet extractPortalPortlet(dynamic json) {
    return PortalPortlet(
        entityId: create_id_from('PortalPortlet', ['portalPortletId'], json),
        description: json['description'] as String,
        portalPortletId: json['portalPortletId'] as String,
        screenName: json['screenName'] as String,
        screenshot: json['screenshot'] as String,
        securityServiceName: json['securityServiceName'] as String,
        portletName: json['portletName'] as String,
        screenLocation: json['screenLocation'] as String,
        editFormLocation: json['editFormLocation'] as String,
        securityMainAction: json['securityMainAction'] as String,
        editFormName: json['editFormName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortalPortlet overridesPortalPortlet(Map<String, dynamic> map) {
    return PortalPortlet(
        entityId: create_id_from('PortalPortlet', ['portalPortletId'], map),
        description: map['description'],
        portalPortletId: map['portalPortletId'],
        screenName: map['screenName'],
        screenshot: map['screenshot'],
        securityServiceName: map['securityServiceName'],
        portletName: map['portletName'],
        screenLocation: map['screenLocation'],
        editFormLocation: map['editFormLocation'],
        securityMainAction: map['securityMainAction'],
        editFormName: map['editFormName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortletAttribute extractPortletAttribute(dynamic json) {
    return PortletAttribute(
        entityId: create_id_from('PortletAttribute', ['portalPageId', 'portalPortletId', 'portletSeqId', 'attrName'], json),
        portalPageId: json['portalPageId'] as String,
        portletSeqId: json['portletSeqId'] as String,
        attrDescription: json['attrDescription'] as String,
        portalPortletId: json['portalPortletId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        attrType: json['attrType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortletAttribute overridesPortletAttribute(Map<String, dynamic> map) {
    return PortletAttribute(
        entityId: create_id_from('PortletAttribute', ['portalPageId', 'portalPortletId', 'portletSeqId', 'attrName'], map),
        portalPageId: map['portalPageId'],
        portletSeqId: map['portletSeqId'],
        attrDescription: map['attrDescription'],
        portalPortletId: map['portalPortletId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        attrType: map['attrType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortletCategory extractPortletCategory(dynamic json) {
    return PortletCategory(
        entityId: create_id_from('PortletCategory', ['portletCategoryId'], json),
        description: json['description'] as String,
        portletCategoryId: json['portletCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortletCategory overridesPortletCategory(Map<String, dynamic> map) {
    return PortletCategory(
        entityId: create_id_from('PortletCategory', ['portletCategoryId'], map),
        description: map['description'],
        portletCategoryId: map['portletCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PortletPortletCategory extractPortletPortletCategory(dynamic json) {
    return PortletPortletCategory(
        entityId: create_id_from('PortletPortletCategory', ['portalPortletId', 'portletCategoryId'], json),
        portalPortletId: json['portalPortletId'] as String,
        portletCategoryId: json['portletCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PortletPortletCategory overridesPortletPortletCategory(Map<String, dynamic> map) {
    return PortletPortletCategory(
        entityId: create_id_from('PortletPortletCategory', ['portalPortletId', 'portletCategoryId'], map),
        portalPortletId: map['portalPortletId'],
        portletCategoryId: map['portletCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}