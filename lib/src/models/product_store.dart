import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductStore, Product Store
class ProductStore extends EntityBase {

  /// this entity has only one pk
  final String viewCartOnAdd;
  final String requireCustomerRole;
  final String companyName;
  final String headerDeclinedStatus;
  final String requireInventory;
  final String checkInventory;
  final String autoApproveInvoice;
  final String addToCartRemoveIncompat;
  final String enableAutoSuggestionList;
  final String defaultSalesChannelEnumId;
  final String autoApproveOrder;
  final String allowPassword;
  final String showTaxIsExempt;
  final String oldHeaderLogo;
  final String autoSaveCart;
  final String inventoryFacilityId;
  final String headerApprovedStatus;
  final String oldHeaderMiddleBackground;
  final String defaultTimeZoneString;
  final String prorateTaxes;
  final String showCheckoutGiftOptions;
  final String oldStyleSheet;
  final String manualAuthIsCapture;
  final String itemDeclinedStatus;
  final String visualThemeId;
  final String storeCreditAccountEnumId;
  final String showOutOfStockProducts;
  final String itemApprovedStatus;
  final String allowComment;
  final int storeCreditValidDays;
  final String splitPayPrefPerShpGrp;
  final String authFraudMessage;
  final String managedByLot;
  final String reqShipAddrForDigItems;
  final String oneInventoryFacility;
  final String orderNumberPrefix;
  final String autoInvoiceDigitalItems;
  final String subtitle;
  final String reserveOrderEnumId;
  final String isDemoStore;
  final String retryFailedAuths;
  final String selectPaymentTypePerItem;
  final String balanceResOnOrderCreation;
  final String autoApproveReviews;
  final String explodeOrderItems;
  final String usePrimaryEmailUsername;
  final String headerCancelStatus;
  final String title;
  final String primaryStoreGroupId;
  final String oldHeaderRightBackground;
  final String enableDigProdUpload;
  final String autoOrderCcTryOtherCards;
  final int autoOrderCcTryLaterMax;
  final String digitalItemApprovedStatus;
  final String storeName;
  final String reserveInventory;
  final String productStoreId; // pk
  final String isImmediatelyFulfilled;
  final String defaultPassword;
  final String itemCancelStatus;
  final String autoOrderCcTryExp;
  final String authDeclinedMessage;
  final String prodSearchExcludeVariants;
  final String shipIfCaptureFails;
  final String showPricesWithVatTax;
  final String defaultCurrencyUomId;
  final String orderDecimalQuantity;
  final String prorateShipping;
  final String digProdUploadCategoryId;
  final String reqReturnInventoryReceive;
  final String authErrorMessage;
  final String setOwnerUponIssuance;
  final String checkGcBalance;
  final String autoOrderCcTryLaterNsf;
  final String addToCartReplaceUpsell;
  final String vatTaxAuthGeoId;
  final String vatTaxAuthPartyId;
  final int daysToCancelNonPay;
  final String requirementMethodEnumId;
  final String payToPartyId;
  final String defaultLocaleString;
  ProductStore({entityId,
    this.viewCartOnAdd, this.requireCustomerRole, this.companyName, this.headerDeclinedStatus, this.requireInventory, this.checkInventory, this.autoApproveInvoice, this.addToCartRemoveIncompat, this.enableAutoSuggestionList, this.defaultSalesChannelEnumId, this.autoApproveOrder, this.allowPassword, this.showTaxIsExempt, this.oldHeaderLogo, this.autoSaveCart, this.inventoryFacilityId, this.headerApprovedStatus, this.oldHeaderMiddleBackground, this.defaultTimeZoneString, this.prorateTaxes, this.showCheckoutGiftOptions, this.oldStyleSheet, this.manualAuthIsCapture, this.itemDeclinedStatus, this.visualThemeId, this.storeCreditAccountEnumId, this.showOutOfStockProducts, this.itemApprovedStatus, this.allowComment, this.storeCreditValidDays, this.splitPayPrefPerShpGrp, this.authFraudMessage, this.managedByLot, this.reqShipAddrForDigItems, this.oneInventoryFacility, this.orderNumberPrefix, this.autoInvoiceDigitalItems, this.subtitle, this.reserveOrderEnumId, this.isDemoStore, this.retryFailedAuths, this.selectPaymentTypePerItem, this.balanceResOnOrderCreation, this.autoApproveReviews, this.explodeOrderItems, this.usePrimaryEmailUsername, this.headerCancelStatus, this.title, this.primaryStoreGroupId, this.oldHeaderRightBackground, this.enableDigProdUpload, this.autoOrderCcTryOtherCards, this.autoOrderCcTryLaterMax, this.digitalItemApprovedStatus, this.storeName, this.reserveInventory, @required this.productStoreId, this.isImmediatelyFulfilled, this.defaultPassword, this.itemCancelStatus, this.autoOrderCcTryExp, this.authDeclinedMessage, this.prodSearchExcludeVariants, this.shipIfCaptureFails, this.showPricesWithVatTax, this.defaultCurrencyUomId, this.orderDecimalQuantity, this.prorateShipping, this.digProdUploadCategoryId, this.reqReturnInventoryReceive, this.authErrorMessage, this.setOwnerUponIssuance, this.checkGcBalance, this.autoOrderCcTryLaterNsf, this.addToCartReplaceUpsell, this.vatTaxAuthGeoId, this.vatTaxAuthPartyId, this.daysToCancelNonPay, this.requirementMethodEnumId, this.payToPartyId, this.defaultLocaleString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStore { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'viewCartOnAdd':viewCartOnAdd, 'requireCustomerRole':requireCustomerRole, 'companyName':companyName, 'headerDeclinedStatus':headerDeclinedStatus, 'requireInventory':requireInventory, 'checkInventory':checkInventory, 'autoApproveInvoice':autoApproveInvoice, 'addToCartRemoveIncompat':addToCartRemoveIncompat, 'enableAutoSuggestionList':enableAutoSuggestionList, 'defaultSalesChannelEnumId':defaultSalesChannelEnumId, 'autoApproveOrder':autoApproveOrder, 'allowPassword':allowPassword, 'showTaxIsExempt':showTaxIsExempt, 'oldHeaderLogo':oldHeaderLogo, 'autoSaveCart':autoSaveCart, 'inventoryFacilityId':inventoryFacilityId, 'headerApprovedStatus':headerApprovedStatus, 'oldHeaderMiddleBackground':oldHeaderMiddleBackground, 'defaultTimeZoneString':defaultTimeZoneString, 'prorateTaxes':prorateTaxes, 'showCheckoutGiftOptions':showCheckoutGiftOptions, 'oldStyleSheet':oldStyleSheet, 'manualAuthIsCapture':manualAuthIsCapture, 'itemDeclinedStatus':itemDeclinedStatus, 'visualThemeId':visualThemeId, 'storeCreditAccountEnumId':storeCreditAccountEnumId, 'showOutOfStockProducts':showOutOfStockProducts, 'itemApprovedStatus':itemApprovedStatus, 'allowComment':allowComment, 'storeCreditValidDays':storeCreditValidDays, 'splitPayPrefPerShpGrp':splitPayPrefPerShpGrp, 'authFraudMessage':authFraudMessage, 'managedByLot':managedByLot, 'reqShipAddrForDigItems':reqShipAddrForDigItems, 'oneInventoryFacility':oneInventoryFacility, 'orderNumberPrefix':orderNumberPrefix, 'autoInvoiceDigitalItems':autoInvoiceDigitalItems, 'subtitle':subtitle, 'reserveOrderEnumId':reserveOrderEnumId, 'isDemoStore':isDemoStore, 'retryFailedAuths':retryFailedAuths, 'selectPaymentTypePerItem':selectPaymentTypePerItem, 'balanceResOnOrderCreation':balanceResOnOrderCreation, 'autoApproveReviews':autoApproveReviews, 'explodeOrderItems':explodeOrderItems, 'usePrimaryEmailUsername':usePrimaryEmailUsername, 'headerCancelStatus':headerCancelStatus, 'title':title, 'primaryStoreGroupId':primaryStoreGroupId, 'oldHeaderRightBackground':oldHeaderRightBackground, 'enableDigProdUpload':enableDigProdUpload, 'autoOrderCcTryOtherCards':autoOrderCcTryOtherCards, 'autoOrderCcTryLaterMax':autoOrderCcTryLaterMax, 'digitalItemApprovedStatus':digitalItemApprovedStatus, 'storeName':storeName, 'reserveInventory':reserveInventory, 'productStoreId':productStoreId, 'isImmediatelyFulfilled':isImmediatelyFulfilled, 'defaultPassword':defaultPassword, 'itemCancelStatus':itemCancelStatus, 'autoOrderCcTryExp':autoOrderCcTryExp, 'authDeclinedMessage':authDeclinedMessage, 'prodSearchExcludeVariants':prodSearchExcludeVariants, 'shipIfCaptureFails':shipIfCaptureFails, 'showPricesWithVatTax':showPricesWithVatTax, 'defaultCurrencyUomId':defaultCurrencyUomId, 'orderDecimalQuantity':orderDecimalQuantity, 'prorateShipping':prorateShipping, 'digProdUploadCategoryId':digProdUploadCategoryId, 'reqReturnInventoryReceive':reqReturnInventoryReceive, 'authErrorMessage':authErrorMessage, 'setOwnerUponIssuance':setOwnerUponIssuance, 'checkGcBalance':checkGcBalance, 'autoOrderCcTryLaterNsf':autoOrderCcTryLaterNsf, 'addToCartReplaceUpsell':addToCartReplaceUpsell, 'vatTaxAuthGeoId':vatTaxAuthGeoId, 'vatTaxAuthPartyId':vatTaxAuthPartyId, 'daysToCancelNonPay':daysToCancelNonPay, 'requirementMethodEnumId':requirementMethodEnumId, 'payToPartyId':payToPartyId, 'defaultLocaleString':defaultLocaleString};
  }

}

/// Entity ProductStoreCatalog, Product Store Catalog Association
class ProductStoreCatalog extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String productStoreId; // pk
  final String prodCatalogId; // pk
  final DateTime thruDate;
  ProductStoreCatalog({entityId,
    @required this.fromDate, this.sequenceNum, @required this.productStoreId, @required this.prodCatalogId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreCatalog { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'productStoreId':productStoreId, 'prodCatalogId':prodCatalogId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreEmailSetting, Product Store Email Settings
class ProductStoreEmailSetting extends EntityBase {

  final String xslfoAttachScreenLocation;
  final String bodyScreenLocation;
  final String subject;
  final String bccAddress;
  final String ccAddress;
  final String emailType; // pk
  final String fromAddress;
  final String productStoreId; // pk
  final String contentType;
  ProductStoreEmailSetting({entityId,
    this.xslfoAttachScreenLocation, this.bodyScreenLocation, this.subject, this.bccAddress, this.ccAddress, @required this.emailType, this.fromAddress, @required this.productStoreId, this.contentType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreEmailSetting { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'xslfoAttachScreenLocation':xslfoAttachScreenLocation, 'bodyScreenLocation':bodyScreenLocation, 'subject':subject, 'bccAddress':bccAddress, 'ccAddress':ccAddress, 'emailType':emailType, 'fromAddress':fromAddress, 'productStoreId':productStoreId, 'contentType':contentType};
  }

}

/// Entity ProductStoreFacility, Product Store Inventory Facility Applicability
class ProductStoreFacility extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final int sequenceNum;
  final String productStoreId; // pk
  final DateTime thruDate;
  ProductStoreFacility({entityId,
    @required this.fromDate, @required this.facilityId, this.sequenceNum, @required this.productStoreId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreFacility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'sequenceNum':sequenceNum, 'productStoreId':productStoreId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreFacilityByOrder, Product Store Facility By Order
class ProductStoreFacilityByOrder extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final int sequenceNum;
  final String orderId; // pk
  final String facilityTypeId;
  final String storeName;
  final String productStoreId; // pk
  final String facilityName;
  final DateTime thruDate;
  ProductStoreFacilityByOrder({entityId,
    @required this.fromDate, @required this.facilityId, this.sequenceNum, @required this.orderId, this.facilityTypeId, this.storeName, @required this.productStoreId, this.facilityName, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreFacilityByOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'sequenceNum':sequenceNum, 'orderId':orderId, 'facilityTypeId':facilityTypeId, 'storeName':storeName, 'productStoreId':productStoreId, 'facilityName':facilityName, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreFinActSetting, Allows financial account, such as gift certificate or calling cards, to be configured at store level
class ProductStoreFinActSetting extends EntityBase {

  final int authValidDays;
  final String allowAuthToNegative;
  final int accountCodeLength;
  final String purchSurveyCopyMe;
  final String validateGCFinAcct;
  final double replenishThreshold;
  final int accountValidDays;
  final String finAccountTypeId; // pk
  final String replenishMethodEnumId;
  final String purchSurveySendTo;
  final double minBalance;
  final String productStoreId; // pk
  final String purchaseSurveyId;
  final String requirePinCode;
  final int pinCodeLength;
  ProductStoreFinActSetting({entityId,
    this.authValidDays, this.allowAuthToNegative, this.accountCodeLength, this.purchSurveyCopyMe, this.validateGCFinAcct, this.replenishThreshold, this.accountValidDays, @required this.finAccountTypeId, this.replenishMethodEnumId, this.purchSurveySendTo, this.minBalance, @required this.productStoreId, this.purchaseSurveyId, this.requirePinCode, this.pinCodeLength,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreFinActSetting { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'authValidDays':authValidDays, 'allowAuthToNegative':allowAuthToNegative, 'accountCodeLength':accountCodeLength, 'purchSurveyCopyMe':purchSurveyCopyMe, 'validateGCFinAcct':validateGCFinAcct, 'replenishThreshold':replenishThreshold, 'accountValidDays':accountValidDays, 'finAccountTypeId':finAccountTypeId, 'replenishMethodEnumId':replenishMethodEnumId, 'purchSurveySendTo':purchSurveySendTo, 'minBalance':minBalance, 'productStoreId':productStoreId, 'purchaseSurveyId':purchaseSurveyId, 'requirePinCode':requirePinCode, 'pinCodeLength':pinCodeLength};
  }

}

/// Entity ProductStoreGroup, ProductStore Group
class ProductStoreGroup extends EntityBase {

  /// this entity has only one pk
  final String productStoreGroupTypeId;
  final String primaryParentGroupId;
  final String productStoreGroupName;
  final String description;
  final String productStoreGroupId; // pk
  ProductStoreGroup({entityId,
    this.productStoreGroupTypeId, this.primaryParentGroupId, this.productStoreGroupName, this.description, @required this.productStoreGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreGroupTypeId':productStoreGroupTypeId, 'primaryParentGroupId':primaryParentGroupId, 'productStoreGroupName':productStoreGroupName, 'description':description, 'productStoreGroupId':productStoreGroupId};
  }

}

/// Entity ProductStoreGroupAndMember, ProductStoreGroup And ProductStore View Entiry
class ProductStoreGroupAndMember extends EntityBase {

  final String viewCartOnAdd;
  final String requireCustomerRole;
  final int sequenceNum;
  final String companyName;
  final String headerDeclinedStatus;
  final String requireInventory;
  final String checkInventory;
  final String autoApproveInvoice;
  final String addToCartRemoveIncompat;
  final String enableAutoSuggestionList;
  final String defaultSalesChannelEnumId;
  final String autoApproveOrder;
  final String allowPassword;
  final String showTaxIsExempt;
  final String oldHeaderLogo;
  final String autoSaveCart;
  final String inventoryFacilityId;
  final String headerApprovedStatus;
  final String oldHeaderMiddleBackground;
  final String defaultTimeZoneString;
  final String prorateTaxes;
  final String showCheckoutGiftOptions;
  final String oldStyleSheet;
  final String manualAuthIsCapture;
  final String itemDeclinedStatus;
  final String visualThemeId;
  final String storeCreditAccountEnumId;
  final String showOutOfStockProducts;
  final String itemApprovedStatus;
  final String allowComment;
  final int storeCreditValidDays;
  final String splitPayPrefPerShpGrp;
  final String authFraudMessage;
  final String managedByLot;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String reqShipAddrForDigItems;
  final String oneInventoryFacility;
  final String orderNumberPrefix;
  final String autoInvoiceDigitalItems;
  final String subtitle;
  final String reserveOrderEnumId;
  final String isDemoStore;
  final String productStoreGroupTypeId;
  final String retryFailedAuths;
  final String selectPaymentTypePerItem;
  final String balanceResOnOrderCreation;
  final String autoApproveReviews;
  final String explodeOrderItems;
  final String usePrimaryEmailUsername;
  final String description;
  final String headerCancelStatus;
  final String title;
  final String productStoreGroupId; // pk
  final String primaryStoreGroupId;
  final String primaryParentGroupId;
  final String oldHeaderRightBackground;
  final String enableDigProdUpload;
  final String autoOrderCcTryOtherCards;
  final int autoOrderCcTryLaterMax;
  final String digitalItemApprovedStatus;
  final String storeName;
  final String reserveInventory;
  final String productStoreId; // pk
  final String isImmediatelyFulfilled;
  final String defaultPassword;
  final String itemCancelStatus;
  final String autoOrderCcTryExp;
  final String authDeclinedMessage;
  final String prodSearchExcludeVariants;
  final String productStoreGroupName;
  final String shipIfCaptureFails;
  final String showPricesWithVatTax;
  final String defaultCurrencyUomId;
  final String orderDecimalQuantity;
  final String prorateShipping;
  final String digProdUploadCategoryId;
  final String reqReturnInventoryReceive;
  final String authErrorMessage;
  final String setOwnerUponIssuance;
  final String checkGcBalance;
  final String autoOrderCcTryLaterNsf;
  final String addToCartReplaceUpsell;
  final String vatTaxAuthGeoId;
  final String vatTaxAuthPartyId;
  final int daysToCancelNonPay;
  final String requirementMethodEnumId;
  final String payToPartyId;
  final String defaultLocaleString;
  ProductStoreGroupAndMember({entityId,
    this.viewCartOnAdd, this.requireCustomerRole, this.sequenceNum, this.companyName, this.headerDeclinedStatus, this.requireInventory, this.checkInventory, this.autoApproveInvoice, this.addToCartRemoveIncompat, this.enableAutoSuggestionList, this.defaultSalesChannelEnumId, this.autoApproveOrder, this.allowPassword, this.showTaxIsExempt, this.oldHeaderLogo, this.autoSaveCart, this.inventoryFacilityId, this.headerApprovedStatus, this.oldHeaderMiddleBackground, this.defaultTimeZoneString, this.prorateTaxes, this.showCheckoutGiftOptions, this.oldStyleSheet, this.manualAuthIsCapture, this.itemDeclinedStatus, this.visualThemeId, this.storeCreditAccountEnumId, this.showOutOfStockProducts, this.itemApprovedStatus, this.allowComment, this.storeCreditValidDays, this.splitPayPrefPerShpGrp, this.authFraudMessage, this.managedByLot, this.thruDate, @required this.fromDate, this.reqShipAddrForDigItems, this.oneInventoryFacility, this.orderNumberPrefix, this.autoInvoiceDigitalItems, this.subtitle, this.reserveOrderEnumId, this.isDemoStore, this.productStoreGroupTypeId, this.retryFailedAuths, this.selectPaymentTypePerItem, this.balanceResOnOrderCreation, this.autoApproveReviews, this.explodeOrderItems, this.usePrimaryEmailUsername, this.description, this.headerCancelStatus, this.title, @required this.productStoreGroupId, this.primaryStoreGroupId, this.primaryParentGroupId, this.oldHeaderRightBackground, this.enableDigProdUpload, this.autoOrderCcTryOtherCards, this.autoOrderCcTryLaterMax, this.digitalItemApprovedStatus, this.storeName, this.reserveInventory, @required this.productStoreId, this.isImmediatelyFulfilled, this.defaultPassword, this.itemCancelStatus, this.autoOrderCcTryExp, this.authDeclinedMessage, this.prodSearchExcludeVariants, this.productStoreGroupName, this.shipIfCaptureFails, this.showPricesWithVatTax, this.defaultCurrencyUomId, this.orderDecimalQuantity, this.prorateShipping, this.digProdUploadCategoryId, this.reqReturnInventoryReceive, this.authErrorMessage, this.setOwnerUponIssuance, this.checkGcBalance, this.autoOrderCcTryLaterNsf, this.addToCartReplaceUpsell, this.vatTaxAuthGeoId, this.vatTaxAuthPartyId, this.daysToCancelNonPay, this.requirementMethodEnumId, this.payToPartyId, this.defaultLocaleString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupAndMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'viewCartOnAdd':viewCartOnAdd, 'requireCustomerRole':requireCustomerRole, 'sequenceNum':sequenceNum, 'companyName':companyName, 'headerDeclinedStatus':headerDeclinedStatus, 'requireInventory':requireInventory, 'checkInventory':checkInventory, 'autoApproveInvoice':autoApproveInvoice, 'addToCartRemoveIncompat':addToCartRemoveIncompat, 'enableAutoSuggestionList':enableAutoSuggestionList, 'defaultSalesChannelEnumId':defaultSalesChannelEnumId, 'autoApproveOrder':autoApproveOrder, 'allowPassword':allowPassword, 'showTaxIsExempt':showTaxIsExempt, 'oldHeaderLogo':oldHeaderLogo, 'autoSaveCart':autoSaveCart, 'inventoryFacilityId':inventoryFacilityId, 'headerApprovedStatus':headerApprovedStatus, 'oldHeaderMiddleBackground':oldHeaderMiddleBackground, 'defaultTimeZoneString':defaultTimeZoneString, 'prorateTaxes':prorateTaxes, 'showCheckoutGiftOptions':showCheckoutGiftOptions, 'oldStyleSheet':oldStyleSheet, 'manualAuthIsCapture':manualAuthIsCapture, 'itemDeclinedStatus':itemDeclinedStatus, 'visualThemeId':visualThemeId, 'storeCreditAccountEnumId':storeCreditAccountEnumId, 'showOutOfStockProducts':showOutOfStockProducts, 'itemApprovedStatus':itemApprovedStatus, 'allowComment':allowComment, 'storeCreditValidDays':storeCreditValidDays, 'splitPayPrefPerShpGrp':splitPayPrefPerShpGrp, 'authFraudMessage':authFraudMessage, 'managedByLot':managedByLot, 'thruDate':thruDate, 'fromDate':fromDate, 'reqShipAddrForDigItems':reqShipAddrForDigItems, 'oneInventoryFacility':oneInventoryFacility, 'orderNumberPrefix':orderNumberPrefix, 'autoInvoiceDigitalItems':autoInvoiceDigitalItems, 'subtitle':subtitle, 'reserveOrderEnumId':reserveOrderEnumId, 'isDemoStore':isDemoStore, 'productStoreGroupTypeId':productStoreGroupTypeId, 'retryFailedAuths':retryFailedAuths, 'selectPaymentTypePerItem':selectPaymentTypePerItem, 'balanceResOnOrderCreation':balanceResOnOrderCreation, 'autoApproveReviews':autoApproveReviews, 'explodeOrderItems':explodeOrderItems, 'usePrimaryEmailUsername':usePrimaryEmailUsername, 'description':description, 'headerCancelStatus':headerCancelStatus, 'title':title, 'productStoreGroupId':productStoreGroupId, 'primaryStoreGroupId':primaryStoreGroupId, 'primaryParentGroupId':primaryParentGroupId, 'oldHeaderRightBackground':oldHeaderRightBackground, 'enableDigProdUpload':enableDigProdUpload, 'autoOrderCcTryOtherCards':autoOrderCcTryOtherCards, 'autoOrderCcTryLaterMax':autoOrderCcTryLaterMax, 'digitalItemApprovedStatus':digitalItemApprovedStatus, 'storeName':storeName, 'reserveInventory':reserveInventory, 'productStoreId':productStoreId, 'isImmediatelyFulfilled':isImmediatelyFulfilled, 'defaultPassword':defaultPassword, 'itemCancelStatus':itemCancelStatus, 'autoOrderCcTryExp':autoOrderCcTryExp, 'authDeclinedMessage':authDeclinedMessage, 'prodSearchExcludeVariants':prodSearchExcludeVariants, 'productStoreGroupName':productStoreGroupName, 'shipIfCaptureFails':shipIfCaptureFails, 'showPricesWithVatTax':showPricesWithVatTax, 'defaultCurrencyUomId':defaultCurrencyUomId, 'orderDecimalQuantity':orderDecimalQuantity, 'prorateShipping':prorateShipping, 'digProdUploadCategoryId':digProdUploadCategoryId, 'reqReturnInventoryReceive':reqReturnInventoryReceive, 'authErrorMessage':authErrorMessage, 'setOwnerUponIssuance':setOwnerUponIssuance, 'checkGcBalance':checkGcBalance, 'autoOrderCcTryLaterNsf':autoOrderCcTryLaterNsf, 'addToCartReplaceUpsell':addToCartReplaceUpsell, 'vatTaxAuthGeoId':vatTaxAuthGeoId, 'vatTaxAuthPartyId':vatTaxAuthPartyId, 'daysToCancelNonPay':daysToCancelNonPay, 'requirementMethodEnumId':requirementMethodEnumId, 'payToPartyId':payToPartyId, 'defaultLocaleString':defaultLocaleString};
  }

}

/// Entity ProductStoreGroupMember, ProductStore Group Member
class ProductStoreGroupMember extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String productStoreId; // pk
  final String productStoreGroupId; // pk
  final DateTime thruDate;
  ProductStoreGroupMember({entityId,
    @required this.fromDate, this.sequenceNum, @required this.productStoreId, @required this.productStoreGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'productStoreId':productStoreId, 'productStoreGroupId':productStoreGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreGroupRole, ProductStore Group Role
class ProductStoreGroupRole extends EntityBase {

  final String roleTypeId; // pk
  final String partyId; // pk
  final String productStoreGroupId; // pk
  ProductStoreGroupRole({entityId,
    @required this.roleTypeId, @required this.partyId, @required this.productStoreGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'partyId':partyId, 'productStoreGroupId':productStoreGroupId};
  }

}

/// Entity ProductStoreGroupRollup, ProductStore Group Rollup
class ProductStoreGroupRollup extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String parentGroupId; // pk
  final String productStoreGroupId; // pk
  final DateTime thruDate;
  ProductStoreGroupRollup({entityId,
    @required this.fromDate, this.sequenceNum, @required this.parentGroupId, @required this.productStoreGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupRollup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'parentGroupId':parentGroupId, 'productStoreGroupId':productStoreGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreGroupRollupAndChild, ProductStoreGroupRollup And ProductStoreGroup View Entiry
class ProductStoreGroupRollupAndChild extends EntityBase {

  final String productStoreGroupTypeId;
  final String primaryParentGroupId;
  final DateTime fromDate; // pk
  final String productStoreGroupName;
  final int sequenceNum;
  final String description;
  final String parentGroupId; // pk
  final String productStoreGroupId; // pk
  final DateTime thruDate;
  ProductStoreGroupRollupAndChild({entityId,
    this.productStoreGroupTypeId, this.primaryParentGroupId, @required this.fromDate, this.productStoreGroupName, this.sequenceNum, this.description, @required this.parentGroupId, @required this.productStoreGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupRollupAndChild { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreGroupTypeId':productStoreGroupTypeId, 'primaryParentGroupId':primaryParentGroupId, 'fromDate':fromDate, 'productStoreGroupName':productStoreGroupName, 'sequenceNum':sequenceNum, 'description':description, 'parentGroupId':parentGroupId, 'productStoreGroupId':productStoreGroupId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreGroupType, ProductStore Group Type
class ProductStoreGroupType extends EntityBase {

  /// this entity has only one pk
  final String productStoreGroupTypeId; // pk
  final String description;
  ProductStoreGroupType({entityId,
    @required this.productStoreGroupTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreGroupTypeId':productStoreGroupTypeId, 'description':description};
  }

}

/// Entity ProductStoreKeywordOvrd, Product Store Inventory Facility Applicability
class ProductStoreKeywordOvrd extends EntityBase {

  final DateTime fromDate; // pk
  final String productStoreId; // pk
  final String targetTypeEnumId;
  final String keyword; // pk
  final DateTime thruDate;
  final String target;
  ProductStoreKeywordOvrd({entityId,
    @required this.fromDate, @required this.productStoreId, this.targetTypeEnumId, @required this.keyword, this.thruDate, this.target,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreKeywordOvrd { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productStoreId':productStoreId, 'targetTypeEnumId':targetTypeEnumId, 'keyword':keyword, 'thruDate':thruDate, 'target':target};
  }

}

/// Entity ProductStorePaymentSetting, Product Store Payment Settings
class ProductStorePaymentSetting extends EntityBase {

  final String paymentGatewayConfigId;
  final String paymentService;
  final String paymentPropertiesPath;
  final String paymentServiceTypeEnumId; // pk
  final String applyToAllProducts;
  final String productStoreId; // pk
  final String paymentMethodTypeId; // pk
  final String paymentCustomMethodId;
  ProductStorePaymentSetting({entityId,
    this.paymentGatewayConfigId, this.paymentService, this.paymentPropertiesPath, @required this.paymentServiceTypeEnumId, this.applyToAllProducts, @required this.productStoreId, @required this.paymentMethodTypeId, this.paymentCustomMethodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStorePaymentSetting { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGatewayConfigId':paymentGatewayConfigId, 'paymentService':paymentService, 'paymentPropertiesPath':paymentPropertiesPath, 'paymentServiceTypeEnumId':paymentServiceTypeEnumId, 'applyToAllProducts':applyToAllProducts, 'productStoreId':productStoreId, 'paymentMethodTypeId':paymentMethodTypeId, 'paymentCustomMethodId':paymentCustomMethodId};
  }

}

/// Entity ProductStorePromoAndAppl, Product Store Promotion and Applicability View
class ProductStorePromoAndAppl extends EntityBase {

  final DateTime fromDate; // pk
  final String promoName;
  final String userEntered;
  final int sequenceNum;
  final String manualOnly;
  final String productStoreId; // pk
  final String productPromoId; // pk
  final DateTime thruDate;
  ProductStorePromoAndAppl({entityId,
    @required this.fromDate, this.promoName, this.userEntered, this.sequenceNum, this.manualOnly, @required this.productStoreId, @required this.productPromoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStorePromoAndAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'promoName':promoName, 'userEntered':userEntered, 'sequenceNum':sequenceNum, 'manualOnly':manualOnly, 'productStoreId':productStoreId, 'productPromoId':productPromoId, 'thruDate':thruDate};
  }

}

/// Entity ProductStorePromoAppl, Product Store Promotion Applicability
class ProductStorePromoAppl extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String manualOnly;
  final String productStoreId; // pk
  final String productPromoId; // pk
  final DateTime thruDate;
  ProductStorePromoAppl({entityId,
    @required this.fromDate, this.sequenceNum, this.manualOnly, @required this.productStoreId, @required this.productPromoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStorePromoAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'manualOnly':manualOnly, 'productStoreId':productStoreId, 'productPromoId':productPromoId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreRole, Product Store Role Association
class ProductStoreRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final int sequenceNum;
  final String productStoreId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  ProductStoreRole({entityId,
    @required this.fromDate, @required this.roleTypeId, this.sequenceNum, @required this.productStoreId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'sequenceNum':sequenceNum, 'productStoreId':productStoreId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ProductStoreShipmentMeth, Product Store Carrier Shipment Method
class ProductStoreShipmentMeth extends EntityBase {

  /// this entity has only one pk
  final String productStoreShipMethId; // pk
  final String companyPartyId;
  final double allowancePercent;
  final String includeFeatureGroup;
  final String shipmentCustomMethodId;
  final double minTotal;
  final double minWeight;
  final String requireCompanyAddr;
  final double maxSize;
  final String excludeGeoId;
  final String shipmentGatewayConfigId;
  final double minSize;
  final String productStoreId;
  final String allowCompanyAddr;
  final String partyId;
  final double minimumPrice;
  final String shipmentMethodTypeId;
  final String excludeFeatureGroup;
  final int sequenceNumber;
  final String roleTypeId;
  final String allowUspsAddr;
  final double maxWeight;
  final String serviceName;
  final String includeGeoId;
  final double maxTotal;
  final String requireUspsAddr;
  final String configProps;
  final String includeNoChargeItems;
  ProductStoreShipmentMeth({entityId,
    @required this.productStoreShipMethId, this.companyPartyId, this.allowancePercent, this.includeFeatureGroup, this.shipmentCustomMethodId, this.minTotal, this.minWeight, this.requireCompanyAddr, this.maxSize, this.excludeGeoId, this.shipmentGatewayConfigId, this.minSize, this.productStoreId, this.allowCompanyAddr, this.partyId, this.minimumPrice, this.shipmentMethodTypeId, this.excludeFeatureGroup, this.sequenceNumber, this.roleTypeId, this.allowUspsAddr, this.maxWeight, this.serviceName, this.includeGeoId, this.maxTotal, this.requireUspsAddr, this.configProps, this.includeNoChargeItems,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreShipmentMeth { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreShipMethId':productStoreShipMethId, 'companyPartyId':companyPartyId, 'allowancePercent':allowancePercent, 'includeFeatureGroup':includeFeatureGroup, 'shipmentCustomMethodId':shipmentCustomMethodId, 'minTotal':minTotal, 'minWeight':minWeight, 'requireCompanyAddr':requireCompanyAddr, 'maxSize':maxSize, 'excludeGeoId':excludeGeoId, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'minSize':minSize, 'productStoreId':productStoreId, 'allowCompanyAddr':allowCompanyAddr, 'partyId':partyId, 'minimumPrice':minimumPrice, 'shipmentMethodTypeId':shipmentMethodTypeId, 'excludeFeatureGroup':excludeFeatureGroup, 'sequenceNumber':sequenceNumber, 'roleTypeId':roleTypeId, 'allowUspsAddr':allowUspsAddr, 'maxWeight':maxWeight, 'serviceName':serviceName, 'includeGeoId':includeGeoId, 'maxTotal':maxTotal, 'requireUspsAddr':requireUspsAddr, 'configProps':configProps, 'includeNoChargeItems':includeNoChargeItems};
  }

}

/// Entity ProductStoreShipmentMethView, Product Store Carrier And Shipment Method Type View
class ProductStoreShipmentMethView extends EntityBase {

  /// this entity has only one pk
  final String productStoreShipMethId; // pk
  final String companyPartyId;
  final String includeFeatureGroup;
  final String shipmentCustomMethodId;
  final double minTotal;
  final double minWeight;
  final String requireCompanyAddr;
  final String description;
  final double maxSize;
  final String excludeGeoId;
  final String shipmentGatewayConfigId;
  final double minSize;
  final String productStoreId;
  final String allowCompanyAddr;
  final String partyId;
  final String shipmentMethodTypeId;
  final String excludeFeatureGroup;
  final int sequenceNumber;
  final String roleTypeId;
  final String allowUspsAddr;
  final double maxWeight;
  final String serviceName;
  final String includeGeoId;
  final double maxTotal;
  final String requireUspsAddr;
  final String configProps;
  final String includeNoChargeItems;
  ProductStoreShipmentMethView({entityId,
    @required this.productStoreShipMethId, this.companyPartyId, this.includeFeatureGroup, this.shipmentCustomMethodId, this.minTotal, this.minWeight, this.requireCompanyAddr, this.description, this.maxSize, this.excludeGeoId, this.shipmentGatewayConfigId, this.minSize, this.productStoreId, this.allowCompanyAddr, this.partyId, this.shipmentMethodTypeId, this.excludeFeatureGroup, this.sequenceNumber, this.roleTypeId, this.allowUspsAddr, this.maxWeight, this.serviceName, this.includeGeoId, this.maxTotal, this.requireUspsAddr, this.configProps, this.includeNoChargeItems,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreShipmentMethView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreShipMethId':productStoreShipMethId, 'companyPartyId':companyPartyId, 'includeFeatureGroup':includeFeatureGroup, 'shipmentCustomMethodId':shipmentCustomMethodId, 'minTotal':minTotal, 'minWeight':minWeight, 'requireCompanyAddr':requireCompanyAddr, 'description':description, 'maxSize':maxSize, 'excludeGeoId':excludeGeoId, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'minSize':minSize, 'productStoreId':productStoreId, 'allowCompanyAddr':allowCompanyAddr, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'excludeFeatureGroup':excludeFeatureGroup, 'sequenceNumber':sequenceNumber, 'roleTypeId':roleTypeId, 'allowUspsAddr':allowUspsAddr, 'maxWeight':maxWeight, 'serviceName':serviceName, 'includeGeoId':includeGeoId, 'maxTotal':maxTotal, 'requireUspsAddr':requireUspsAddr, 'configProps':configProps, 'includeNoChargeItems':includeNoChargeItems};
  }

}

/// Entity ProductStoreSurveyAppl, Product Store Survey Application
class ProductStoreSurveyAppl extends EntityBase {

  /// this entity has only one pk
  final String surveyId;
  final String productId;
  final String surveyTemplate;
  final int sequenceNum;
  final String resultTemplate;
  final String surveyApplTypeId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String productStoreSurveyId; // pk
  final String groupName;
  final String productCategoryId;
  final String productStoreId;
  ProductStoreSurveyAppl({entityId,
    this.surveyId, this.productId, this.surveyTemplate, this.sequenceNum, this.resultTemplate, this.surveyApplTypeId, this.thruDate, this.fromDate, @required this.productStoreSurveyId, this.groupName, this.productCategoryId, this.productStoreId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreSurveyAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyId':surveyId, 'productId':productId, 'surveyTemplate':surveyTemplate, 'sequenceNum':sequenceNum, 'resultTemplate':resultTemplate, 'surveyApplTypeId':surveyApplTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'productStoreSurveyId':productStoreSurveyId, 'groupName':groupName, 'productCategoryId':productCategoryId, 'productStoreId':productStoreId};
  }

}

/// Entity ProductStoreVendorPayment, Product Store Vendor Payment
class ProductStoreVendorPayment extends EntityBase {

  final String productStoreId; // pk
  final String paymentMethodTypeId; // pk
  final String vendorPartyId; // pk
  final String creditCardEnumId; // pk
  ProductStoreVendorPayment({entityId,
    @required this.productStoreId, @required this.paymentMethodTypeId, @required this.vendorPartyId, @required this.creditCardEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreVendorPayment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreId':productStoreId, 'paymentMethodTypeId':paymentMethodTypeId, 'vendorPartyId':vendorPartyId, 'creditCardEnumId':creditCardEnumId};
  }

}

/// Entity ProductStoreVendorShipment, Product Store Vendor Shipment
class ProductStoreVendorShipment extends EntityBase {

  final String carrierPartyId; // pk
  final String productStoreId; // pk
  final String shipmentMethodTypeId; // pk
  final String vendorPartyId; // pk
  ProductStoreVendorShipment({entityId,
    @required this.carrierPartyId, @required this.productStoreId, @required this.shipmentMethodTypeId, @required this.vendorPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductStoreVendorShipment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'carrierPartyId':carrierPartyId, 'productStoreId':productStoreId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'vendorPartyId':vendorPartyId};
  }

}