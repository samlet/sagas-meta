import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity UserPrefGroupType, Defines a group of User Preferences
class UserPrefGroupType extends EntityBase {

  /// this entity has only one pk
  final String userPrefGroupTypeId; // pk
  final String description;
  UserPrefGroupType({entityId,
    @required this.userPrefGroupTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserPrefGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userPrefGroupTypeId':userPrefGroupTypeId, 'description':description};
  }

}

/// Entity UserPreference, Application preferences for a given userLogin.
class UserPreference extends EntityBase {

  final String userLoginId; // pk
  final String userPrefGroupTypeId;
  final String userPrefValue;
  final String userPrefTypeId; // pk
  final String userPrefDataType;
  UserPreference({entityId,
    @required this.userLoginId, this.userPrefGroupTypeId, this.userPrefValue, @required this.userPrefTypeId, this.userPrefDataType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UserPreference { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'userLoginId':userLoginId, 'userPrefGroupTypeId':userPrefGroupTypeId, 'userPrefValue':userPrefValue, 'userPrefTypeId':userPrefTypeId, 'userPrefDataType':userPrefDataType};
  }

}