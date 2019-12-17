import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity NeedType, Need Type
class NeedType extends EntityBase {

  /// this entity has only one pk
  final String needTypeId; // pk
  final String description;
  NeedType({entityId,
    @required this.needTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'NeedType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'needTypeId':needTypeId, 'description':description};
  }

}

/// Entity PartyNeed, Party Need
class PartyNeed extends EntityBase {

  final String roleTypeId; // pk
  final String needTypeId;
  final String productId;
  final String description;
  final String partyTypeId;
  final String productCategoryId;
  final String visitId;
  final String partyNeedId; // pk
  final String communicationEventId;
  final String partyId; // pk
  final DateTime datetimeRecorded;
  PartyNeed({entityId,
    @required this.roleTypeId, this.needTypeId, this.productId, this.description, this.partyTypeId, this.productCategoryId, this.visitId, @required this.partyNeedId, this.communicationEventId, @required this.partyId, this.datetimeRecorded,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyNeed { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'needTypeId':needTypeId, 'productId':productId, 'description':description, 'partyTypeId':partyTypeId, 'productCategoryId':productCategoryId, 'visitId':visitId, 'partyNeedId':partyNeedId, 'communicationEventId':communicationEventId, 'partyId':partyId, 'datetimeRecorded':datetimeRecorded};
  }

}