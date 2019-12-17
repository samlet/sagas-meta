import 'package:sagas_meta/src/models/order_shoppingcart.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderShoppingcartJsonifier{
  static CartAbandonedLine extractCartAbandonedLine(dynamic json) {
    return CartAbandonedLine(
        entityId: create_id_from('CartAbandonedLine', ['visitId', 'cartAbandonedLineSeqId'], json),
        unitPrice: json['unitPrice'] as double,
        quantity: json['quantity'] as double,
        reservLength: json['reservLength'] as double,
        cartAbandonedLineSeqId: json['cartAbandonedLineSeqId'] as String,
        productId: json['productId'] as String,
        reservPersons: json['reservPersons'] as double,
        totalWithAdjustments: json['totalWithAdjustments'] as double,
        wasReserved: json['wasReserved'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        visitId: json['visitId'] as String,
        reservStart: check_dt(json['reservStart']),
        configId: json['configId'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        prodCatalogId: json['prodCatalogId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CartAbandonedLine overridesCartAbandonedLine(Map<String, dynamic> map) {
    return CartAbandonedLine(
        entityId: create_id_from('CartAbandonedLine', ['visitId', 'cartAbandonedLineSeqId'], map),
        unitPrice: map['unitPrice'],
        quantity: map['quantity'],
        reservLength: map['reservLength'],
        cartAbandonedLineSeqId: map['cartAbandonedLineSeqId'],
        productId: map['productId'],
        reservPersons: map['reservPersons'],
        totalWithAdjustments: map['totalWithAdjustments'],
        wasReserved: map['wasReserved'],
        reservNthPPPerc: map['reservNthPPPerc'],
        visitId: map['visitId'],
        reservStart: map['reservStart'],
        configId: map['configId'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        prodCatalogId: map['prodCatalogId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}