import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity SegmentGroup, Segment Group
class SegmentGroup extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String segmentGroupId; // pk
  final String productStoreId;
  final String segmentGroupTypeId;
  SegmentGroup({entityId,
    this.description, @required this.segmentGroupId, this.productStoreId, this.segmentGroupTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'segmentGroupId':segmentGroupId, 'productStoreId':productStoreId, 'segmentGroupTypeId':segmentGroupTypeId};
  }

}

/// Entity SegmentGroupClassification, Segment Group Classification
class SegmentGroupClassification extends EntityBase {

  final String partyClassificationGroupId; // pk
  final String segmentGroupId; // pk
  SegmentGroupClassification({entityId,
    @required this.partyClassificationGroupId, @required this.segmentGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroupClassification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyClassificationGroupId':partyClassificationGroupId, 'segmentGroupId':segmentGroupId};
  }

}

/// Entity SegmentGroupGeo, Segment Group Geo
class SegmentGroupGeo extends EntityBase {

  final String geoId; // pk
  final String segmentGroupId; // pk
  SegmentGroupGeo({entityId,
    @required this.geoId, @required this.segmentGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroupGeo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoId':geoId, 'segmentGroupId':segmentGroupId};
  }

}

/// Entity SegmentGroupRole, Segment Group Role
class SegmentGroupRole extends EntityBase {

  final String roleTypeId; // pk
  final String segmentGroupId; // pk
  final String partyId; // pk
  SegmentGroupRole({entityId,
    @required this.roleTypeId, @required this.segmentGroupId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroupRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'segmentGroupId':segmentGroupId, 'partyId':partyId};
  }

}

/// Entity SegmentGroupType, Segment Group Type
class SegmentGroupType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String segmentGroupTypeId; // pk
  SegmentGroupType({entityId,
    this.description, @required this.segmentGroupTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'segmentGroupTypeId':segmentGroupTypeId};
  }

}

/// Entity SegmentGroupViewRelatedParties, SegmentGroupViewRelatedParties
class SegmentGroupViewRelatedParties extends EntityBase {

  final String sgrSegmentGroupId; // pk
  final DateTime pcThruDate;
  final String prPcPriorityTypeId;
  final DateTime prPcThruDate;
  final String prPcComments;
  final String prSgrStatusId;
  final String prSgrPositionTitle;
  final String prPcRoleTypeIdTo; // pk
  final String prSgrPartyIdTo; // pk
  final String prPcStatusId;
  final String prSgrRoleTypeIdTo; // pk
  final String prSgrRoleTypeIdFrom; // pk
  final String sgrToSegmentGroupId; // pk
  final String pcPartyId; // pk
  final String prPcSecurityGroupId;
  final String prSgrPartyIdFrom; // pk
  final String prSgrSecurityGroupId;
  final String sgcSegmentGroupId; // pk
  final String prSgrComments;
  final String prPcPartyRelationshipTypeId;
  final String sgrRoleTypeId; // pk
  final String sgrPartyId; // pk
  final String prSgrPermissionsEnumId;
  final String prPcPartyIdTo; // pk
  final String prPcPermissionsEnumId;
  final String prSgrPartyRelationshipTypeId;
  final String prPcRoleTypeIdFrom; // pk
  final String sgcPartyClassificationGroupId; // pk
  final String prSgrPriorityTypeId;
  final DateTime prSgrFromDate; // pk
  final String prPcPartyIdFrom; // pk
  final String sgrToRoleTypeId; // pk
  final DateTime pcFromDate; // pk
  final DateTime prPcFromDate; // pk
  final String pcPartyClassificationGroupId; // pk
  final String prPcPositionTitle;
  final String prPcRelationshipName;
  final String prSgrRelationshipName;
  final String sgrToPartyId; // pk
  final DateTime prSgrThruDate;
  SegmentGroupViewRelatedParties({entityId,
    @required this.sgrSegmentGroupId, this.pcThruDate, this.prPcPriorityTypeId, this.prPcThruDate, this.prPcComments, this.prSgrStatusId, this.prSgrPositionTitle, @required this.prPcRoleTypeIdTo, @required this.prSgrPartyIdTo, this.prPcStatusId, @required this.prSgrRoleTypeIdTo, @required this.prSgrRoleTypeIdFrom, @required this.sgrToSegmentGroupId, @required this.pcPartyId, this.prPcSecurityGroupId, @required this.prSgrPartyIdFrom, this.prSgrSecurityGroupId, @required this.sgcSegmentGroupId, this.prSgrComments, this.prPcPartyRelationshipTypeId, @required this.sgrRoleTypeId, @required this.sgrPartyId, this.prSgrPermissionsEnumId, @required this.prPcPartyIdTo, this.prPcPermissionsEnumId, this.prSgrPartyRelationshipTypeId, @required this.prPcRoleTypeIdFrom, @required this.sgcPartyClassificationGroupId, this.prSgrPriorityTypeId, @required this.prSgrFromDate, @required this.prPcPartyIdFrom, @required this.sgrToRoleTypeId, @required this.pcFromDate, @required this.prPcFromDate, @required this.pcPartyClassificationGroupId, this.prPcPositionTitle, this.prPcRelationshipName, this.prSgrRelationshipName, @required this.sgrToPartyId, this.prSgrThruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SegmentGroupViewRelatedParties { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sgrSegmentGroupId':sgrSegmentGroupId, 'pcThruDate':pcThruDate, 'prPcPriorityTypeId':prPcPriorityTypeId, 'prPcThruDate':prPcThruDate, 'prPcComments':prPcComments, 'prSgrStatusId':prSgrStatusId, 'prSgrPositionTitle':prSgrPositionTitle, 'prPcRoleTypeIdTo':prPcRoleTypeIdTo, 'prSgrPartyIdTo':prSgrPartyIdTo, 'prPcStatusId':prPcStatusId, 'prSgrRoleTypeIdTo':prSgrRoleTypeIdTo, 'prSgrRoleTypeIdFrom':prSgrRoleTypeIdFrom, 'sgrToSegmentGroupId':sgrToSegmentGroupId, 'pcPartyId':pcPartyId, 'prPcSecurityGroupId':prPcSecurityGroupId, 'prSgrPartyIdFrom':prSgrPartyIdFrom, 'prSgrSecurityGroupId':prSgrSecurityGroupId, 'sgcSegmentGroupId':sgcSegmentGroupId, 'prSgrComments':prSgrComments, 'prPcPartyRelationshipTypeId':prPcPartyRelationshipTypeId, 'sgrRoleTypeId':sgrRoleTypeId, 'sgrPartyId':sgrPartyId, 'prSgrPermissionsEnumId':prSgrPermissionsEnumId, 'prPcPartyIdTo':prPcPartyIdTo, 'prPcPermissionsEnumId':prPcPermissionsEnumId, 'prSgrPartyRelationshipTypeId':prSgrPartyRelationshipTypeId, 'prPcRoleTypeIdFrom':prPcRoleTypeIdFrom, 'sgcPartyClassificationGroupId':sgcPartyClassificationGroupId, 'prSgrPriorityTypeId':prSgrPriorityTypeId, 'prSgrFromDate':prSgrFromDate, 'prPcPartyIdFrom':prPcPartyIdFrom, 'sgrToRoleTypeId':sgrToRoleTypeId, 'pcFromDate':pcFromDate, 'prPcFromDate':prPcFromDate, 'pcPartyClassificationGroupId':pcPartyClassificationGroupId, 'prPcPositionTitle':prPcPositionTitle, 'prPcRelationshipName':prPcRelationshipName, 'prSgrRelationshipName':prSgrRelationshipName, 'sgrToPartyId':sgrToPartyId, 'prSgrThruDate':prSgrThruDate};
  }

}