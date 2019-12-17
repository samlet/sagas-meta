import 'package:sagas_meta/src/models/marketing_segment.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingSegmentJsonifier{
  static SegmentGroup extractSegmentGroup(dynamic json) {
    return SegmentGroup(
        entityId: create_id_from('SegmentGroup', ['segmentGroupId'], json),
        description: json['description'] as String,
        segmentGroupId: json['segmentGroupId'] as String,
        productStoreId: json['productStoreId'] as String,
        segmentGroupTypeId: json['segmentGroupTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroup overridesSegmentGroup(Map<String, dynamic> map) {
    return SegmentGroup(
        entityId: create_id_from('SegmentGroup', ['segmentGroupId'], map),
        description: map['description'],
        segmentGroupId: map['segmentGroupId'],
        productStoreId: map['productStoreId'],
        segmentGroupTypeId: map['segmentGroupTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SegmentGroupClassification extractSegmentGroupClassification(dynamic json) {
    return SegmentGroupClassification(
        entityId: create_id_from('SegmentGroupClassification', ['segmentGroupId', 'partyClassificationGroupId'], json),
        partyClassificationGroupId: json['partyClassificationGroupId'] as String,
        segmentGroupId: json['segmentGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroupClassification overridesSegmentGroupClassification(Map<String, dynamic> map) {
    return SegmentGroupClassification(
        entityId: create_id_from('SegmentGroupClassification', ['segmentGroupId', 'partyClassificationGroupId'], map),
        partyClassificationGroupId: map['partyClassificationGroupId'],
        segmentGroupId: map['segmentGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SegmentGroupGeo extractSegmentGroupGeo(dynamic json) {
    return SegmentGroupGeo(
        entityId: create_id_from('SegmentGroupGeo', ['segmentGroupId', 'geoId'], json),
        geoId: json['geoId'] as String,
        segmentGroupId: json['segmentGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroupGeo overridesSegmentGroupGeo(Map<String, dynamic> map) {
    return SegmentGroupGeo(
        entityId: create_id_from('SegmentGroupGeo', ['segmentGroupId', 'geoId'], map),
        geoId: map['geoId'],
        segmentGroupId: map['segmentGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SegmentGroupRole extractSegmentGroupRole(dynamic json) {
    return SegmentGroupRole(
        entityId: create_id_from('SegmentGroupRole', ['segmentGroupId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        segmentGroupId: json['segmentGroupId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroupRole overridesSegmentGroupRole(Map<String, dynamic> map) {
    return SegmentGroupRole(
        entityId: create_id_from('SegmentGroupRole', ['segmentGroupId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        segmentGroupId: map['segmentGroupId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SegmentGroupType extractSegmentGroupType(dynamic json) {
    return SegmentGroupType(
        entityId: create_id_from('SegmentGroupType', ['segmentGroupTypeId'], json),
        description: json['description'] as String,
        segmentGroupTypeId: json['segmentGroupTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroupType overridesSegmentGroupType(Map<String, dynamic> map) {
    return SegmentGroupType(
        entityId: create_id_from('SegmentGroupType', ['segmentGroupTypeId'], map),
        description: map['description'],
        segmentGroupTypeId: map['segmentGroupTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SegmentGroupViewRelatedParties extractSegmentGroupViewRelatedParties(dynamic json) {
    return SegmentGroupViewRelatedParties(
        entityId: create_id_from('SegmentGroupViewRelatedParties', ['sgrRoleTypeId', 'sgrSegmentGroupId', 'sgrPartyId', 'sgrToRoleTypeId', 'sgrToSegmentGroupId', 'sgrToPartyId', 'prSgrRoleTypeIdTo', 'prSgrPartyIdFrom', 'prSgrRoleTypeIdFrom', 'prSgrFromDate', 'prSgrPartyIdTo', 'sgcPartyClassificationGroupId', 'sgcSegmentGroupId', 'pcFromDate', 'pcPartyClassificationGroupId', 'pcPartyId', 'prPcRoleTypeIdTo', 'prPcPartyIdFrom', 'prPcRoleTypeIdFrom', 'prPcFromDate', 'prPcPartyIdTo'], json),
        sgrSegmentGroupId: json['sgrSegmentGroupId'] as String,
        pcThruDate: check_dt(json['pcThruDate']),
        prPcPriorityTypeId: json['prPcPriorityTypeId'] as String,
        prPcThruDate: check_dt(json['prPcThruDate']),
        prPcComments: json['prPcComments'] as String,
        prSgrStatusId: json['prSgrStatusId'] as String,
        prSgrPositionTitle: json['prSgrPositionTitle'] as String,
        prPcRoleTypeIdTo: json['prPcRoleTypeIdTo'] as String,
        prSgrPartyIdTo: json['prSgrPartyIdTo'] as String,
        prPcStatusId: json['prPcStatusId'] as String,
        prSgrRoleTypeIdTo: json['prSgrRoleTypeIdTo'] as String,
        prSgrRoleTypeIdFrom: json['prSgrRoleTypeIdFrom'] as String,
        sgrToSegmentGroupId: json['sgrToSegmentGroupId'] as String,
        pcPartyId: json['pcPartyId'] as String,
        prPcSecurityGroupId: json['prPcSecurityGroupId'] as String,
        prSgrPartyIdFrom: json['prSgrPartyIdFrom'] as String,
        prSgrSecurityGroupId: json['prSgrSecurityGroupId'] as String,
        sgcSegmentGroupId: json['sgcSegmentGroupId'] as String,
        prSgrComments: json['prSgrComments'] as String,
        prPcPartyRelationshipTypeId: json['prPcPartyRelationshipTypeId'] as String,
        sgrRoleTypeId: json['sgrRoleTypeId'] as String,
        sgrPartyId: json['sgrPartyId'] as String,
        prSgrPermissionsEnumId: json['prSgrPermissionsEnumId'] as String,
        prPcPartyIdTo: json['prPcPartyIdTo'] as String,
        prPcPermissionsEnumId: json['prPcPermissionsEnumId'] as String,
        prSgrPartyRelationshipTypeId: json['prSgrPartyRelationshipTypeId'] as String,
        prPcRoleTypeIdFrom: json['prPcRoleTypeIdFrom'] as String,
        sgcPartyClassificationGroupId: json['sgcPartyClassificationGroupId'] as String,
        prSgrPriorityTypeId: json['prSgrPriorityTypeId'] as String,
        prSgrFromDate: check_dt(json['prSgrFromDate']),
        prPcPartyIdFrom: json['prPcPartyIdFrom'] as String,
        sgrToRoleTypeId: json['sgrToRoleTypeId'] as String,
        pcFromDate: check_dt(json['pcFromDate']),
        prPcFromDate: check_dt(json['prPcFromDate']),
        pcPartyClassificationGroupId: json['pcPartyClassificationGroupId'] as String,
        prPcPositionTitle: json['prPcPositionTitle'] as String,
        prPcRelationshipName: json['prPcRelationshipName'] as String,
        prSgrRelationshipName: json['prSgrRelationshipName'] as String,
        sgrToPartyId: json['sgrToPartyId'] as String,
        prSgrThruDate: check_dt(json['prSgrThruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SegmentGroupViewRelatedParties overridesSegmentGroupViewRelatedParties(Map<String, dynamic> map) {
    return SegmentGroupViewRelatedParties(
        entityId: create_id_from('SegmentGroupViewRelatedParties', ['sgrRoleTypeId', 'sgrSegmentGroupId', 'sgrPartyId', 'sgrToRoleTypeId', 'sgrToSegmentGroupId', 'sgrToPartyId', 'prSgrRoleTypeIdTo', 'prSgrPartyIdFrom', 'prSgrRoleTypeIdFrom', 'prSgrFromDate', 'prSgrPartyIdTo', 'sgcPartyClassificationGroupId', 'sgcSegmentGroupId', 'pcFromDate', 'pcPartyClassificationGroupId', 'pcPartyId', 'prPcRoleTypeIdTo', 'prPcPartyIdFrom', 'prPcRoleTypeIdFrom', 'prPcFromDate', 'prPcPartyIdTo'], map),
        sgrSegmentGroupId: map['sgrSegmentGroupId'],
        pcThruDate: map['pcThruDate'],
        prPcPriorityTypeId: map['prPcPriorityTypeId'],
        prPcThruDate: map['prPcThruDate'],
        prPcComments: map['prPcComments'],
        prSgrStatusId: map['prSgrStatusId'],
        prSgrPositionTitle: map['prSgrPositionTitle'],
        prPcRoleTypeIdTo: map['prPcRoleTypeIdTo'],
        prSgrPartyIdTo: map['prSgrPartyIdTo'],
        prPcStatusId: map['prPcStatusId'],
        prSgrRoleTypeIdTo: map['prSgrRoleTypeIdTo'],
        prSgrRoleTypeIdFrom: map['prSgrRoleTypeIdFrom'],
        sgrToSegmentGroupId: map['sgrToSegmentGroupId'],
        pcPartyId: map['pcPartyId'],
        prPcSecurityGroupId: map['prPcSecurityGroupId'],
        prSgrPartyIdFrom: map['prSgrPartyIdFrom'],
        prSgrSecurityGroupId: map['prSgrSecurityGroupId'],
        sgcSegmentGroupId: map['sgcSegmentGroupId'],
        prSgrComments: map['prSgrComments'],
        prPcPartyRelationshipTypeId: map['prPcPartyRelationshipTypeId'],
        sgrRoleTypeId: map['sgrRoleTypeId'],
        sgrPartyId: map['sgrPartyId'],
        prSgrPermissionsEnumId: map['prSgrPermissionsEnumId'],
        prPcPartyIdTo: map['prPcPartyIdTo'],
        prPcPermissionsEnumId: map['prPcPermissionsEnumId'],
        prSgrPartyRelationshipTypeId: map['prSgrPartyRelationshipTypeId'],
        prPcRoleTypeIdFrom: map['prPcRoleTypeIdFrom'],
        sgcPartyClassificationGroupId: map['sgcPartyClassificationGroupId'],
        prSgrPriorityTypeId: map['prSgrPriorityTypeId'],
        prSgrFromDate: map['prSgrFromDate'],
        prPcPartyIdFrom: map['prPcPartyIdFrom'],
        sgrToRoleTypeId: map['sgrToRoleTypeId'],
        pcFromDate: map['pcFromDate'],
        prPcFromDate: map['prPcFromDate'],
        pcPartyClassificationGroupId: map['pcPartyClassificationGroupId'],
        prPcPositionTitle: map['prPcPositionTitle'],
        prPcRelationshipName: map['prPcRelationshipName'],
        prSgrRelationshipName: map['prSgrRelationshipName'],
        sgrToPartyId: map['sgrToPartyId'],
        prSgrThruDate: map['prSgrThruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}