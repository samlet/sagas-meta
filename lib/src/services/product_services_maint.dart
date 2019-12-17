import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesMaint{
  final SrvClient client;
  ProductServicesMaint(this.client);

  /**
   * Attach Product Features To Category Through Groups - 
   *
   * Requires productCategoryId
   * Returns 
   */
  Future<OfResult> attachProductFeaturesToCategory({@required String productCategoryId, String doSubCategories}) =>
      client.invoke('attachProductFeaturesToCategory', null, { 'productCategoryId': productCategoryId, 'doSubCategories': doSubCategories });

  /**
   * check For Image Urls exists or not - 
   *
   * Requires imageUrl
   * Returns isExists[String]
   */
  Future<OfResult> checkImageUrl({@required String imageUrl}) =>
      client.invoke('checkImageUrl', null, { 'imageUrl': imageUrl });

  /**
   * check For Image Urls exists or not for all categories - 
   *
   * Requires 
   * Returns categoriesMap[java.util.Map]
   */
  Future<OfResult> checkImageUrlForAllCategories({String topCategory, bool excludeEmpty}) =>
      client.invoke('checkImageUrlForAllCategories', null, { 'topCategory': topCategory, 'excludeEmpty': excludeEmpty });

  /**
   * check For Image Urls exists or not For Product - 
   *
   * Requires categoryId
   * Returns filesImageMap[java.util.Map]
   */
  Future<OfResult> checkImageUrlForCategory({@required String categoryId}) =>
      client.invoke('checkImageUrlForCategory', null, { 'categoryId': categoryId });

  /**
   * check For Image Urls exists or not for category - 
   *
   * Requires categoryId
   * Returns fileNotExists[java.util.List], fileExists[java.util.List]
   */
  Future<OfResult> checkImageUrlForCategoryAndProduct({@required String categoryId}) =>
      client.invoke('checkImageUrlForCategoryAndProduct', null, { 'categoryId': categoryId });

  /**
   * check For Image Urls exists or not For Product - 
   *
   * Requires productId
   * Returns filesImageMap[java.util.Map]
   */
  Future<OfResult> checkImageUrlForProduct({@required String productId}) =>
      client.invoke('checkImageUrlForProduct', null, { 'productId': productId });

  /**
   * Set All Product Image Names - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> clearAllVirtualProductImageNames() =>
      client.invoke('clearAllVirtualProductImageNames', null, {  });

  /**
   * Copy Product Members from one Category to Another, optionally filtering by the given valid date (otherwise no date filtering done), and optionally recursing (if recurse=Y) down the from category - 
   *
   * Requires productCategoryId, productCategoryIdTo
   * Returns 
   */
  Future<OfResult> copyCategoryProductMembers({@required String productCategoryId, @required String productCategoryIdTo, DateTime validDate, String recurse}) =>
      client.invoke('copyCategoryProductMembers', null, { 'productCategoryId': productCategoryId, 'productCategoryIdTo': productCategoryIdTo, 'validDate': validDate, 'recurse': recurse });

  /**
   * Discontinue Virtuals With Discontinued Variants - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> discVirtualsWithDiscVariants() =>
      client.invoke('discVirtualsWithDiscVariants', null, {  });

  /**
   * Expire All Product Members in a Category optionally using the thruDate specified as the expire date (now timestamp used by default) - 
   *
   * Requires productCategoryId
   * Returns 
   */
  Future<OfResult> expireAllCategoryProductMembers({@required String productCategoryId, DateTime thruDate}) =>
      client.invoke('expireAllCategoryProductMembers', null, { 'productCategoryId': productCategoryId, 'thruDate': thruDate });

  /**
   * Get all categories of a category  - 
   *
   * Requires 
   * Returns categories[java.util.List]
   */
  Future<OfResult> getAllCategories({String topCategory}) =>
      client.invoke('getAllCategories', null, { 'topCategory': topCategory });

  /**
   *  Returns a complete category trail - can be used for exporting proper category trees. 
        This is mostly useful when used in combination with breadcrumbs,  for building a facetted index tree, 
        or to export a category tree for migration to another system.
        Will create the tree from root point to categoryId. 
        
        This service is not meant to be run on every request.
        Its best use is to generate the trail every so often and store somewhere (a lucene/solr tree, entities, cache or so). 
         - 
   *
   * Requires productCategoryId
   * Returns trail[java.util.List]
   */
  Future<OfResult> getCategoryTrail({@required String productCategoryId}) =>
      client.invoke('getCategoryTrail', null, { 'productCategoryId': productCategoryId });

  /**
   * Get all related categories of a category  - 
   *
   * Requires parentProductCategoryId
   * Returns categories[java.util.List]
   */
  Future<OfResult> getRelatedCategories({@required String parentProductCategoryId, List<dynamic> categories}) =>
      client.invoke('getRelatedCategories', null, { 'parentProductCategoryId': parentProductCategoryId, 'categories': categories });

  /**
   * Make Stand Alone From Single Variant Virtuals - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> makeStandAloneFromSingleVariantVirtuals() =>
      client.invoke('makeStandAloneFromSingleVariantVirtuals', null, {  });

  /**
   * A service to be called by the make stand alone service to do the operation for one product. - 
   *
   * Requires productId, removeOld
   * Returns 
   */
  Future<OfResult> mergeVirtualWithSingleVariant({@required String productId, @required bool removeOld, bool test}) =>
      client.invoke('mergeVirtualWithSingleVariant', null, { 'productId': productId, 'removeOld': removeOld, 'test': test });

  /**
   * Purge Expired ProductStorePromoAppl Records, by store or global if productStoreId is null - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> purgeOldStoreAutoPromos({String productStoreId}) =>
      client.invoke('purgeOldStoreAutoPromos', null, { 'productStoreId': productStoreId });

  /**
   * Remove Category Members Of Discontinued Products - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> removeCategoryMembersOfDiscProducts() =>
      client.invoke('removeCategoryMembersOfDiscProducts', null, {  });

  /**
   * Remove Duplicate, excluding fromDate, Category Members that have no thruDate - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> removeDuplicateOpenEndedCategoryMembers() =>
      client.invoke('removeDuplicateOpenEndedCategoryMembers', null, {  });

  /**
   * Remove All Expired Product Members in a Category, optionally uses the valid date instead of now to determine if the member has expired - 
   *
   * Requires productCategoryId
   * Returns 
   */
  Future<OfResult> removeExpiredCategoryProductMembers({@required String productCategoryId, DateTime validDate}) =>
      client.invoke('removeExpiredCategoryProductMembers', null, { 'productCategoryId': productCategoryId, 'validDate': validDate });

  /**
   * Set All Product Image Names; pattern example: /images/products/${size}/${productId}.jpg; defaults to values in the catalog.properties file (image.url.prefix + / + image.filename.format) - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> setAllProductImageNames({String pattern}) =>
      client.invoke('setAllProductImageNames', null, { 'pattern': pattern });

  /**
   * Update Old Inventory To Detail - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateOldInventoryToDetailAll() =>
      client.invoke('updateOldInventoryToDetailAll', null, {  });

  /**
   * Update Old Inventory To Detail - 
   *
   * Requires inventoryItem
   * Returns 
   */
  Future<OfResult> updateOldInventoryToDetailSingle({@required Map<String,dynamic> inventoryItem}) =>
      client.invoke('updateOldInventoryToDetailSingle', null, { 'inventoryItem': inventoryItem });

}