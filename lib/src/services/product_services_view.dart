import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesView{
  final SrvClient client;
  ProductServicesView(this.client);

  /**
   * Takes a list of product feature (either ProductFeature or ProductFeatureAndAppl) and converts
            each one for the supplier specified by partyId, changing the description and idCode - 
   *
   * Requires productFeatures, partyId
   * Returns convertedProductFeatures[java.util.Collection]
   */
  Future<OfResult> convertFeaturesForSupplier({@required List<dynamic> productFeatures, @required String partyId}) =>
      client.invoke('convertFeaturesForSupplier', null, { 'productFeatures': productFeatures, 'partyId': partyId });

  /**
   * Gets a Collection of products from a 'virtual' parent product. - 
   *
   * Requires productId
   * Returns assocProducts[java.util.Collection]
   */
  Future<OfResult> getAllProductVariants({@required String productId}) =>
      client.invoke('getAllProductVariants', null, { 'productId': productId });

  /**
   * 
            Finds associated products by the defined type.  Only one of either productId or productIdTo can be supplied,
            not both.  If bidirectional is set to true then the passed in productId will be treated as both a productId
            and a productIdTo (defaults to false).  If sortDescending is true then assocProducts will be returned sorted
            by sequenceNum descending (defaults to false).
         - 
   *
   * Requires type
   * Returns assocProducts[java.util.Collection]
   */
  Future<OfResult> getAssociatedProducts({String productId, String productIdTo, bool checkViewAllow, String prodCatalogId, @required String type, bool bidirectional, bool sortDescending}) =>
      client.invoke('getAssociatedProducts', null, { 'productId': productId, 'productIdTo': productIdTo, 'checkViewAllow': checkViewAllow, 'prodCatalogId': prodCatalogId, 'type': type, 'bidirectional': bidirectional, 'sortDescending': sortDescending });

  /**
   * Set the product options for selected product category, mostly used by getDependentDropdownValues - 
   *
   * Requires productCategoryId
   * Returns products[java.util.List]
   */
  Future<OfResult> getAssociatedProductsList({@required String productCategoryId}) =>
      client.invoke('getAssociatedProductsList', null, { 'productCategoryId': productCategoryId });

  /**
   * Gets the previous and next product Ids. - 
   *
   * Requires categoryId, productId
   * Returns category[org.apache.ofbiz.entity.GenericValue], previousProductId[String], nextProductId[String]
   */
  Future<OfResult> getPreviousNextProducts({@required String categoryId, @required String productId, bool activeOnly, DateTime introductionDateLimit, DateTime releaseDateLimit, List<dynamic> orderByFields}) =>
      client.invoke('getPreviousNextProducts', null, { 'categoryId': categoryId, 'productId': productId, 'activeOnly': activeOnly, 'introductionDateLimit': introductionDateLimit, 'releaseDateLimit': releaseDateLimit, 'orderByFields': orderByFields });

  /**
   * Gets a product value object. - 
   *
   * Requires productId
   * Returns product[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getProduct({@required String productId}) =>
      client.invoke('getProduct', null, { 'productId': productId });

  /**
   * Gets a productCategory and a Collection of associated productCategoryMembers and calculates limiting parameters - 
   *
   * Requires productCategoryId, defaultViewSize, limitView
   * Returns productCategory[org.apache.ofbiz.entity.GenericValue], productCategoryMembers[java.util.Collection], viewIndex[Integer], viewSize[Integer], lowIndex[Integer], highIndex[Integer], listSize[Integer]
   */
  Future<OfResult> getProductCategoryAndLimitedMembers({@required String productCategoryId, String prodCatalogId, @required int defaultViewSize, @required bool limitView, bool checkViewAllow, String viewIndexString, String viewSizeString, bool useCacheForMembers, bool activeOnly, DateTime introductionDateLimit, DateTime releaseDateLimit, List<dynamic> orderByFields, String productStoreId}) =>
      client.invoke('getProductCategoryAndLimitedMembers', null, { 'productCategoryId': productCategoryId, 'prodCatalogId': prodCatalogId, 'defaultViewSize': defaultViewSize, 'limitView': limitView, 'checkViewAllow': checkViewAllow, 'viewIndexString': viewIndexString, 'viewSizeString': viewSizeString, 'useCacheForMembers': useCacheForMembers, 'activeOnly': activeOnly, 'introductionDateLimit': introductionDateLimit, 'releaseDateLimit': releaseDateLimit, 'orderByFields': orderByFields, 'productStoreId': productStoreId });

  /**
   * Gets ProductCategoryMembers for the category_id - 
   *
   * Requires categoryId
   * Returns category[org.apache.ofbiz.entity.GenericValue], categoryMembers[java.util.Collection]
   */
  Future<OfResult> getProductCategoryMembers({@required String categoryId}) =>
      client.invoke('getProductCategoryMembers', null, { 'categoryId': categoryId });

  /**
   * Gets a Set of product features (distinct) - 
   *
   * Requires productId
   * Returns featureSet[java.util.Set]
   */
  Future<OfResult> getProductFeatureSet({@required String productId, String productFeatureApplTypeId}) =>
      client.invoke('getProductFeatureSet', null, { 'productId': productId, 'productFeatureApplTypeId': productFeatureApplTypeId });

  /**
   * Gets a Collection of product features (ProductFeatureAndAppl) for a product. - 
   *
   * Requires productId
   * Returns productFeatures[java.util.Collection]
   */
  Future<OfResult> getProductFeatures({@required String productId, String type, String distinct}) =>
      client.invoke('getProductFeatures', null, { 'productId': productId, 'type': type, 'distinct': distinct });

  /**
   * Gets a list of variant product value objects. - 
   *
   * Requires productId, selectedFeatures
   * Returns products[java.util.List]
   */
  Future<OfResult> getProductVariant({@required String productId, @required Map<String,dynamic> selectedFeatures}) =>
      client.invoke('getProductVariant', null, { 'productId': productId, 'selectedFeatures': selectedFeatures });

  /**
   * Gets a tree of product variants based on a virtual product and a list of features. - 
   *
   * Requires productId, featureOrder
   * Returns variantTree[java.util.Map], unavailableVariants[java.util.List], variantSample[java.util.Map], virtualVariant[java.util.List]
   */
  Future<OfResult> getProductVariantTree({@required String productId, @required List<dynamic> featureOrder, String productStoreId, bool checkInventory}) =>
      client.invoke('getProductVariantTree', null, { 'productId': productId, 'featureOrder': featureOrder, 'productStoreId': productStoreId, 'checkInventory': checkInventory });

  /**
   * Finds a list of SupplierProduct entity values based on a productId.
              If other parameters are given, they are used to filter the list down. - 
   *
   * Requires productId
   * Returns supplierProducts[java.util.List]
   */
  Future<OfResult> getSuppliersForProduct({@required String productId, String partyId, String currencyUomId, Decimal quantity, String canDropShip}) =>
      client.invoke('getSuppliersForProduct', null, { 'productId': productId, 'partyId': partyId, 'currencyUomId': currencyUomId, 'quantity': quantity, 'canDropShip': canDropShip });

}