import 'package:sagas_meta/src/models/product_product.dart';
import 'package:sagas_meta/src/models/product_category.dart';
import 'package:sagas_meta/src/models/product_feature.dart';
import 'package:sagas_meta/src/models/content_website.dart';
import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:sagas_meta/src/models/product_catalog.dart';
import 'package:sagas_meta/src/models/product_promo.dart';
import 'package:sagas_meta/src/models/product_config.dart';
import 'package:sagas_meta/src/models/product_supplier.dart';
import 'package:sagas_meta/src/models/product_price.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServices{
  final SrvClient client;
  ProductServices(this.client);

  /**
   * Add products to best selling category. - 
   *
   * Requires productStoreId, prodCatalogId, week, year
   * Returns 
   */
  Future<OfResult> AddProductToBestSellCategory({@required String productStoreId, @required String prodCatalogId, @required int week, @required int year}) =>
      client.invoke('AddProductToBestSellCategory', null, { 'productStoreId': productStoreId, 'prodCatalogId': prodCatalogId, 'week': week, 'year': year });

  /**
   * Find best selling product. - 
   *
   * Requires productStoreId, productCategoryId, primaryProductCategoryId, week, year
   * Returns productCategoryId[String]
   */
  Future<OfResult> FindBestSellingProduct({@required String productStoreId, @required String productCategoryId, @required String primaryProductCategoryId, @required int week, @required int year}) =>
      client.invoke('FindBestSellingProduct', null, { 'productStoreId': productStoreId, 'productCategoryId': productCategoryId, 'primaryProductCategoryId': primaryProductCategoryId, 'week': week, 'year': year });

  /**
   * Find category child. - 
   *
   * Requires productStoreId, productCategoryId, primaryProductCategoryId, week, year
   * Returns 
   */
  Future<OfResult> FindCategoryChild({@required String productStoreId, @required String productCategoryId, @required String primaryProductCategoryId, @required int week, @required int year}) =>
      client.invoke('FindCategoryChild', null, { 'productStoreId': productStoreId, 'productCategoryId': productCategoryId, 'primaryProductCategoryId': primaryProductCategoryId, 'week': week, 'year': year });

  /**
   * Remove products from best selling category. - 
   *
   * Requires prodCatalogId
   * Returns 
   */
  Future<OfResult> RemoveProductFromBestSellCategory({@required String prodCatalogId}) =>
      client.invoke('RemoveProductFromBestSellCategory', null, { 'prodCatalogId': prodCatalogId });

  /**
   *  - 
   *
   * Requires contentId, productId
   * Returns 
   */
  Future<OfResult> addCustomerDigitalDownloadProductFile({@required String contentId, @required String productId}) =>
      client.invoke('addCustomerDigitalDownloadProductFile', null, { 'contentId': contentId, 'productId': productId });

  /**
   * Create Image Frame For Product. - 
   *
   * Requires productId, imageName, imageWidth, imageHeight, frameContentId, frameDataResourceId
   * Returns 
   */
  Future<OfResult> addImageFrame({@required String productId, @required String imageName, @required String imageWidth, @required String imageHeight, @required String frameContentId, @required String frameDataResourceId}) =>
      client.invoke('addImageFrame', null, { 'productId': productId, 'imageName': imageName, 'imageWidth': imageWidth, 'imageHeight': imageHeight, 'frameContentId': frameContentId, 'frameDataResourceId': frameDataResourceId });

  /**
   * Add Party To Category - 
   *
   * Requires productCategoryId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> addPartyToCategory({@required String productCategoryId, @required String partyId, @required String roleTypeId, DateTime fromDate, DateTime thruDate, String comments}) =>
      client.invoke('addPartyToCategory', null, { 'productCategoryId': productCategoryId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'comments': comments });

  /**
   * Add Party To Product - 
   *
   * Requires productId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> addPartyToProduct({@required String productId, @required String partyId, @required String roleTypeId, DateTime fromDate, DateTime thruDate, int sequenceNum, String comments}) =>
      client.invoke('addPartyToProduct', null, { 'productId': productId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum, 'comments': comments });

  /**
   * Add ProdCatalog To Party - ProdCatalogRole
   *
   * Requires partyId, roleTypeId, prodCatalogId
   * Returns 
   */
  Future<OfResult> addProdCatalogToParty(ProdCatalogRole ent, ) =>
      client.invoke('addProdCatalogToParty', ent, {  });

  /**
   * Add ProductCategory To Category - 
   *
   * Requires productCategoryId, parentProductCategoryId
   * Returns 
   */
  Future<OfResult> addProductCategoryToCategory({@required String productCategoryId, @required String parentProductCategoryId, DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('addProductCategoryToCategory', null, { 'productCategoryId': productCategoryId, 'parentProductCategoryId': parentProductCategoryId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

  /**
   * Add ProductCategory To ProdCatalog - ProdCatalogCategory
   *
   * Requires prodCatalogId, productCategoryId, prodCatalogCategoryTypeId
   * Returns 
   */
  Future<OfResult> addProductCategoryToProdCatalog(ProdCatalogCategory ent, ) =>
      client.invoke('addProductCategoryToProdCatalog', ent, {  });

  /**
   * Add Product To Category - ProductCategoryMember
   *
   * Requires productCategoryId, productId
   * Returns 
   */
  Future<OfResult> addProductToCategory(ProductCategoryMember ent, ) =>
      client.invoke('addProductToCategory', ent, {  });

  /**
   *  - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> addRejectedReasonImageManagement({@required String contentId, String description}) =>
      client.invoke('addRejectedReasonImageManagement', null, { 'contentId': contentId, 'description': description });

  /**
   * Cancle OrderItemGroupOrder - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> cancleOrderItemGroupOrder({@required String orderId, String orderItemSeqId}) =>
      client.invoke('cancleOrderItemGroupOrder', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId });

  /**
   * Catalog Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> catalogPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('catalogPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> checkCategoryPermissionWithViewPurchaseAllow({String productCategoryId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('checkCategoryPermissionWithViewPurchaseAllow', null, { 'productCategoryId': productCategoryId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Check OrderItem For ProductGroupOrder - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> checkOrderItemForProductGroupOrder({@required String orderId}) =>
      client.invoke('checkOrderItemForProductGroupOrder', null, { 'orderId': orderId });

  /**
   * Check ProductGroupOrder Expired - 
   *
   * Requires groupOrderId
   * Returns 
   */
  Future<OfResult> checkProductGroupOrderExpired({@required String groupOrderId}) =>
      client.invoke('checkProductGroupOrderExpired', null, { 'groupOrderId': groupOrderId });

  /**
   * Copy Virtual Product's data to the Variant Products - 
   *
   * Requires virtualProductId
   * Returns 
   */
  Future<OfResult> copyToProductVariants({@required String virtualProductId, String removeBefore, String duplicateProduct, String duplicatePrices, String duplicateIDs, String duplicateContent, String duplicateCategoryMembers, String duplicateAttributes, String duplicateFacilities, String duplicateLocations}) =>
      client.invoke('copyToProductVariants', null, { 'virtualProductId': virtualProductId, 'removeBefore': removeBefore, 'duplicateProduct': duplicateProduct, 'duplicatePrices': duplicatePrices, 'duplicateIDs': duplicateIDs, 'duplicateContent': duplicateContent, 'duplicateCategoryMembers': duplicateCategoryMembers, 'duplicateAttributes': duplicateAttributes, 'duplicateFacilities': duplicateFacilities, 'duplicateLocations': duplicateLocations });

  /**
   * count Product View - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> countProductView({@required String productId, int weight}) =>
      client.invoke('countProductView', null, { 'productId': productId, 'weight': weight });

  /**
   * Add Content To Category - ProductCategoryContent
   *
   * Requires productCategoryId, contentId, prodCatContentTypeId
   * Returns productCategoryId[String], contentId[String], prodCatContentTypeId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createCategoryContent(ProductCategoryContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createCategoryContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a Communication Event Product - CommunicationEventProduct
   *
   * Requires productId, communicationEventId
   * Returns 
   */
  Future<OfResult> createCommunicationEventProduct(CommunicationEventProduct ent, ) =>
      client.invoke('createCommunicationEventProduct', ent, {  });

  /**
   *  - 
   *
   * Requires productName, productStoreId, price
   * Returns productId[String], currencyUomId[String], minimumOrderQuantity[BigDecimal], availableFromDate[Timestamp]
   */
  Future<OfResult> createCustomerDigitalDownloadProduct({@required String productName, @required String productStoreId, @required Decimal price, String description, String currencyUomId}) =>
      client.invoke('createCustomerDigitalDownloadProduct', null, { 'productName': productName, 'productStoreId': productStoreId, 'price': price, 'description': description, 'currencyUomId': currencyUomId });

  /**
   *  - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate, subject, plainBody
   * Returns contentId[String], contentId[String]
   */
  Future<OfResult> createEmailContentForProduct(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String subject, @required String plainBody, String htmlBody}) =>
      client.invoke('createEmailContentForProduct', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'subject': subject, 'plainBody': plainBody, 'htmlBody': htmlBody });

  /**
   * Create a GoodIdentification - GoodIdentification
   *
   * Requires goodIdentificationTypeId, productId, idValue
   * Returns 
   */
  Future<OfResult> createGoodIdentification(GoodIdentification ent, ) =>
      client.invoke('createGoodIdentification', ent, {  });

  /**
   * Create a GoodIdentificationType - GoodIdentificationType
   *
   * Requires 
   * Returns goodIdentificationTypeId[String]
   */
  Future<OfResult> createGoodIdentificationType(GoodIdentificationType ent, ) =>
      client.invoke('createGoodIdentificationType', ent, {  });

  /**
   *  - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> createImageContentApproval({@required String contentId}) =>
      client.invoke('createImageContentApproval', null, { 'contentId': contentId });

  /**
   * Create Job For ProductGroupOrder - ProductGroupOrder
   *
   * Requires groupOrderId
   * Returns 
   */
  Future<OfResult> createJobForProductGroupOrder(ProductGroupOrder ent, ) =>
      client.invoke('createJobForProductGroupOrder', ent, {  });

  /**
   * Create a Market Interest - MarketInterest
   *
   * Requires productCategoryId, partyClassificationGroupId, fromDate
   * Returns 
   */
  Future<OfResult> createMarketInterest(MarketInterest ent, ) =>
      client.invoke('createMarketInterest', ent, {  });

  /**
   * Create missing Category and Product Alternative URLs - 
   *
   * Requires prodCatalogId
   * Returns prodCatalogId[String], categoriesNotUpdated[Integer], categoriesUpdated[Integer], productsNotUpdated[Integer], productsUpdated[Integer]
   */
  Future<OfResult> createMissingCategoryAndProductAltUrls({@required String prodCatalogId, String category, String product}) =>
      client.invoke('createMissingCategoryAndProductAltUrls', null, { 'prodCatalogId': prodCatalogId, 'category': category, 'product': product });

  /**
   * Create New Image Thumbnail. - 
   *
   * Requires productId, contentId, dataResourceName, drObjectInfo, sizeWidth
   * Returns 
   */
  Future<OfResult> createNewImageThumbnail({@required String productId, @required String contentId, @required String dataResourceName, @required String drObjectInfo, @required String sizeWidth}) =>
      client.invoke('createNewImageThumbnail', null, { 'productId': productId, 'contentId': contentId, 'dataResourceName': dataResourceName, 'drObjectInfo': drObjectInfo, 'sizeWidth': sizeWidth });

  /**
   * Create a ProdCatalog - ProdCatalog
   *
   * Requires catalogName, catalogName
   * Returns prodCatalogId[String]
   */
  Future<OfResult> createProdCatalog(ProdCatalog ent, ) =>
      client.invoke('createProdCatalog', ent, {  });

  /**
   * Create ProdCatalogCategoryType Record - ProdCatalogCategoryType
   *
   * Requires 
   * Returns prodCatalogCategoryTypeId[String]
   */
  Future<OfResult> createProdCatalogCategoryType(ProdCatalogCategoryType ent, ) =>
      client.invoke('createProdCatalogCategoryType', ent, {  });

  /**
   * Create a ProdCatalogInvFacility - ProdCatalogInvFacility
   *
   * Requires prodCatalogId, facilityId, fromDate
   * Returns prodCatalogId[String], facilityId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProdCatalogInvFacility(ProdCatalogInvFacility ent, ) =>
      client.invoke('createProdCatalogInvFacility', ent, {  });

  /**
   * Create a Product - Product
   *
   * Requires productTypeId, internalName
   * Returns productId[String]
   */
  Future<OfResult> createProduct(Product ent, ) =>
      client.invoke('createProduct', ent, {  });

  /**
   *  - ProductAssoc
   *
   * Requires productId, productIdTo, productAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> createProductAssoc(ProductAssoc ent, ) =>
      client.invoke('createProductAssoc', ent, {  });

  /**
   * Create a ProductAssocType - ProductAssocType
   *
   * Requires 
   * Returns productAssocTypeId[String]
   */
  Future<OfResult> createProductAssocType(ProductAssocType ent, ) =>
      client.invoke('createProductAssocType', ent, {  });

  /**
   * Create a ProductAttribute - ProductAttribute
   *
   * Requires productId, attrName
   * Returns 
   */
  Future<OfResult> createProductAttribute(ProductAttribute ent, ) =>
      client.invoke('createProductAttribute', ent, {  });

  /**
   * Create an ProductCategory - ProductCategory
   *
   * Requires productCategoryTypeId, productCategoryTypeId
   * Returns productCategoryId[String]
   */
  Future<OfResult> createProductCategory(ProductCategory ent, ) =>
      client.invoke('createProductCategory', ent, {  });

  /**
   *  - ProductCategoryAttribute
   *
   * Requires productCategoryId, attrName
   * Returns 
   */
  Future<OfResult> createProductCategoryAttribute(ProductCategoryAttribute ent, ) =>
      client.invoke('createProductCategoryAttribute', ent, {  });

  /**
   * Create a ProductCategoryContentType - ProductCategoryContentType
   *
   * Requires 
   * Returns prodCatContentTypeId[String]
   */
  Future<OfResult> createProductCategoryContentType(ProductCategoryContentType ent, ) =>
      client.invoke('createProductCategoryContentType', ent, {  });

  /**
   * Create a ProductCategoryGlAccount - ProductCategoryGlAccount
   *
   * Requires productCategoryId, organizationPartyId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> createProductCategoryGlAccount(ProductCategoryGlAccount ent, ) =>
      client.invoke('createProductCategoryGlAccount', ent, {  });

  /**
   * Create a ProductCategoryLink - ProductCategoryLink
   *
   * Requires productCategoryId
   * Returns 
   */
  Future<OfResult> createProductCategoryLink(ProductCategoryLink ent, ) =>
      client.invoke('createProductCategoryLink', ent, {  });

  /**
   * Create a ProductCategoryType - ProductCategoryType
   *
   * Requires 
   * Returns productCategoryTypeId[String]
   */
  Future<OfResult> createProductCategoryType(ProductCategoryType ent, ) =>
      client.invoke('createProductCategoryType', ent, {  });

  /**
   * Create a ProductCategoryTypeAttr - ProductCategoryTypeAttr
   *
   * Requires productCategoryTypeId, attrName
   * Returns productCategoryTypeId[String], attrName[String]
   */
  Future<OfResult> createProductCategoryTypeAttr(ProductCategoryTypeAttr ent, ) =>
      client.invoke('createProductCategoryTypeAttr', ent, {  });

  /**
   * Create a ProductConfig - ProductConfig
   *
   * Requires productId, configItemId, sequenceNum
   * Returns fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductConfig(ProductConfig ent, ) =>
      client.invoke('createProductConfig', ent, {  });

  /**
   * Create a ProductConfigItem - ProductConfigItem
   *
   * Requires 
   * Returns configItemId[String], configItemId[String]
   */
  Future<OfResult> createProductConfigItem(ProductConfigItem ent, ) =>
      client.invoke('createProductConfigItem', ent, {  });

  /**
   * Add Content To ProductConfigItem - ProdConfItemContent
   *
   * Requires configItemId, contentId, confItemContentTypeId
   * Returns configItemId[String], contentId[String], confItemContentTypeId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductConfigItemContent(ProdConfItemContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createProductConfigItemContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a Config Option - ProductConfigOption
   *
   * Requires configItemId
   * Returns configItemId[String], configOptionId[String]
   */
  Future<OfResult> createProductConfigOption(ProductConfigOption ent, ) =>
      client.invoke('createProductConfigOption', ent, {  });

  /**
   * Create a ProductConfigProduct - ProductConfigProduct
   *
   * Requires configItemId, configOptionId, productId
   * Returns 
   */
  Future<OfResult> createProductConfigProduct(ProductConfigProduct ent, ) =>
      client.invoke('createProductConfigProduct', ent, {  });

  /**
   * Add Content To Product - ProductContent
   *
   * Requires productId, contentId, productContentTypeId
   * Returns productId[String], contentId[String], productContentTypeId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductContent(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createProductContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a ProductContentType - ProductContentType
   *
   * Requires 
   * Returns productContentTypeId[String]
   */
  Future<OfResult> createProductContentType(ProductContentType ent, ) =>
      client.invoke('createProductContentType', ent, {  });

  /**
   * Create ProductFeature-DataResource - ProductFeatureDataResource
   *
   * Requires dataResourceId, productFeatureId
   * Returns 
   */
  Future<OfResult> createProductFeatureDataResource(ProductFeatureDataResource ent, ) =>
      client.invoke('createProductFeatureDataResource', ent, {  });

  /**
   * Create a ProductGeo - ProductGeo
   *
   * Requires productId, geoId
   * Returns 
   */
  Future<OfResult> createProductGeo(ProductGeo ent, ) =>
      client.invoke('createProductGeo', ent, {  });

  /**
   * Create a ProductGlAccount - ProductGlAccount
   *
   * Requires productId, organizationPartyId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> createProductGlAccount(ProductGlAccount ent, ) =>
      client.invoke('createProductGlAccount', ent, {  });

  /**
   * Create ProductGroupOrder - ProductGroupOrder
   *
   * Requires 
   * Returns groupOrderId[String]
   */
  Future<OfResult> createProductGroupOrder(ProductGroupOrder ent, ) =>
      client.invoke('createProductGroupOrder', ent, {  });

  /**
   *  - 
   *
   * Requires productCategoryId, productFeatureIdByType, productFeatureSelectableByType
   * Returns productId[String]
   */
  Future<OfResult> createProductInCategory({@required String productCategoryId, String productId, String productTypeId, String primaryProductCategoryId, String facilityId, DateTime introductionDate, DateTime releaseDate, DateTime supportDiscontinuationDate, DateTime salesDiscontinuationDate, String salesDiscWhenNotAvail, String internalName, String brandName, String comments, String productName, String description, String longDescription, String priceDetailText, String smallImageUrl, String mediumImageUrl, String largeImageUrl, String detailImageUrl, String originalImageUrl, String detailScreen, String inventoryMessage, String inventoryItemTypeId, String requireInventory, String quantityUomId, Decimal quantityIncluded, int piecesIncluded, String requireAmount, Decimal fixedAmount, String amountUomTypeId, String weightUomId, Decimal shippingWeight, Decimal productWeight, String heightUomId, Decimal productHeight, Decimal shippingHeight, String widthUomId, Decimal productWidth, Decimal shippingWidth, String depthUomId, Decimal productDepth, Decimal shippingDepth, String diameterUomId, Decimal productDiameter, Decimal productRating, String ratingTypeEnum, String returnable, String taxable, String chargeShipping, String autoCreateKeywords, String includeInPromotions, String isVirtual, String isVariant, String virtualVariantMethodEnum, String originGeoId, String requirementMethodEnumId, int billOfMaterialLevel, Decimal reservMaxPersons, Decimal reserv2ndPPPerc, Decimal reservNthPPPerc, String configId, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String inShippingBox, String defaultShipmentBoxTypeId, String lotIdFilledIn, String orderDecimalQuantity, @required Map<String,dynamic> productFeatureIdByType, @required Map<String,dynamic> productFeatureSelectableByType, Decimal defaultPrice, Decimal averageCost, String currencyUomId}) =>
      client.invoke('createProductInCategory', null, { 'productCategoryId': productCategoryId, 'productId': productId, 'productTypeId': productTypeId, 'primaryProductCategoryId': primaryProductCategoryId, 'facilityId': facilityId, 'introductionDate': introductionDate, 'releaseDate': releaseDate, 'supportDiscontinuationDate': supportDiscontinuationDate, 'salesDiscontinuationDate': salesDiscontinuationDate, 'salesDiscWhenNotAvail': salesDiscWhenNotAvail, 'internalName': internalName, 'brandName': brandName, 'comments': comments, 'productName': productName, 'description': description, 'longDescription': longDescription, 'priceDetailText': priceDetailText, 'smallImageUrl': smallImageUrl, 'mediumImageUrl': mediumImageUrl, 'largeImageUrl': largeImageUrl, 'detailImageUrl': detailImageUrl, 'originalImageUrl': originalImageUrl, 'detailScreen': detailScreen, 'inventoryMessage': inventoryMessage, 'inventoryItemTypeId': inventoryItemTypeId, 'requireInventory': requireInventory, 'quantityUomId': quantityUomId, 'quantityIncluded': quantityIncluded, 'piecesIncluded': piecesIncluded, 'requireAmount': requireAmount, 'fixedAmount': fixedAmount, 'amountUomTypeId': amountUomTypeId, 'weightUomId': weightUomId, 'shippingWeight': shippingWeight, 'productWeight': productWeight, 'heightUomId': heightUomId, 'productHeight': productHeight, 'shippingHeight': shippingHeight, 'widthUomId': widthUomId, 'productWidth': productWidth, 'shippingWidth': shippingWidth, 'depthUomId': depthUomId, 'productDepth': productDepth, 'shippingDepth': shippingDepth, 'diameterUomId': diameterUomId, 'productDiameter': productDiameter, 'productRating': productRating, 'ratingTypeEnum': ratingTypeEnum, 'returnable': returnable, 'taxable': taxable, 'chargeShipping': chargeShipping, 'autoCreateKeywords': autoCreateKeywords, 'includeInPromotions': includeInPromotions, 'isVirtual': isVirtual, 'isVariant': isVariant, 'virtualVariantMethodEnum': virtualVariantMethodEnum, 'originGeoId': originGeoId, 'requirementMethodEnumId': requirementMethodEnumId, 'billOfMaterialLevel': billOfMaterialLevel, 'reservMaxPersons': reservMaxPersons, 'reserv2ndPPPerc': reserv2ndPPPerc, 'reservNthPPPerc': reservNthPPPerc, 'configId': configId, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'inShippingBox': inShippingBox, 'defaultShipmentBoxTypeId': defaultShipmentBoxTypeId, 'lotIdFilledIn': lotIdFilledIn, 'orderDecimalQuantity': orderDecimalQuantity, 'productFeatureIdByType': productFeatureIdByType, 'productFeatureSelectableByType': productFeatureSelectableByType, 'defaultPrice': defaultPrice, 'averageCost': averageCost, 'currencyUomId': currencyUomId });

  /**
   * Create a ProductKeyword - ProductKeyword
   *
   * Requires productId, keyword, keywordTypeId
   * Returns 
   */
  Future<OfResult> createProductKeyword(ProductKeyword ent, ) =>
      client.invoke('createProductKeyword', ent, {  });

  /**
   * Create a ProductMaint - ProductMaint
   *
   * Requires productId
   * Returns productMaintSeqId[String], productMaintSeqId[String]
   */
  Future<OfResult> createProductMaint(ProductMaint ent, ) =>
      client.invoke('createProductMaint', ent, {  });

  /**
   * Create a ProductMaintType - ProductMaintType
   *
   * Requires 
   * Returns productMaintTypeId[String]
   */
  Future<OfResult> createProductMaintType(ProductMaintType ent, ) =>
      client.invoke('createProductMaintType', ent, {  });

  /**
   * Create a ProductMeter - ProductMeter
   *
   * Requires productId, productMeterTypeId
   * Returns 
   */
  Future<OfResult> createProductMeter(ProductMeter ent, ) =>
      client.invoke('createProductMeter', ent, {  });

  /**
   * Create a ProductMeterType - ProductMeterType
   *
   * Requires 
   * Returns productMeterTypeId[String]
   */
  Future<OfResult> createProductMeterType(ProductMeterType ent, ) =>
      client.invoke('createProductMeterType', ent, {  });

  /**
   * Create an ProductPaymentMethodType - ProductPaymentMethodType
   *
   * Requires productId, paymentMethodTypeId, productPricePurposeId
   * Returns 
   */
  Future<OfResult> createProductPaymentMethodType(ProductPaymentMethodType ent, ) =>
      client.invoke('createProductPaymentMethodType', ent, {  });

  /**
   * 
            Create a Product Price. 
            
            If taxAuthGeoId and taxAuthPartyId are passed in then the price will be considered a price 
            with tax included (the priceWithoutTax, priceWithTax, taxAmount, and taxPercentage fields will also be populated).
            
            If the taxInPrice field is 'Y' then the price field will be left with the tax included (price will be equal to priceWithTax),
            otherwise tax will be removed from the passed in price and the price field will be equal to the priceWithoutTax field.
            
            If taxAuthGeoId or taxAuthPartyId empty then the taxInPrice field will be ignored.
         - ProductPrice
   *
   * Requires productId, productPriceTypeId, productPricePurposeId, currencyUomId, productStoreGroupId, price, price
   * Returns fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductPrice(ProductPrice ent, ) =>
      client.invoke('createProductPrice', ent, {  });

  /**
   * Create Product Promo Content - ProductPromoContent
   *
   * Requires productPromoId, contentId, productPromoContentTypeId
   * Returns productPromoId[String], contentId[String], productPromoContentTypeId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductPromoContent(ProductPromoContent ent, ) =>
      client.invoke('createProductPromoContent', ent, {  });

  /**
   * Create a product review entity - 
   *
   * Requires productStoreId, productId, productRating, productStoreId, productId, productRating
   * Returns productReviewId[String]
   */
  Future<OfResult> createProductReview({@required String productStoreId, @required String productId, String userLoginId, String statusId, String postedAnonymous, DateTime postedDateTime, @required Decimal productRating, String productReview}) =>
      client.invoke('createProductReview', null, { 'productStoreId': productStoreId, 'productId': productId, 'userLoginId': userLoginId, 'statusId': statusId, 'postedAnonymous': postedAnonymous, 'postedDateTime': postedDateTime, 'productRating': productRating, 'productReview': productReview });

  /**
   * Create a ProductType - ProductType
   *
   * Requires 
   * Returns productTypeId[String]
   */
  Future<OfResult> createProductType(ProductType ent, ) =>
      client.invoke('createProductType', ent, {  });

  /**
   * Create a ProductTypeAttr - ProductTypeAttr
   *
   * Requires productTypeId, attrName
   * Returns productTypeId[String], attrName[String]
   */
  Future<OfResult> createProductTypeAttr(ProductTypeAttr ent, ) =>
      client.invoke('createProductTypeAttr', ent, {  });

  /**
   * Create Related URL Content For Product Category - ProductCategoryContent
   *
   * Requires productCategoryId, prodCatContentTypeId, title, description, url
   * Returns 
   */
  Future<OfResult> createRelatedUrlContentForCategory(ProductCategoryContent ent, {@required String title, @required String description, @required String url, String localeString}) =>
      client.invoke('createRelatedUrlContentForCategory', ent, { 'title': title, 'description': description, 'url': url, 'localeString': localeString });

  /**
   *  - 
   *
   * Requires localeString, mainContentId, text, localeString
   * Returns contentId[String], contentId[String]
   */
  Future<OfResult> createSimpleTextContentForAlternateLocale({String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, @required String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String mainContentId, @required String text}) =>
      client.invoke('createSimpleTextContentForAlternateLocale', null, { 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'mainContentId': mainContentId, 'text': text });

  /**
   *  - ProductCategoryContent
   *
   * Requires productCategoryId, prodCatContentTypeId, text
   * Returns 
   */
  Future<OfResult> createSimpleTextContentForCategory(ProductCategoryContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String text}) =>
      client.invoke('createSimpleTextContentForCategory', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'text': text });

  /**
   *  - ProductContent
   *
   * Requires productId, productContentTypeId, text
   * Returns 
   */
  Future<OfResult> createSimpleTextContentForProduct(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String text}) =>
      client.invoke('createSimpleTextContentForProduct', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'text': text });

  /**
   *  - ProdConfItemContent
   *
   * Requires configItemId, text
   * Returns 
   */
  Future<OfResult> createSimpleTextContentForProductConfigItem(ProdConfItemContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String text}) =>
      client.invoke('createSimpleTextContentForProductConfigItem', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'text': text });

  /**
   * Create a new SupplierProduct record - SupplierProduct
   *
   * Requires productId, partyId, availableFromDate, minimumOrderQuantity, currencyUomId, lastPrice, supplierProductId, supplierProductId, lastPrice
   * Returns 
   */
  Future<OfResult> createSupplierProduct(SupplierProduct ent, ) =>
      client.invoke('createSupplierProduct', ent, {  });

  /**
   * Create a new SupplierProductFeature record - SupplierProductFeature
   *
   * Requires partyId, productFeatureId
   * Returns 
   */
  Future<OfResult> createSupplierProductFeature(SupplierProductFeature ent, ) =>
      client.invoke('createSupplierProductFeature', ent, {  });

  /**
   *  - VendorProduct
   *
   * Requires productId, vendorPartyId, productStoreGroupId
   * Returns 
   */
  Future<OfResult> createVendorProduct(VendorProduct ent, ) =>
      client.invoke('createVendorProduct', ent, {  });

  /**
   * Create a WebAnalyticsConfig - WebAnalyticsConfig
   *
   * Requires webSiteId, webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> createWebAnalyticsConfig(WebAnalyticsConfig ent, ) =>
      client.invoke('createWebAnalyticsConfig', ent, {  });

  /**
   * Create a WebAnalyticsType - WebAnalyticsType
   *
   * Requires webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> createWebAnalyticsType(WebAnalyticsType ent, ) =>
      client.invoke('createWebAnalyticsType', ent, {  });

  /**
   *  - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> deleteCustomerDigitalDownloadProduct({@required String productId}) =>
      client.invoke('deleteCustomerDigitalDownloadProduct', null, { 'productId': productId });

  /**
   * Delete a GoodIdentification - GoodIdentification
   *
   * Requires goodIdentificationTypeId, productId
   * Returns 
   */
  Future<OfResult> deleteGoodIdentification(GoodIdentification ent, ) =>
      client.invoke('deleteGoodIdentification', ent, {  });

  /**
   * Delete a GoodIdentificationType - GoodIdentificationType
   *
   * Requires goodIdentificationTypeId
   * Returns 
   */
  Future<OfResult> deleteGoodIdentificationType(GoodIdentificationType ent, ) =>
      client.invoke('deleteGoodIdentificationType', ent, {  });

  /**
   * Delete a Market Interest - MarketInterest
   *
   * Requires productCategoryId, partyClassificationGroupId, fromDate
   * Returns 
   */
  Future<OfResult> deleteMarketInterest(MarketInterest ent, ) =>
      client.invoke('deleteMarketInterest', ent, {  });

  /**
   * Delete an ProdCatalog - ProdCatalog
   *
   * Requires prodCatalogId
   * Returns 
   */
  Future<OfResult> deleteProdCatalog(ProdCatalog ent, ) =>
      client.invoke('deleteProdCatalog', ent, {  });

  /**
   * Delete ProdCatalogCategoryType Record - ProdCatalogCategoryType
   *
   * Requires prodCatalogCategoryTypeId
   * Returns 
   */
  Future<OfResult> deleteProdCatalogCategoryType(ProdCatalogCategoryType ent, ) =>
      client.invoke('deleteProdCatalogCategoryType', ent, {  });

  /**
   *  - ProductAssoc
   *
   * Requires productId, productIdTo, productAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductAssoc(ProductAssoc ent, ) =>
      client.invoke('deleteProductAssoc', ent, {  });

  /**
   * Delete a ProductAssocType - ProductAssocType
   *
   * Requires productAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteProductAssocType(ProductAssocType ent, ) =>
      client.invoke('deleteProductAssocType', ent, {  });

  /**
   * Delete a ProductAttribute - ProductAttribute
   *
   * Requires productId, attrName
   * Returns 
   */
  Future<OfResult> deleteProductAttribute(ProductAttribute ent, ) =>
      client.invoke('deleteProductAttribute', ent, {  });

  /**
   *  - ProductCategoryAttribute
   *
   * Requires productCategoryId, attrName
   * Returns 
   */
  Future<OfResult> deleteProductCategoryAttribute(ProductCategoryAttribute ent, ) =>
      client.invoke('deleteProductCategoryAttribute', ent, {  });

  /**
   * Delete a ProductCategoryContentType - ProductCategoryContentType
   *
   * Requires prodCatContentTypeId
   * Returns 
   */
  Future<OfResult> deleteProductCategoryContentType(ProductCategoryContentType ent, ) =>
      client.invoke('deleteProductCategoryContentType', ent, {  });

  /**
   * Delete a ProductCategoryGlAccount - ProductCategoryGlAccount
   *
   * Requires productCategoryId, organizationPartyId, glAccountTypeId
   * Returns 
   */
  Future<OfResult> deleteProductCategoryGlAccount(ProductCategoryGlAccount ent, ) =>
      client.invoke('deleteProductCategoryGlAccount', ent, {  });

  /**
   * Delete a ProductCategoryLink - ProductCategoryLink
   *
   * Requires productCategoryId, linkSeqId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductCategoryLink(ProductCategoryLink ent, ) =>
      client.invoke('deleteProductCategoryLink', ent, {  });

  /**
   * Delete a ProductCategoryType - ProductCategoryType
   *
   * Requires productCategoryTypeId
   * Returns 
   */
  Future<OfResult> deleteProductCategoryType(ProductCategoryType ent, ) =>
      client.invoke('deleteProductCategoryType', ent, {  });

  /**
   * Delete a ProductCategoryTypeAttr - ProductCategoryTypeAttr
   *
   * Requires productCategoryTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteProductCategoryTypeAttr(ProductCategoryTypeAttr ent, ) =>
      client.invoke('deleteProductCategoryTypeAttr', ent, {  });

  /**
   * Delete a ProductConfig - ProductConfig
   *
   * Requires productId, configItemId, sequenceNum, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductConfig(ProductConfig ent, ) =>
      client.invoke('deleteProductConfig', ent, {  });

  /**
   * Delete a ProductConfigItem - ProductConfigItem
   *
   * Requires configItemId
   * Returns 
   */
  Future<OfResult> deleteProductConfigItem(ProductConfigItem ent, ) =>
      client.invoke('deleteProductConfigItem', ent, {  });

  /**
   * Delete a Config Option - ProductConfigOption
   *
   * Requires configItemId, configOptionId
   * Returns 
   */
  Future<OfResult> deleteProductConfigOption(ProductConfigOption ent, ) =>
      client.invoke('deleteProductConfigOption', ent, {  });

  /**
   * Delete a ProductConfigProduct - ProductConfigProduct
   *
   * Requires configItemId, configOptionId, productId
   * Returns 
   */
  Future<OfResult> deleteProductConfigProduct(ProductConfigProduct ent, ) =>
      client.invoke('deleteProductConfigProduct', ent, {  });

  /**
   * Delete a ProductContentType - ProductContentType
   *
   * Requires productContentTypeId
   * Returns 
   */
  Future<OfResult> deleteProductContentType(ProductContentType ent, ) =>
      client.invoke('deleteProductContentType', ent, {  });

  /**
   * Delete a ProductGeo - ProductGeo
   *
   * Requires productId, geoId
   * Returns 
   */
  Future<OfResult> deleteProductGeo(ProductGeo ent, ) =>
      client.invoke('deleteProductGeo', ent, {  });

  /**
   * Delete a ProductGlAccount - ProductGlAccount
   *
   * Requires productId, organizationPartyId, glAccountTypeId
   * Returns 
   */
  Future<OfResult> deleteProductGlAccount(ProductGlAccount ent, ) =>
      client.invoke('deleteProductGlAccount', ent, {  });

  /**
   * Delete ProductGroupOrder - ProductGroupOrder
   *
   * Requires groupOrderId
   * Returns 
   */
  Future<OfResult> deleteProductGroupOrder(ProductGroupOrder ent, ) =>
      client.invoke('deleteProductGroupOrder', ent, {  });

  /**
   * Delete a ProductKeyword - ProductKeyword
   *
   * Requires productId, keyword, keywordTypeId
   * Returns 
   */
  Future<OfResult> deleteProductKeyword(ProductKeyword ent, ) =>
      client.invoke('deleteProductKeyword', ent, {  });

  /**
   * Delete all the keywords of a product - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> deleteProductKeywords({@required String productId}) =>
      client.invoke('deleteProductKeywords', null, { 'productId': productId });

  /**
   * Delete a ProductMaint - ProductMaint
   *
   * Requires productId, productMaintSeqId
   * Returns 
   */
  Future<OfResult> deleteProductMaint(ProductMaint ent, ) =>
      client.invoke('deleteProductMaint', ent, {  });

  /**
   * Delete a ProductMaintType - ProductMaintType
   *
   * Requires productMaintTypeId
   * Returns 
   */
  Future<OfResult> deleteProductMaintType(ProductMaintType ent, ) =>
      client.invoke('deleteProductMaintType', ent, {  });

  /**
   * Delete a ProductMeter - ProductMeter
   *
   * Requires productId, productMeterTypeId
   * Returns 
   */
  Future<OfResult> deleteProductMeter(ProductMeter ent, ) =>
      client.invoke('deleteProductMeter', ent, {  });

  /**
   * Delete a ProductMeterType - ProductMeterType
   *
   * Requires productMeterTypeId
   * Returns 
   */
  Future<OfResult> deleteProductMeterType(ProductMeterType ent, ) =>
      client.invoke('deleteProductMeterType', ent, {  });

  /**
   * Delete an ProductPaymentMethodType - ProductPaymentMethodType
   *
   * Requires productId, paymentMethodTypeId, productPricePurposeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductPaymentMethodType(ProductPaymentMethodType ent, ) =>
      client.invoke('deleteProductPaymentMethodType', ent, {  });

  /**
   * Delete an ProductPrice - ProductPrice
   *
   * Requires productId, productPriceTypeId, productPricePurposeId, currencyUomId, productStoreGroupId, fromDate
   * Returns oldPrice[BigDecimal]
   */
  Future<OfResult> deleteProductPrice(ProductPrice ent, ) =>
      client.invoke('deleteProductPrice', ent, {  });

  /**
   * Delete a ProductType - ProductType
   *
   * Requires productTypeId
   * Returns 
   */
  Future<OfResult> deleteProductType(ProductType ent, ) =>
      client.invoke('deleteProductType', ent, {  });

  /**
   * Delete a ProductTypeAttr - ProductTypeAttr
   *
   * Requires productTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteProductTypeAttr(ProductTypeAttr ent, ) =>
      client.invoke('deleteProductTypeAttr', ent, {  });

  /**
   *  - VendorProduct
   *
   * Requires productId, vendorPartyId, productStoreGroupId
   * Returns 
   */
  Future<OfResult> deleteVendorProduct(VendorProduct ent, ) =>
      client.invoke('deleteVendorProduct', ent, {  });

  /**
   * Delete a WebAnalyticsConfig - WebAnalyticsConfig
   *
   * Requires webSiteId, webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> deleteWebAnalyticsConfig(WebAnalyticsConfig ent, ) =>
      client.invoke('deleteWebAnalyticsConfig', ent, {  });

  /**
   * Delete a WebAnalyticsType - WebAnalyticsType
   *
   * Requires webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> deleteWebAnalyticsType(WebAnalyticsType ent, ) =>
      client.invoke('deleteWebAnalyticsType', ent, {  });

  /**
   * Discontinue Product Sales - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> discontinueProductSales({@required String productId}) =>
      client.invoke('discontinueProductSales', null, { 'productId': productId });

  /**
   * Duplicates a named entity from one productCategoryId to another - 
   *
   * Requires productCategoryId, productCategoryIdTo, entityName
   * Returns 
   */
  Future<OfResult> duplicateCategoryEntities({@required String productCategoryId, @required String productCategoryIdTo, @required String entityName, DateTime validDate}) =>
      client.invoke('duplicateCategoryEntities', null, { 'productCategoryId': productCategoryId, 'productCategoryIdTo': productCategoryIdTo, 'entityName': entityName, 'validDate': validDate });

  /**
   * Duplicate a Product using a new productId - 
   *
   * Requires productId, oldProductId
   * Returns 
   */
  Future<OfResult> duplicateProduct({@required String productId, @required String oldProductId, String newInternalName, String newProductName, String newDescription, String newLongDescription, String duplicatePrices, String duplicateIDs, String duplicateContent, String duplicateCategoryMembers, String duplicateAssocs, String duplicateAttributes, String duplicateFeatureAppls, String duplicateInventoryItems, String removePrices, String removeIDs, String removeContent, String removeCategoryMembers, String removeAssocs, String removeAttributes, String removeFeatureAppls, String removeInventoryItems}) =>
      client.invoke('duplicateProduct', null, { 'productId': productId, 'oldProductId': oldProductId, 'newInternalName': newInternalName, 'newProductName': newProductName, 'newDescription': newDescription, 'newLongDescription': newLongDescription, 'duplicatePrices': duplicatePrices, 'duplicateIDs': duplicateIDs, 'duplicateContent': duplicateContent, 'duplicateCategoryMembers': duplicateCategoryMembers, 'duplicateAssocs': duplicateAssocs, 'duplicateAttributes': duplicateAttributes, 'duplicateFeatureAppls': duplicateFeatureAppls, 'duplicateInventoryItems': duplicateInventoryItems, 'removePrices': removePrices, 'removeIDs': removeIDs, 'removeContent': removeContent, 'removeCategoryMembers': removeCategoryMembers, 'removeAssocs': removeAssocs, 'removeAttributes': removeAttributes, 'removeFeatureAppls': removeFeatureAppls, 'removeInventoryItems': removeInventoryItems });

  /**
   * Duplicate a Product Category using from oldProductCategoryId to a new productCategoryId - 
   *
   * Requires productCategoryId, oldProductCategoryId
   * Returns 
   */
  Future<OfResult> duplicateProductCategory({@required String productCategoryId, @required String oldProductCategoryId, String duplicateContent, String duplicateParentRollup, String duplicateChildRollup, String duplicateMembers, String duplicateCatalogs, String duplicateFeatureCategories, String duplicateFeatureGroups, String duplicateAttributes, String duplicateRoles}) =>
      client.invoke('duplicateProductCategory', null, { 'productCategoryId': productCategoryId, 'oldProductCategoryId': oldProductCategoryId, 'duplicateContent': duplicateContent, 'duplicateParentRollup': duplicateParentRollup, 'duplicateChildRollup': duplicateChildRollup, 'duplicateMembers': duplicateMembers, 'duplicateCatalogs': duplicateCatalogs, 'duplicateFeatureCategories': duplicateFeatureCategories, 'duplicateFeatureGroups': duplicateFeatureGroups, 'duplicateAttributes': duplicateAttributes, 'duplicateRoles': duplicateRoles });

  /**
   * Expire a ProdCatalogInvFacility Record - ProdCatalogInvFacility
   *
   * Requires prodCatalogId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> expireProdCatalogInvFacility(ProdCatalogInvFacility ent, ) =>
      client.invoke('expireProdCatalogInvFacility', ent, {  });

  /**
   * Finds productId(s) corresponding to a product reference, productId or a GoodIdentification idValue - 
   *
   * Requires idToFind
   * Returns product[org.apache.ofbiz.entity.GenericValue], productsList[List]
   */
  Future<OfResult> findProductById({@required String idToFind, String goodIdentificationTypeId, String searchProductFirst, String searchAllId}) =>
      client.invoke('findProductById', null, { 'idToFind': idToFind, 'goodIdentificationTypeId': goodIdentificationTypeId, 'searchProductFirst': searchProductFirst, 'searchAllId': searchAllId });

  /**
   * Induce all the keywords of a product, ignoring the flag in the Product.autoCreateKeywords flag - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> forceIndexProductKeywords({@required String productId}) =>
      client.invoke('forceIndexProductKeywords', null, { 'productId': productId });

  /**
   * 
            Takes a productId and a List of ProductFeatureAndAppl entities and returns a List of productIds which are
            existing varaints with those features applied.
         - 
   *
   * Requires productId, productFeatureAppls
   * Returns variantProductIds[List]
   */
  Future<OfResult> getAllExistingVariants({@required String productId, @required List<dynamic> productFeatureAppls}) =>
      client.invoke('getAllExistingVariants', null, { 'productId': productId, 'productFeatureAppls': productFeatureAppls });

  /**
   * Takes a productCategoryId and a list of product features and resolves all the product category's
             product members from virtual to variant - 
   *
   * Requires productCategoryId, productFeatures
   * Returns products[java.util.List]
   */
  Future<OfResult> getCategoryVariantProducts({@required String productCategoryId, @required List<dynamic> productFeatures}) =>
      client.invoke('getCategoryVariantProducts', null, { 'productCategoryId': productCategoryId, 'productFeatures': productFeatures });

  /**
   * 
            Returns a map of productFeatureTypeId -> List of ProductFeatures.  If supplied with a productFeatureCategoryId,
            the returned result is that of all product features in that category.  Otherwise, if supplied with a productFeatureGroupId,
            the result is all features of that feature group.  Otherwise, if there is a productId, the returned result is that of all features
            applied to that product.  If the optional productFeatureApplTypeId is specified, only features with application of that type
            will be returned (this would only make sense along with a productId parameter.)
         - 
   *
   * Requires 
   * Returns productFeatureTypes[List], productFeaturesByType[Map]
   */
  Future<OfResult> getProductFeaturesByType({String productFeatureCategoryId, String productFeatureGroupId, String productId, String productFeatureApplTypeId}) =>
      client.invoke('getProductFeaturesByType', null, { 'productFeatureCategoryId': productFeatureCategoryId, 'productFeatureGroupId': productFeatureGroupId, 'productId': productId, 'productFeatureApplTypeId': productFeatureApplTypeId });

  /**
   * Finds a list of SupplierProductFeature entities based on the productFeatureId.
            If a partyId is given, only product feature information for that supplier party is returned. - 
   *
   * Requires productFeatureId
   * Returns supplierProductFeatures[java.util.List]
   */
  Future<OfResult> getSupplierProductFeatures({@required String productFeatureId, String partyId}) =>
      client.invoke('getSupplierProductFeatures', null, { 'productFeatureId': productFeatureId, 'partyId': partyId });

  /**
   * 
            For a product, returns a List of all possible product feature combinations, based on all SELECTABLE features which
            are applied to the product.  featureCombinations is a List of Maps with the following fields:
                defaultVariantProductId -> default productId for the variant, based on idCodes of the features
                curProductFeatureAndAppls -> List of product features to be applied to this variant
                existingVariantProductIds -> List of productIds of variants which already have these features
         - 
   *
   * Requires productId
   * Returns featureCombinations[List]
   */
  Future<OfResult> getVariantCombinations({@required String productId}) =>
      client.invoke('getVariantCombinations', null, { 'productId': productId });

  /**
   * Crop Image - 
   *
   * Requires productId, imageName, imageX, imageY, imageW, imageH
   * Returns 
   */
  Future<OfResult> imageCrop({@required String productId, @required String imageName, @required String imageX, @required String imageY, @required String imageW, @required String imageH}) =>
      client.invoke('imageCrop', null, { 'productId': productId, 'imageName': imageName, 'imageX': imageX, 'imageY': imageY, 'imageW': imageW, 'imageH': imageH });

  /**
   * Rotate Image - 
   *
   * Requires productId, imageName, angle
   * Returns 
   */
  Future<OfResult> imageRotate({@required String productId, @required String imageName, @required String angle}) =>
      client.invoke('imageRotate', null, { 'productId': productId, 'imageName': imageName, 'angle': angle });

  /**
   * Index the Keywords for a Product - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> indexProductKeywords({@required String productId, Map<String,dynamic> productInstance}) =>
      client.invoke('indexProductKeywords', null, { 'productId': productId, 'productInstance': productInstance });

  /**
   *  - Product
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> interfaceProduct(Product ent, ) =>
      client.invoke('interfaceProduct', ent, {  });

  /**
   * Load data of best selling category by week. - 
   *
   * Requires productStoreId
   * Returns 
   */
  Future<OfResult> loadBestSellingCategory({@required String productStoreId}) =>
      client.invoke('loadBestSellingCategory', null, { 'productStoreId': productStoreId });

  /**
   * ProdCatalogToParty Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> prodCatalogToPartyPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('prodCatalogToPartyPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> productCategoryGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('productCategoryGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> productGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('productGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Create product and inventory item - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> productImportFromSpreadsheet({String dirName}) =>
      client.invoke('productImportFromSpreadsheet', null, { 'dirName': dirName });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> productPriceGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('productPriceGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Create a new product variant - 
   *
   * Requires productId, productFeatureIds, productVariantId
   * Returns productVariantId[String]
   */
  Future<OfResult> quickAddVariant({@required String productId, @required String productFeatureIds, @required String productVariantId, int sequenceNum}) =>
      client.invoke('quickAddVariant', null, { 'productId': productId, 'productFeatureIds': productFeatureIds, 'productVariantId': productVariantId, 'sequenceNum': sequenceNum });

  /**
   * 
            This will create a virtual product and return its ID, and associate all of the variants with it.
            It will not put the selectable features on the virtual or standard features on the variant.
         - 
   *
   * Requires variantProductIdsBag
   * Returns productId[String]
   */
  Future<OfResult> quickCreateVirtualWithVariants({String productId, @required String variantProductIdsBag, String productFeatureIdOne, String productFeatureIdTwo, String productFeatureIdThree}) =>
      client.invoke('quickCreateVirtualWithVariants', null, { 'productId': productId, 'variantProductIdsBag': variantProductIdsBag, 'productFeatureIdOne': productFeatureIdOne, 'productFeatureIdTwo': productFeatureIdTwo, 'productFeatureIdThree': productFeatureIdThree });

  /**
   * Remove Content From Category - ProductCategoryContent
   *
   * Requires productCategoryId, contentId, prodCatContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeCategoryContent(ProductCategoryContent ent, ) =>
      client.invoke('removeCategoryContent', ent, {  });

  /**
   * Remove a Communication Event Product - CommunicationEventProduct
   *
   * Requires productId, communicationEventId
   * Returns 
   */
  Future<OfResult> removeCommunicationEventProduct(CommunicationEventProduct ent, ) =>
      client.invoke('removeCommunicationEventProduct', ent, {  });

  /**
   *  - 
   *
   * Requires contentId, productId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeCustomerDigitalDownloadProductFile({@required String contentId, @required String productId, @required String productContentTypeId, @required DateTime fromDate}) =>
      client.invoke('removeCustomerDigitalDownloadProductFile', null, { 'contentId': contentId, 'productId': productId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate });

  /**
   * Remove Image By Size. - 
   *
   * Requires productId, mapKey
   * Returns 
   */
  Future<OfResult> removeImageBySize({@required String productId, @required String mapKey}) =>
      client.invoke('removeImageBySize', null, { 'productId': productId, 'mapKey': mapKey });

  /**
   *  - 
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> removeImageContentApproval({@required String partyId}) =>
      client.invoke('removeImageContentApproval', null, { 'partyId': partyId });

  /**
   * Delete Image File - 
   *
   * Requires productId, contentId, objectInfo, dataResourceName
   * Returns 
   */
  Future<OfResult> removeImageFileForImageManagement({@required String productId, @required String contentId, @required String objectInfo, @required String dataResourceName}) =>
      client.invoke('removeImageFileForImageManagement', null, { 'productId': productId, 'contentId': contentId, 'objectInfo': objectInfo, 'dataResourceName': dataResourceName });

  /**
   * Remove Party From Category - 
   *
   * Requires productCategoryId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removePartyFromCategory({@required String productCategoryId, @required String partyId, @required String roleTypeId, @required DateTime fromDate}) =>
      client.invoke('removePartyFromCategory', null, { 'productCategoryId': productCategoryId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate });

  /**
   * Remove Party From Product - 
   *
   * Requires productId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removePartyFromProduct({@required String productId, @required String partyId, @required String roleTypeId, @required DateTime fromDate}) =>
      client.invoke('removePartyFromProduct', null, { 'productId': productId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate });

  /**
   * Remove ProdCatalog From Party - ProdCatalogRole
   *
   * Requires partyId, roleTypeId, prodCatalogId, fromDate
   * Returns 
   */
  Future<OfResult> removeProdCatalogFromParty(ProdCatalogRole ent, ) =>
      client.invoke('removeProdCatalogFromParty', ent, {  });

  /**
   * Remove ProductCategory From Category - 
   *
   * Requires productCategoryId, parentProductCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductCategoryFromCategory({@required String productCategoryId, @required String parentProductCategoryId, @required DateTime fromDate}) =>
      client.invoke('removeProductCategoryFromCategory', null, { 'productCategoryId': productCategoryId, 'parentProductCategoryId': parentProductCategoryId, 'fromDate': fromDate });

  /**
   * Remove ProductCategory From ProdCatalog - ProdCatalogCategory
   *
   * Requires prodCatalogId, productCategoryId, prodCatalogCategoryTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductCategoryFromProdCatalog(ProdCatalogCategory ent, ) =>
      client.invoke('removeProductCategoryFromProdCatalog', ent, {  });

  /**
   * Remove Content From ProductConfigItem - ProdConfItemContent
   *
   * Requires configItemId, contentId, confItemContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductConfigItemContent(ProdConfItemContent ent, ) =>
      client.invoke('removeProductConfigItemContent', ent, {  });

  /**
   * Remove Content From Product - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductContent(ProductContent ent, ) =>
      client.invoke('removeProductContent', ent, {  });

  /**
   * Remove Content From Product and File Image - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductContentAndImageFile(ProductContent ent, ) =>
      client.invoke('removeProductContentAndImageFile', ent, {  });

  /**
   * Delete Product Content Relationship Entity - 
   *
   * Requires contentId, productId
   * Returns 
   */
  Future<OfResult> removeProductContentForImageManagement({@required String contentId, @required String productId}) =>
      client.invoke('removeProductContentForImageManagement', null, { 'contentId': contentId, 'productId': productId });

  /**
   * Remove ProductFeature-DataResource - ProductFeatureDataResource
   *
   * Requires dataResourceId, productFeatureId
   * Returns 
   */
  Future<OfResult> removeProductFeatureDataResource(ProductFeatureDataResource ent, ) =>
      client.invoke('removeProductFeatureDataResource', ent, {  });

  /**
   * Remove Product From Category - ProductCategoryMember
   *
   * Requires productCategoryId, productId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductFromCategory(ProductCategoryMember ent, ) =>
      client.invoke('removeProductFromCategory', ent, {  });

  /**
   * Cancel by the thru date a Product Promo Content - ProductPromoContent
   *
   * Requires productPromoId, contentId, productPromoContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductPromoContent(ProductPromoContent ent, ) =>
      client.invoke('removeProductPromoContent', ent, {  });

  /**
   * Remove a SupplierProduct record - SupplierProduct
   *
   * Requires productId, partyId, availableFromDate, minimumOrderQuantity, currencyUomId
   * Returns 
   */
  Future<OfResult> removeSupplierProduct(SupplierProduct ent, ) =>
      client.invoke('removeSupplierProduct', ent, {  });

  /**
   * Remove a SupplierProduct record - SupplierProductFeature
   *
   * Requires partyId, productFeatureId
   * Returns 
   */
  Future<OfResult> removeSupplierProductFeature(SupplierProductFeature ent, ) =>
      client.invoke('removeSupplierProductFeature', ent, {  });

  /**
   * Rename Image. - 
   *
   * Requires productId, contentId, drDataResourceName
   * Returns 
   */
  Future<OfResult> renameImage({@required String productId, @required String contentId, @required String drDataResourceName}) =>
      client.invoke('renameImage', null, { 'productId': productId, 'contentId': contentId, 'drDataResourceName': drDataResourceName });

  /**
   * Resize Image Of Product. - 
   *
   * Requires productId, contentIdExist, contentIdReplace, dataResourceNameExist, dataResourceNameReplace
   * Returns 
   */
  Future<OfResult> replaceImageToExistImage({@required String productId, @required String contentIdExist, @required String contentIdReplace, @required String dataResourceNameExist, @required String dataResourceNameReplace}) =>
      client.invoke('replaceImageToExistImage', null, { 'productId': productId, 'contentIdExist': contentIdExist, 'contentIdReplace': contentIdReplace, 'dataResourceNameExist': dataResourceNameExist, 'dataResourceNameReplace': dataResourceNameReplace });

  /**
   * Resize Image Of Product. - 
   *
   * Requires productId, dataResourceName, resizeWidth
   * Returns 
   */
  Future<OfResult> resizeImageOfProduct({@required String productId, @required String dataResourceName, @required String resizeWidth}) =>
      client.invoke('resizeImageOfProduct', null, { 'productId': productId, 'dataResourceName': dataResourceName, 'resizeWidth': resizeWidth });

  /**
   * Resize Images. - 
   *
   * Requires resizeOption, productId, size
   * Returns 
   */
  Future<OfResult> resizeImages({@required String resizeOption, @required String productId, @required String size}) =>
      client.invoke('resizeImages', null, { 'resizeOption': resizeOption, 'productId': productId, 'size': size });

  /**
   * Safe Add ProductCategory To Category (requires fromDate) - 
   *
   * Requires productCategoryId, parentProductCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> safeAddProductCategoryToCategory({@required String productCategoryId, @required String parentProductCategoryId, @required DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('safeAddProductCategoryToCategory', null, { 'productCategoryId': productCategoryId, 'parentProductCategoryId': parentProductCategoryId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

  /**
   * Add Product To Category - ProductCategoryMember
   *
   * Requires productCategoryId, productId, fromDate
   * Returns 
   */
  Future<OfResult> safeAddProductToCategory(ProductCategoryMember ent, ) =>
      client.invoke('safeAddProductToCategory', ent, {  });

  /**
   * Save History of a ProductPrice Change - ProductPrice
   *
   * Requires productId, productPriceTypeId, productPricePurposeId, currencyUomId, productStoreGroupId, fromDate
   * Returns productPriceChangeId[String]
   */
  Future<OfResult> saveProductPriceChange(ProductPrice ent, {Decimal oldPrice}) =>
      client.invoke('saveProductPriceChange', ent, { 'oldPrice': oldPrice });

  /**
   *  - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> setImageDetail(ProductContent ent, {String drIsPublic, String description}) =>
      client.invoke('setImageDetail', ent, { 'drIsPublic': drIsPublic, 'description': description });

  /**
   * Updates a product review record - 
   *
   * Requires productReviewId, statusId
   * Returns productReviewId[String]
   */
  Future<OfResult> setProductReviewStatus({@required String productReviewId, @required String statusId}) =>
      client.invoke('setProductReviewStatus', null, { 'productReviewId': productReviewId, 'statusId': statusId });

  /**
   * Update Content To Category - ProductCategoryContent
   *
   * Requires productCategoryId, contentId, prodCatContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateCategoryContent(ProductCategoryContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('updateCategoryContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Update SEO Content For Product Category - 
   *
   * Requires productCategoryId
   * Returns 
   */
  Future<OfResult> updateContentSEOForCategory({@required String productCategoryId, String title, String metaKeyword, String metaDescription}) =>
      client.invoke('updateContentSEOForCategory', null, { 'productCategoryId': productCategoryId, 'title': title, 'metaKeyword': metaKeyword, 'metaDescription': metaDescription });

  /**
   * Update Product SEO - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> updateContentSEOForProduct({@required String productId, String title, String metaKeyword, String metaDescription}) =>
      client.invoke('updateContentSEOForProduct', null, { 'productId': productId, 'title': title, 'metaKeyword': metaKeyword, 'metaDescription': metaDescription });

  /**
   *  - 
   *
   * Requires productId, currencyUomId, minimumOrderQuantity, availableFromDate
   * Returns 
   */
  Future<OfResult> updateCustomerDigitalDownloadProduct({@required String productId, @required String currencyUomId, @required Decimal minimumOrderQuantity, @required DateTime availableFromDate, String productName, String description, Decimal price}) =>
      client.invoke('updateCustomerDigitalDownloadProduct', null, { 'productId': productId, 'currencyUomId': currencyUomId, 'minimumOrderQuantity': minimumOrderQuantity, 'availableFromDate': availableFromDate, 'productName': productName, 'description': description, 'price': price });

  /**
   *  - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateDownloadContentForProduct(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String fileDataResourceId, String file}) =>
      client.invoke('updateDownloadContentForProduct', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'fileDataResourceId': fileDataResourceId, 'file': file });

  /**
   *  - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateEmailContentForProduct(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String subjectDataResourceId, String subject, String plainBodyDataResourceId, String plainBody, String htmlBodyDataResourceId, String htmlBody}) =>
      client.invoke('updateEmailContentForProduct', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'subjectDataResourceId': subjectDataResourceId, 'subject': subject, 'plainBodyDataResourceId': plainBodyDataResourceId, 'plainBody': plainBody, 'htmlBodyDataResourceId': htmlBodyDataResourceId, 'htmlBody': htmlBody });

  /**
   * Update a GoodIdentification - GoodIdentification
   *
   * Requires goodIdentificationTypeId, productId, idValue
   * Returns 
   */
  Future<OfResult> updateGoodIdentification(GoodIdentification ent, ) =>
      client.invoke('updateGoodIdentification', ent, {  });

  /**
   * Update a GoodIdentificationType - GoodIdentificationType
   *
   * Requires goodIdentificationTypeId
   * Returns 
   */
  Future<OfResult> updateGoodIdentificationType(GoodIdentificationType ent, ) =>
      client.invoke('updateGoodIdentificationType', ent, {  });

  /**
   * Update a Market Interest - MarketInterest
   *
   * Requires productCategoryId, partyClassificationGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateMarketInterest(MarketInterest ent, ) =>
      client.invoke('updateMarketInterest', ent, {  });

  /**
   * Update Party To Category - 
   *
   * Requires productCategoryId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyToCategory({@required String productCategoryId, @required String partyId, @required String roleTypeId, @required DateTime fromDate, DateTime thruDate, String comments}) =>
      client.invoke('updatePartyToCategory', null, { 'productCategoryId': productCategoryId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'comments': comments });

  /**
   * Update Party To Product - 
   *
   * Requires productId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyToProduct({@required String productId, @required String partyId, @required String roleTypeId, @required DateTime fromDate, DateTime thruDate, int sequenceNum, String comments}) =>
      client.invoke('updatePartyToProduct', null, { 'productId': productId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum, 'comments': comments });

  /**
   * Update an ProdCatalog - ProdCatalog
   *
   * Requires prodCatalogId, catalogName, catalogName
   * Returns 
   */
  Future<OfResult> updateProdCatalog(ProdCatalog ent, ) =>
      client.invoke('updateProdCatalog', ent, {  });

  /**
   * Update ProdCatalogCategoryType record - ProdCatalogCategoryType
   *
   * Requires prodCatalogCategoryTypeId
   * Returns 
   */
  Future<OfResult> updateProdCatalogCategoryType(ProdCatalogCategoryType ent, ) =>
      client.invoke('updateProdCatalogCategoryType', ent, {  });

  /**
   * Update a ProdCatalogInvFacility - ProdCatalogInvFacility
   *
   * Requires prodCatalogId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> updateProdCatalogInvFacility(ProdCatalogInvFacility ent, ) =>
      client.invoke('updateProdCatalogInvFacility', ent, {  });

  /**
   * Add ProdCatalog To Party - ProdCatalogRole
   *
   * Requires partyId, roleTypeId, prodCatalogId, fromDate
   * Returns 
   */
  Future<OfResult> updateProdCatalogToParty(ProdCatalogRole ent, ) =>
      client.invoke('updateProdCatalogToParty', ent, {  });

  /**
   * Update a Product - Product
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> updateProduct(Product ent, ) =>
      client.invoke('updateProduct', ent, {  });

  /**
   *  - ProductAssoc
   *
   * Requires productId, productIdTo, productAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductAssoc(ProductAssoc ent, ) =>
      client.invoke('updateProductAssoc', ent, {  });

  /**
   * Update a ProductAssocType - ProductAssocType
   *
   * Requires productAssocTypeId
   * Returns 
   */
  Future<OfResult> updateProductAssocType(ProductAssocType ent, ) =>
      client.invoke('updateProductAssocType', ent, {  });

  /**
   * Update a ProductAttribute - ProductAttribute
   *
   * Requires productId, attrName
   * Returns 
   */
  Future<OfResult> updateProductAttribute(ProductAttribute ent, ) =>
      client.invoke('updateProductAttribute', ent, {  });

  /**
   * Update an ProductCategory - ProductCategory
   *
   * Requires productCategoryId, productCategoryTypeId, productCategoryTypeId
   * Returns 
   */
  Future<OfResult> updateProductCategory(ProductCategory ent, ) =>
      client.invoke('updateProductCategory', ent, {  });

  /**
   *  - ProductCategoryAttribute
   *
   * Requires productCategoryId, attrName
   * Returns 
   */
  Future<OfResult> updateProductCategoryAttribute(ProductCategoryAttribute ent, ) =>
      client.invoke('updateProductCategoryAttribute', ent, {  });

  /**
   * Update a ProductCategoryContentType - ProductCategoryContentType
   *
   * Requires prodCatContentTypeId
   * Returns 
   */
  Future<OfResult> updateProductCategoryContentType(ProductCategoryContentType ent, ) =>
      client.invoke('updateProductCategoryContentType', ent, {  });

  /**
   * Update a ProductCategoryGlAccount - ProductCategoryGlAccount
   *
   * Requires productCategoryId, organizationPartyId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> updateProductCategoryGlAccount(ProductCategoryGlAccount ent, ) =>
      client.invoke('updateProductCategoryGlAccount', ent, {  });

  /**
   * Update a ProductCategoryLink - ProductCategoryLink
   *
   * Requires productCategoryId, linkSeqId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductCategoryLink(ProductCategoryLink ent, ) =>
      client.invoke('updateProductCategoryLink', ent, {  });

  /**
   * Update ProductCategory To Category - 
   *
   * Requires productCategoryId, parentProductCategoryId, fromDate
   * Returns productCategoryId[String]
   */
  Future<OfResult> updateProductCategoryToCategory({@required String productCategoryId, @required String parentProductCategoryId, @required DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('updateProductCategoryToCategory', null, { 'productCategoryId': productCategoryId, 'parentProductCategoryId': parentProductCategoryId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

  /**
   * Add ProductCategory To ProdCatalog - ProdCatalogCategory
   *
   * Requires prodCatalogId, productCategoryId, prodCatalogCategoryTypeId, fromDate, prodCatalogCategoryTypeId
   * Returns 
   */
  Future<OfResult> updateProductCategoryToProdCatalog(ProdCatalogCategory ent, ) =>
      client.invoke('updateProductCategoryToProdCatalog', ent, {  });

  /**
   * Update a GlFiscalType - ProductCategoryType
   *
   * Requires productCategoryTypeId
   * Returns 
   */
  Future<OfResult> updateProductCategoryType(ProductCategoryType ent, ) =>
      client.invoke('updateProductCategoryType', ent, {  });

  /**
   * Update a ProductCategoryTypeAttr - ProductCategoryTypeAttr
   *
   * Requires productCategoryTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateProductCategoryTypeAttr(ProductCategoryTypeAttr ent, ) =>
      client.invoke('updateProductCategoryTypeAttr', ent, {  });

  /**
   * Update a ProductConfig - ProductConfig
   *
   * Requires productId, configItemId, sequenceNum, fromDate
   * Returns 
   */
  Future<OfResult> updateProductConfig(ProductConfig ent, ) =>
      client.invoke('updateProductConfig', ent, {  });

  /**
   * Update a ProductConfigItem - ProductConfigItem
   *
   * Requires configItemId
   * Returns 
   */
  Future<OfResult> updateProductConfigItem(ProductConfigItem ent, ) =>
      client.invoke('updateProductConfigItem', ent, {  });

  /**
   * Update Content To ProductConfigItem - ProdConfItemContent
   *
   * Requires configItemId, contentId, confItemContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductConfigItemContent(ProdConfItemContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('updateProductConfigItemContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Update a Config Option - ProductConfigOption
   *
   * Requires configItemId, configOptionId
   * Returns 
   */
  Future<OfResult> updateProductConfigOption(ProductConfigOption ent, ) =>
      client.invoke('updateProductConfigOption', ent, {  });

  /**
   * Update a ProductConfigProduct - ProductConfigProduct
   *
   * Requires configItemId, configOptionId, productId
   * Returns 
   */
  Future<OfResult> updateProductConfigProduct(ProductConfigProduct ent, ) =>
      client.invoke('updateProductConfigProduct', ent, {  });

  /**
   * Update Content To Product - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductContent(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('updateProductContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Update a ProductContentType - ProductContentType
   *
   * Requires productContentTypeId
   * Returns 
   */
  Future<OfResult> updateProductContentType(ProductContentType ent, ) =>
      client.invoke('updateProductContentType', ent, {  });

  /**
   * Update a ProductGeo - ProductGeo
   *
   * Requires productId, geoId
   * Returns 
   */
  Future<OfResult> updateProductGeo(ProductGeo ent, ) =>
      client.invoke('updateProductGeo', ent, {  });

  /**
   * Update a ProductGlAccount - ProductGlAccount
   *
   * Requires productId, organizationPartyId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> updateProductGlAccount(ProductGlAccount ent, ) =>
      client.invoke('updateProductGlAccount', ent, {  });

  /**
   * Update ProductGroupOrder - ProductGroupOrder
   *
   * Requires groupOrderId
   * Returns 
   */
  Future<OfResult> updateProductGroupOrder(ProductGroupOrder ent, ) =>
      client.invoke('updateProductGroupOrder', ent, {  });

  /**
   * 
            If property is set (catalog.properties) this will re-activate (null discountinue date) on the product
            if inventory is available. Triggered via ECA by shipment receipt services
         - 
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> updateProductIfAvailableFromShipment({@required String inventoryItemId}) =>
      client.invoke('updateProductIfAvailableFromShipment', null, { 'inventoryItemId': inventoryItemId });

  /**
   * Update a ProductKeyword - ProductKeyword
   *
   * Requires productId, keyword, keywordTypeId
   * Returns 
   */
  Future<OfResult> updateProductKeyword(ProductKeyword ent, ) =>
      client.invoke('updateProductKeyword', ent, {  });

  /**
   * Update a ProductMaint - ProductMaint
   *
   * Requires productId, productMaintSeqId
   * Returns 
   */
  Future<OfResult> updateProductMaint(ProductMaint ent, ) =>
      client.invoke('updateProductMaint', ent, {  });

  /**
   * Update a ProductMaintType - ProductMaintType
   *
   * Requires productMaintTypeId
   * Returns 
   */
  Future<OfResult> updateProductMaintType(ProductMaintType ent, ) =>
      client.invoke('updateProductMaintType', ent, {  });

  /**
   * Update a ProductMeter - ProductMeter
   *
   * Requires productId, productMeterTypeId
   * Returns 
   */
  Future<OfResult> updateProductMeter(ProductMeter ent, ) =>
      client.invoke('updateProductMeter', ent, {  });

  /**
   * Update a ProductMeterType - ProductMeterType
   *
   * Requires productMeterTypeId
   * Returns 
   */
  Future<OfResult> updateProductMeterType(ProductMeterType ent, ) =>
      client.invoke('updateProductMeterType', ent, {  });

  /**
   * Update an ProductPaymentMethodType - ProductPaymentMethodType
   *
   * Requires productId, paymentMethodTypeId, productPricePurposeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductPaymentMethodType(ProductPaymentMethodType ent, ) =>
      client.invoke('updateProductPaymentMethodType', ent, {  });

  /**
   * Update an ProductPrice - ProductPrice
   *
   * Requires productId, productPriceTypeId, productPricePurposeId, currencyUomId, productStoreGroupId, fromDate, price, price
   * Returns oldPrice[BigDecimal]
   */
  Future<OfResult> updateProductPrice(ProductPrice ent, ) =>
      client.invoke('updateProductPrice', ent, {  });

  /**
   * Update Product Promo Content - ProductPromoContent
   *
   * Requires productPromoId, contentId, productPromoContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductPromoContent(ProductPromoContent ent, ) =>
      client.invoke('updateProductPromoContent', ent, {  });

  /**
   * Update a Product from Quick Admin - Product
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> updateProductQuickAdminName(Product ent, ) =>
      client.invoke('updateProductQuickAdminName', ent, {  });

  /**
   * Update product characteristics from Quick Admin - Product
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> updateProductQuickAdminShipping(Product ent, ) =>
      client.invoke('updateProductQuickAdminShipping', ent, {  });

  /**
   * Updates a product review record - ProductReview
   *
   * Requires productReviewId
   * Returns 
   */
  Future<OfResult> updateProductReview(ProductReview ent, ) =>
      client.invoke('updateProductReview', ent, {  });

  /**
   * Update a ProductCategoryMember - ProductCategoryMember
   *
   * Requires productCategoryId, productId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductToCategory(ProductCategoryMember ent, ) =>
      client.invoke('updateProductToCategory', ent, {  });

  /**
   * Update a ProductType - ProductType
   *
   * Requires productTypeId
   * Returns 
   */
  Future<OfResult> updateProductType(ProductType ent, ) =>
      client.invoke('updateProductType', ent, {  });

  /**
   * Update a ProductTypeAttr - ProductTypeAttr
   *
   * Requires productTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateProductTypeAttr(ProductTypeAttr ent, ) =>
      client.invoke('updateProductTypeAttr', ent, {  });

  /**
   * Update Related URL Content For Product Category - ProductCategoryContent
   *
   * Requires productCategoryId, contentId, prodCatContentTypeId, fromDate, contentId, dataResourceId
   * Returns 
   */
  Future<OfResult> updateRelatedUrlContentForCategory(ProductCategoryContent ent, {@required String dataResourceId, String title, String description, String url, String localeString}) =>
      client.invoke('updateRelatedUrlContentForCategory', ent, { 'dataResourceId': dataResourceId, 'title': title, 'description': description, 'url': url, 'localeString': localeString });

  /**
   *  - ProductCategoryContent
   *
   * Requires productCategoryId, contentId, prodCatContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateSimpleTextContentForCategory(ProductCategoryContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String textDataResourceId, String text}) =>
      client.invoke('updateSimpleTextContentForCategory', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'textDataResourceId': textDataResourceId, 'text': text });

  /**
   *  - ProductContent
   *
   * Requires productId, contentId, productContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateSimpleTextContentForProduct(ProductContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String textDataResourceId, String text}) =>
      client.invoke('updateSimpleTextContentForProduct', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'textDataResourceId': textDataResourceId, 'text': text });

  /**
   *  - ProdConfItemContent
   *
   * Requires configItemId, contentId, confItemContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateSimpleTextContentForProductConfigItem(ProdConfItemContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String textDataResourceId, String text}) =>
      client.invoke('updateSimpleTextContentForProductConfigItem', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'textDataResourceId': textDataResourceId, 'text': text });

  /**
   *  - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> updateStatusImageManagement({@required String contentId, String checkStatusId}) =>
      client.invoke('updateStatusImageManagement', null, { 'contentId': contentId, 'checkStatusId': checkStatusId });

  /**
   * Update a SupplierProduct record - SupplierProduct
   *
   * Requires productId, partyId, availableFromDate, minimumOrderQuantity, currencyUomId
   * Returns 
   */
  Future<OfResult> updateSupplierProduct(SupplierProduct ent, ) =>
      client.invoke('updateSupplierProduct', ent, {  });

  /**
   * Update a SupplierProduct record - SupplierProductFeature
   *
   * Requires partyId, productFeatureId
   * Returns 
   */
  Future<OfResult> updateSupplierProductFeature(SupplierProductFeature ent, ) =>
      client.invoke('updateSupplierProductFeature', ent, {  });

  /**
   * Update a WebAnalyticsConfig - WebAnalyticsConfig
   *
   * Requires webSiteId, webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> updateWebAnalyticsConfig(WebAnalyticsConfig ent, ) =>
      client.invoke('updateWebAnalyticsConfig', ent, {  });

  /**
   * Update a WebAnalyticsType - WebAnalyticsType
   *
   * Requires webAnalyticsTypeId
   * Returns 
   */
  Future<OfResult> updateWebAnalyticsType(WebAnalyticsType ent, ) =>
      client.invoke('updateWebAnalyticsType', ent, {  });

}