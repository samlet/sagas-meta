import 'package:sagas_meta/src/models/order_shoppingcart.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesCart{
  final SrvClient client;
  OrderServicesCart(this.client);

  /**
   * Create CartAbandonedLine record - CartAbandonedLine
   *
   * Requires visitId, cartAbandonedLineSeqId
   * Returns 
   */
  Future<OfResult> createCartAbandonedLine(CartAbandonedLine ent, ) =>
      client.invoke('createCartAbandonedLine', ent, {  });

  /**
   * Delete CartAbandonedLine record - CartAbandonedLine
   *
   * Requires visitId, cartAbandonedLineSeqId
   * Returns 
   */
  Future<OfResult> deleteCartAbandonedLine(CartAbandonedLine ent, ) =>
      client.invoke('deleteCartAbandonedLine', ent, {  });

  /**
   * Create a ShoppingCart Object based on an existing order - 
   *
   * Requires orderId
   * Returns shoppingCart[org.apache.ofbiz.order.shoppingcart.ShoppingCart]
   */
  Future<OfResult> loadCartFromOrder({@required String orderId, String createAsNewOrder, bool skipInventoryChecks, bool skipProductChecks, bool includePromoItems}) =>
      client.invoke('loadCartFromOrder', null, { 'orderId': orderId, 'createAsNewOrder': createAsNewOrder, 'skipInventoryChecks': skipInventoryChecks, 'skipProductChecks': skipProductChecks, 'includePromoItems': includePromoItems });

  /**
   * Create a ShoppingCart Object based on an existing quote. If applyQuoteAdjustments is set to false then standard cart adjustments are generated. - 
   *
   * Requires quoteId
   * Returns shoppingCart[org.apache.ofbiz.order.shoppingcart.ShoppingCart]
   */
  Future<OfResult> loadCartFromQuote({@required String quoteId, String applyQuoteAdjustments}) =>
      client.invoke('loadCartFromQuote', null, { 'quoteId': quoteId, 'applyQuoteAdjustments': applyQuoteAdjustments });

  /**
   * Create a ShoppingCart Object based on an existing shopping list. - 
   *
   * Requires shoppingListId
   * Returns shoppingCart[org.apache.ofbiz.order.shoppingcart.ShoppingCart]
   */
  Future<OfResult> loadCartFromShoppingList({@required String shoppingListId, String applyStorePromotions, String orderPartyId}) =>
      client.invoke('loadCartFromShoppingList', null, { 'shoppingListId': shoppingListId, 'applyStorePromotions': applyStorePromotions, 'orderPartyId': orderPartyId });

  /**
   * Update CartAbandonedLine record - CartAbandonedLine
   *
   * Requires visitId, cartAbandonedLineSeqId
   * Returns 
   */
  Future<OfResult> updateCartAbandonedLine(CartAbandonedLine ent, ) =>
      client.invoke('updateCartAbandonedLine', ent, {  });

}