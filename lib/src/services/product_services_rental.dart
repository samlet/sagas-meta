import 'package:sagas_meta/src/models/accounting_fixedasset.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesRental{
  final SrvClient client;
  ProductServicesRental(this.client);

  /**
   * Create an FixedAsset and link to an existing product to ease rental products creation - FixedAsset
   *
   * Requires productId
   * Returns fixedAssetId[String]
   */
  Future<OfResult> createFixedAssetAndLinkToProduct(FixedAsset ent, {@required String productId}) =>
      client.invoke('createFixedAssetAndLinkToProduct', ent, { 'productId': productId });

  /**
   * Most rental products are associated with one fixed asset only, this service will return the first genericValue fixedAsset - 
   *
   * Requires productId
   * Returns productId[String], fixedAssetId[String]
   */
  Future<OfResult> getProductFirstRelatedFixedAsset({@required String productId}) =>
      client.invoke('getProductFirstRelatedFixedAsset', null, { 'productId': productId });

}