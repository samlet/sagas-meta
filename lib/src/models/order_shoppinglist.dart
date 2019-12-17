import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ShoppingList, Shopping List
class ShoppingList extends EntityBase {

  /// this entity has only one pk
  final String recurrenceInfoId;
  final String parentShoppingListId;
  final String productPromoCodeId;
  final String description;
  final String isActive;
  final String shoppingListTypeId;
  final String contactMechId;
  final String carrierPartyId;
  final String shoppingListId; // pk
  final String currencyUom;
  final DateTime lastOrderedDate;
  final String carrierRoleTypeId;
  final String paymentMethodId;
  final String isPublic;
  final String productStoreId;
  final String listName;
  final DateTime lastAdminModified;
  final String partyId;
  final String shipmentMethodTypeId;
  final String visitorId;
  ShoppingList({entityId,
    this.recurrenceInfoId, this.parentShoppingListId, this.productPromoCodeId, this.description, this.isActive, this.shoppingListTypeId, this.contactMechId, this.carrierPartyId, @required this.shoppingListId, this.currencyUom, this.lastOrderedDate, this.carrierRoleTypeId, this.paymentMethodId, this.isPublic, this.productStoreId, this.listName, this.lastAdminModified, this.partyId, this.shipmentMethodTypeId, this.visitorId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShoppingList { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'recurrenceInfoId':recurrenceInfoId, 'parentShoppingListId':parentShoppingListId, 'productPromoCodeId':productPromoCodeId, 'description':description, 'isActive':isActive, 'shoppingListTypeId':shoppingListTypeId, 'contactMechId':contactMechId, 'carrierPartyId':carrierPartyId, 'shoppingListId':shoppingListId, 'currencyUom':currencyUom, 'lastOrderedDate':lastOrderedDate, 'carrierRoleTypeId':carrierRoleTypeId, 'paymentMethodId':paymentMethodId, 'isPublic':isPublic, 'productStoreId':productStoreId, 'listName':listName, 'lastAdminModified':lastAdminModified, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'visitorId':visitorId};
  }

}

/// Entity ShoppingListItem, Shopping List Item
class ShoppingListItem extends EntityBase {

  final double quantity;
  final double reservLength;
  final String productId;
  final double reservPersons;
  final double quantityPurchased;
  final String shoppingListId; // pk
  final DateTime reservStart;
  final String configId;
  final String shoppingListItemSeqId; // pk
  final double modifiedPrice;
  ShoppingListItem({entityId,
    this.quantity, this.reservLength, this.productId, this.reservPersons, this.quantityPurchased, @required this.shoppingListId, this.reservStart, this.configId, @required this.shoppingListItemSeqId, this.modifiedPrice,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShoppingListItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'reservLength':reservLength, 'productId':productId, 'reservPersons':reservPersons, 'quantityPurchased':quantityPurchased, 'shoppingListId':shoppingListId, 'reservStart':reservStart, 'configId':configId, 'shoppingListItemSeqId':shoppingListItemSeqId, 'modifiedPrice':modifiedPrice};
  }

}

/// Entity ShoppingListItemSurvey, Shopping List Item
class ShoppingListItemSurvey extends EntityBase {

  final String shoppingListId; // pk
  final String shoppingListItemSeqId; // pk
  final String surveyResponseId; // pk
  ShoppingListItemSurvey({entityId,
    @required this.shoppingListId, @required this.shoppingListItemSeqId, @required this.surveyResponseId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShoppingListItemSurvey { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shoppingListId':shoppingListId, 'shoppingListItemSeqId':shoppingListItemSeqId, 'surveyResponseId':surveyResponseId};
  }

}

/// Entity ShoppingListType, Shopping List Type
class ShoppingListType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String shoppingListTypeId; // pk
  ShoppingListType({entityId,
    this.description, @required this.shoppingListTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShoppingListType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'shoppingListTypeId':shoppingListTypeId};
  }

}

/// Entity ShoppingListWorkEffort, ShoppingList WorkEffort
class ShoppingListWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String shoppingListId; // pk
  ShoppingListWorkEffort({entityId,
    @required this.workEffortId, @required this.shoppingListId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShoppingListWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'shoppingListId':shoppingListId};
  }

}