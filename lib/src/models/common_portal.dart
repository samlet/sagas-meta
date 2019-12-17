import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity PortalPage, PortalPage
class PortalPage extends EntityBase {

  /// this entity has only one pk
  final String portalPageId; // pk
  final String originalPortalPageId;
  final String parentPortalPageId;
  final int sequenceNum;
  final String helpContentId;
  final String description;
  final String ownerUserLoginId;
  final String securityGroupId;
  final String portalPageName;
  PortalPage({entityId,
    @required this.portalPageId, this.originalPortalPageId, this.parentPortalPageId, this.sequenceNum, this.helpContentId, this.description, this.ownerUserLoginId, this.securityGroupId, this.portalPageName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'originalPortalPageId':originalPortalPageId, 'parentPortalPageId':parentPortalPageId, 'sequenceNum':sequenceNum, 'helpContentId':helpContentId, 'description':description, 'ownerUserLoginId':ownerUserLoginId, 'securityGroupId':securityGroupId, 'portalPageName':portalPageName};
  }

}

/// Entity PortalPageAndPortlet, View entity to have all Portal and Portlet information
class PortalPageAndPortlet extends EntityBase {

  final String portalPageId; // pk
  final String originalPortalPageId;
  final String portletSeqId; // pk
  final String parentPortalPageId;
  final int sequenceNum;
  final String helpContentId;
  final String description;
  final String portalPortletId; // pk
  final String columnSeqId;
  final int portletSequenceNum;
  final String ownerUserLoginId;
  final String securityGroupId;
  final String portalPageName;
  PortalPageAndPortlet({entityId,
    @required this.portalPageId, this.originalPortalPageId, @required this.portletSeqId, this.parentPortalPageId, this.sequenceNum, this.helpContentId, this.description, @required this.portalPortletId, this.columnSeqId, this.portletSequenceNum, this.ownerUserLoginId, this.securityGroupId, this.portalPageName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPageAndPortlet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'originalPortalPageId':originalPortalPageId, 'portletSeqId':portletSeqId, 'parentPortalPageId':parentPortalPageId, 'sequenceNum':sequenceNum, 'helpContentId':helpContentId, 'description':description, 'portalPortletId':portalPortletId, 'columnSeqId':columnSeqId, 'portletSequenceNum':portletSequenceNum, 'ownerUserLoginId':ownerUserLoginId, 'securityGroupId':securityGroupId, 'portalPageName':portalPageName};
  }

}

/// Entity PortalPageAndUserLogin, PortalPage accessible via security group to a userLogin
class PortalPageAndUserLogin extends EntityBase {

  final String portalPageId; // pk
  final String securityGroupId;
  final String userLoginId; // pk
  final DateTime fromDate; // pk
  final String parentPortalPageId;
  final DateTime thruDate;
  PortalPageAndUserLogin({entityId,
    @required this.portalPageId, this.securityGroupId, @required this.userLoginId, @required this.fromDate, this.parentPortalPageId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPageAndUserLogin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'securityGroupId':securityGroupId, 'userLoginId':userLoginId, 'fromDate':fromDate, 'parentPortalPageId':parentPortalPageId, 'thruDate':thruDate};
  }

}

/// Entity PortalPageColumn, Defines a Portal Page
class PortalPageColumn extends EntityBase {

  final String portalPageId; // pk
  final int columnWidthPixels;
  final int columnWidthPercentage;
  final String columnSeqId; // pk
  PortalPageColumn({entityId,
    @required this.portalPageId, this.columnWidthPixels, this.columnWidthPercentage, @required this.columnSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPageColumn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'columnWidthPixels':columnWidthPixels, 'columnWidthPercentage':columnWidthPercentage, 'columnSeqId':columnSeqId};
  }

}

/// Entity PortalPagePortlet, Defines Portlets included into Portal Pages
class PortalPagePortlet extends EntityBase {

  final String portalPageId; // pk
  final String portletSeqId; // pk
  final int sequenceNum;
  final String portalPortletId; // pk
  final String columnSeqId;
  PortalPagePortlet({entityId,
    @required this.portalPageId, @required this.portletSeqId, this.sequenceNum, @required this.portalPortletId, this.columnSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPagePortlet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'portletSeqId':portletSeqId, 'sequenceNum':sequenceNum, 'portalPortletId':portalPortletId, 'columnSeqId':columnSeqId};
  }

}

/// Entity PortalPagePortletView, View entity to have all Portlet information with portalPageId 
class PortalPagePortletView extends EntityBase {

  final String portalPageId; // pk
  final String portletSeqId; // pk
  final int sequenceNum;
  final String description;
  final String portalPortletId; // pk
  final String columnSeqId;
  final String screenName;
  final String screenshot;
  final String securityServiceName;
  final String portletName;
  final String screenLocation;
  final String editFormLocation;
  final String securityMainAction;
  final String editFormName;
  PortalPagePortletView({entityId,
    @required this.portalPageId, @required this.portletSeqId, this.sequenceNum, this.description, @required this.portalPortletId, this.columnSeqId, this.screenName, this.screenshot, this.securityServiceName, this.portletName, this.screenLocation, this.editFormLocation, this.securityMainAction, this.editFormName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPagePortletView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'portletSeqId':portletSeqId, 'sequenceNum':sequenceNum, 'description':description, 'portalPortletId':portalPortletId, 'columnSeqId':columnSeqId, 'screenName':screenName, 'screenshot':screenshot, 'securityServiceName':securityServiceName, 'portletName':portletName, 'screenLocation':screenLocation, 'editFormLocation':editFormLocation, 'securityMainAction':securityMainAction, 'editFormName':editFormName};
  }

}

/// Entity PortalPortlet, Defines a Portlet to be used in Portals
class PortalPortlet extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String portalPortletId; // pk
  final String screenName;
  final String screenshot;
  final String securityServiceName;
  final String portletName;
  final String screenLocation;
  final String editFormLocation;
  final String securityMainAction;
  final String editFormName;
  PortalPortlet({entityId,
    this.description, @required this.portalPortletId, this.screenName, this.screenshot, this.securityServiceName, this.portletName, this.screenLocation, this.editFormLocation, this.securityMainAction, this.editFormName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortalPortlet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'portalPortletId':portalPortletId, 'screenName':screenName, 'screenshot':screenshot, 'securityServiceName':securityServiceName, 'portletName':portletName, 'screenLocation':screenLocation, 'editFormLocation':editFormLocation, 'securityMainAction':securityMainAction, 'editFormName':editFormName};
  }

}

/// Entity PortletAttribute, Allows to set different attribute values for each instance of the same portlet
class PortletAttribute extends EntityBase {

  final String portalPageId; // pk
  final String portletSeqId; // pk
  final String attrDescription;
  final String portalPortletId; // pk
  final String attrValue;
  final String attrName; // pk
  final String attrType;
  PortletAttribute({entityId,
    @required this.portalPageId, @required this.portletSeqId, this.attrDescription, @required this.portalPortletId, this.attrValue, @required this.attrName, this.attrType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortletAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPageId':portalPageId, 'portletSeqId':portletSeqId, 'attrDescription':attrDescription, 'portalPortletId':portalPortletId, 'attrValue':attrValue, 'attrName':attrName, 'attrType':attrType};
  }

}

/// Entity PortletCategory, Portlet Category
class PortletCategory extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String portletCategoryId; // pk
  PortletCategory({entityId,
    this.description, @required this.portletCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortletCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'portletCategoryId':portletCategoryId};
  }

}

/// Entity PortletPortletCategory, Defines Portlets included into Categories
class PortletPortletCategory extends EntityBase {

  final String portalPortletId; // pk
  final String portletCategoryId; // pk
  PortletPortletCategory({entityId,
    @required this.portalPortletId, @required this.portletCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PortletPortletCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'portalPortletId':portalPortletId, 'portletCategoryId':portletCategoryId};
  }

}