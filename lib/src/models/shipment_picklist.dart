import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Picklist, Picklist
class Picklist extends EntityBase {

  /// this entity has only one pk
  final String picklistId; // pk
  final String lastModifiedByUserLogin;
  final String facilityId;
  final String statusId;
  final String description;
  final DateTime picklistDate;
  final String shipmentMethodTypeId;
  final String createdByUserLogin;
  Picklist({entityId,
    @required this.picklistId, this.lastModifiedByUserLogin, this.facilityId, this.statusId, this.description, this.picklistDate, this.shipmentMethodTypeId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Picklist { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'picklistId':picklistId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'facilityId':facilityId, 'statusId':statusId, 'description':description, 'picklistDate':picklistDate, 'shipmentMethodTypeId':shipmentMethodTypeId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity PicklistAndBinAndItem, Picklist and PicklistBin and PicklistItem View
class PicklistAndBinAndItem extends EntityBase {

  final String orderItemSeqId; // pk
  final String facilityId;
  final double quantity;
  final String orderId; // pk
  final String description;
  final String shipGroupSeqId; // pk
  final int binLocationNumber;
  final String itemStatusId;
  final String inventoryItemId; // pk
  final String picklistId; // pk
  final String lastModifiedByUserLogin;
  final String statusId;
  final String primaryOrderId;
  final DateTime picklistDate;
  final String picklistBinId; // pk
  final String shipmentMethodTypeId;
  final String createdByUserLogin;
  final String primaryShipGroupSeqId;
  PicklistAndBinAndItem({entityId,
    @required this.orderItemSeqId, this.facilityId, this.quantity, @required this.orderId, this.description, @required this.shipGroupSeqId, this.binLocationNumber, this.itemStatusId, @required this.inventoryItemId, @required this.picklistId, this.lastModifiedByUserLogin, this.statusId, this.primaryOrderId, this.picklistDate, @required this.picklistBinId, this.shipmentMethodTypeId, this.createdByUserLogin, this.primaryShipGroupSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistAndBinAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'facilityId':facilityId, 'quantity':quantity, 'orderId':orderId, 'description':description, 'shipGroupSeqId':shipGroupSeqId, 'binLocationNumber':binLocationNumber, 'itemStatusId':itemStatusId, 'inventoryItemId':inventoryItemId, 'picklistId':picklistId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'statusId':statusId, 'primaryOrderId':primaryOrderId, 'picklistDate':picklistDate, 'picklistBinId':picklistBinId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'createdByUserLogin':createdByUserLogin, 'primaryShipGroupSeqId':primaryShipGroupSeqId};
  }

}

/// Entity PicklistBin, Picklist
class PicklistBin extends EntityBase {

  /// this entity has only one pk
  final String picklistId;
  final String primaryOrderId;
  final String picklistBinId; // pk
  final String primaryShipGroupSeqId;
  final int binLocationNumber;
  PicklistBin({entityId,
    this.picklistId, this.primaryOrderId, @required this.picklistBinId, this.primaryShipGroupSeqId, this.binLocationNumber,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistBin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'picklistId':picklistId, 'primaryOrderId':primaryOrderId, 'picklistBinId':picklistBinId, 'primaryShipGroupSeqId':primaryShipGroupSeqId, 'binLocationNumber':binLocationNumber};
  }

}

/// Entity PicklistItem, Picklist
class PicklistItem extends EntityBase {

  final String orderItemSeqId; // pk
  final String inventoryItemId; // pk
  final double quantity;
  final String orderId; // pk
  final String picklistBinId; // pk
  final String shipGroupSeqId; // pk
  final String itemStatusId;
  PicklistItem({entityId,
    @required this.orderItemSeqId, @required this.inventoryItemId, this.quantity, @required this.orderId, @required this.picklistBinId, @required this.shipGroupSeqId, this.itemStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'inventoryItemId':inventoryItemId, 'quantity':quantity, 'orderId':orderId, 'picklistBinId':picklistBinId, 'shipGroupSeqId':shipGroupSeqId, 'itemStatusId':itemStatusId};
  }

}

/// Entity PicklistItemAndBin, Picklist Item and Bin View
class PicklistItemAndBin extends EntityBase {

  final String orderItemSeqId; // pk
  final String inventoryItemId; // pk
  final String picklistId;
  final double quantity;
  final String orderId; // pk
  final String primaryOrderId;
  final String picklistBinId; // pk
  final String primaryShipGroupSeqId;
  final String shipGroupSeqId; // pk
  final int binLocationNumber;
  final String itemStatusId;
  PicklistItemAndBin({entityId,
    @required this.orderItemSeqId, @required this.inventoryItemId, this.picklistId, this.quantity, @required this.orderId, this.primaryOrderId, @required this.picklistBinId, this.primaryShipGroupSeqId, @required this.shipGroupSeqId, this.binLocationNumber, this.itemStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistItemAndBin { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'inventoryItemId':inventoryItemId, 'picklistId':picklistId, 'quantity':quantity, 'orderId':orderId, 'primaryOrderId':primaryOrderId, 'picklistBinId':picklistBinId, 'primaryShipGroupSeqId':primaryShipGroupSeqId, 'shipGroupSeqId':shipGroupSeqId, 'binLocationNumber':binLocationNumber, 'itemStatusId':itemStatusId};
  }

}

/// Entity PicklistRole, Picklist Role
class PicklistRole extends EntityBase {

  final DateTime fromDate; // pk
  final String picklistId; // pk
  final String roleTypeId; // pk
  final String lastModifiedByUserLogin;
  final String partyId; // pk
  final String createdByUserLogin;
  final DateTime thruDate;
  PicklistRole({entityId,
    @required this.fromDate, @required this.picklistId, @required this.roleTypeId, this.lastModifiedByUserLogin, @required this.partyId, this.createdByUserLogin, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'picklistId':picklistId, 'roleTypeId':roleTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'thruDate':thruDate};
  }

}

/// Entity PicklistStatusHistory, Picklist Status History
class PicklistStatusHistory extends EntityBase {

  final String picklistId; // pk
  final String statusId;
  final DateTime changeDate; // pk
  final String statusIdTo;
  final String changeUserLoginId;
  PicklistStatusHistory({entityId,
    @required this.picklistId, this.statusId, @required this.changeDate, this.statusIdTo, this.changeUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PicklistStatusHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'picklistId':picklistId, 'statusId':statusId, 'changeDate':changeDate, 'statusIdTo':statusIdTo, 'changeUserLoginId':changeUserLoginId};
  }

}