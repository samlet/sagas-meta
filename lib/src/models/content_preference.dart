import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity WebPreferenceType, Web Preference Type
class WebPreferenceType extends EntityBase {

  /// this entity has only one pk
  final String webPreferenceTypeId; // pk
  final String description;
  WebPreferenceType({entityId,
    @required this.webPreferenceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebPreferenceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'webPreferenceTypeId':webPreferenceTypeId, 'description':description};
  }

}

/// Entity WebUserPreference, Web User Preference
class WebUserPreference extends EntityBase {

  final String userLoginId; // pk
  final String webPreferenceTypeId; // pk
  final String visitId; // pk
  final String webPreferenceValue;
  final String partyId; // pk
  WebUserPreference({entityId,
    @required this.userLoginId, @required this.webPreferenceTypeId, @required this.visitId, this.webPreferenceValue, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebUserPreference { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'webPreferenceTypeId':webPreferenceTypeId, 'visitId':visitId, 'webPreferenceValue':webPreferenceValue, 'partyId':partyId};
  }

}