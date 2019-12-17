import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CartAbandonedLine, Order Abandoned Line
class CartAbandonedLine extends EntityBase {

  final double unitPrice;
  final double quantity;
  final double reservLength;
  final String cartAbandonedLineSeqId; // pk
  final String productId;
  final double reservPersons;
  final double totalWithAdjustments;
  final String wasReserved;
  final double reservNthPPPerc;
  final String visitId; // pk
  final DateTime reservStart;
  final String configId;
  final double reserv2ndPPPerc;
  final String prodCatalogId;
  CartAbandonedLine({entityId,
    this.unitPrice, this.quantity, this.reservLength, @required this.cartAbandonedLineSeqId, this.productId, this.reservPersons, this.totalWithAdjustments, this.wasReserved, this.reservNthPPPerc, @required this.visitId, this.reservStart, this.configId, this.reserv2ndPPPerc, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CartAbandonedLine { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'quantity':quantity, 'reservLength':reservLength, 'cartAbandonedLineSeqId':cartAbandonedLineSeqId, 'productId':productId, 'reservPersons':reservPersons, 'totalWithAdjustments':totalWithAdjustments, 'wasReserved':wasReserved, 'reservNthPPPerc':reservNthPPPerc, 'visitId':visitId, 'reservStart':reservStart, 'configId':configId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'prodCatalogId':prodCatalogId};
  }

}