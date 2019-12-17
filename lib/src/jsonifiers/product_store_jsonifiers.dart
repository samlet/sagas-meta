import 'package:sagas_meta/src/models/product_store.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductStoreJsonifier{
  static ProductStore extractProductStore(dynamic json) {
    return ProductStore(
        entityId: create_id_from('ProductStore', ['productStoreId'], json),
        viewCartOnAdd: json['viewCartOnAdd'] as String,
        requireCustomerRole: json['requireCustomerRole'] as String,
        companyName: json['companyName'] as String,
        headerDeclinedStatus: json['headerDeclinedStatus'] as String,
        requireInventory: json['requireInventory'] as String,
        checkInventory: json['checkInventory'] as String,
        autoApproveInvoice: json['autoApproveInvoice'] as String,
        addToCartRemoveIncompat: json['addToCartRemoveIncompat'] as String,
        enableAutoSuggestionList: json['enableAutoSuggestionList'] as String,
        defaultSalesChannelEnumId: json['defaultSalesChannelEnumId'] as String,
        autoApproveOrder: json['autoApproveOrder'] as String,
        allowPassword: json['allowPassword'] as String,
        showTaxIsExempt: json['showTaxIsExempt'] as String,
        oldHeaderLogo: json['oldHeaderLogo'] as String,
        autoSaveCart: json['autoSaveCart'] as String,
        inventoryFacilityId: json['inventoryFacilityId'] as String,
        headerApprovedStatus: json['headerApprovedStatus'] as String,
        oldHeaderMiddleBackground: json['oldHeaderMiddleBackground'] as String,
        defaultTimeZoneString: json['defaultTimeZoneString'] as String,
        prorateTaxes: json['prorateTaxes'] as String,
        showCheckoutGiftOptions: json['showCheckoutGiftOptions'] as String,
        oldStyleSheet: json['oldStyleSheet'] as String,
        manualAuthIsCapture: json['manualAuthIsCapture'] as String,
        itemDeclinedStatus: json['itemDeclinedStatus'] as String,
        visualThemeId: json['visualThemeId'] as String,
        storeCreditAccountEnumId: json['storeCreditAccountEnumId'] as String,
        showOutOfStockProducts: json['showOutOfStockProducts'] as String,
        itemApprovedStatus: json['itemApprovedStatus'] as String,
        allowComment: json['allowComment'] as String,
        storeCreditValidDays: json['storeCreditValidDays'] as int,
        splitPayPrefPerShpGrp: json['splitPayPrefPerShpGrp'] as String,
        authFraudMessage: json['authFraudMessage'] as String,
        managedByLot: json['managedByLot'] as String,
        reqShipAddrForDigItems: json['reqShipAddrForDigItems'] as String,
        oneInventoryFacility: json['oneInventoryFacility'] as String,
        orderNumberPrefix: json['orderNumberPrefix'] as String,
        autoInvoiceDigitalItems: json['autoInvoiceDigitalItems'] as String,
        subtitle: json['subtitle'] as String,
        reserveOrderEnumId: json['reserveOrderEnumId'] as String,
        isDemoStore: json['isDemoStore'] as String,
        retryFailedAuths: json['retryFailedAuths'] as String,
        selectPaymentTypePerItem: json['selectPaymentTypePerItem'] as String,
        balanceResOnOrderCreation: json['balanceResOnOrderCreation'] as String,
        autoApproveReviews: json['autoApproveReviews'] as String,
        explodeOrderItems: json['explodeOrderItems'] as String,
        usePrimaryEmailUsername: json['usePrimaryEmailUsername'] as String,
        headerCancelStatus: json['headerCancelStatus'] as String,
        title: json['title'] as String,
        primaryStoreGroupId: json['primaryStoreGroupId'] as String,
        oldHeaderRightBackground: json['oldHeaderRightBackground'] as String,
        enableDigProdUpload: json['enableDigProdUpload'] as String,
        autoOrderCcTryOtherCards: json['autoOrderCcTryOtherCards'] as String,
        autoOrderCcTryLaterMax: json['autoOrderCcTryLaterMax'] as int,
        digitalItemApprovedStatus: json['digitalItemApprovedStatus'] as String,
        storeName: json['storeName'] as String,
        reserveInventory: json['reserveInventory'] as String,
        productStoreId: json['productStoreId'] as String,
        isImmediatelyFulfilled: json['isImmediatelyFulfilled'] as String,
        defaultPassword: json['defaultPassword'] as String,
        itemCancelStatus: json['itemCancelStatus'] as String,
        autoOrderCcTryExp: json['autoOrderCcTryExp'] as String,
        authDeclinedMessage: json['authDeclinedMessage'] as String,
        prodSearchExcludeVariants: json['prodSearchExcludeVariants'] as String,
        shipIfCaptureFails: json['shipIfCaptureFails'] as String,
        showPricesWithVatTax: json['showPricesWithVatTax'] as String,
        defaultCurrencyUomId: json['defaultCurrencyUomId'] as String,
        orderDecimalQuantity: json['orderDecimalQuantity'] as String,
        prorateShipping: json['prorateShipping'] as String,
        digProdUploadCategoryId: json['digProdUploadCategoryId'] as String,
        reqReturnInventoryReceive: json['reqReturnInventoryReceive'] as String,
        authErrorMessage: json['authErrorMessage'] as String,
        setOwnerUponIssuance: json['setOwnerUponIssuance'] as String,
        checkGcBalance: json['checkGcBalance'] as String,
        autoOrderCcTryLaterNsf: json['autoOrderCcTryLaterNsf'] as String,
        addToCartReplaceUpsell: json['addToCartReplaceUpsell'] as String,
        vatTaxAuthGeoId: json['vatTaxAuthGeoId'] as String,
        vatTaxAuthPartyId: json['vatTaxAuthPartyId'] as String,
        daysToCancelNonPay: json['daysToCancelNonPay'] as int,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        payToPartyId: json['payToPartyId'] as String,
        defaultLocaleString: json['defaultLocaleString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStore overridesProductStore(Map<String, dynamic> map) {
    return ProductStore(
        entityId: create_id_from('ProductStore', ['productStoreId'], map),
        viewCartOnAdd: map['viewCartOnAdd'],
        requireCustomerRole: map['requireCustomerRole'],
        companyName: map['companyName'],
        headerDeclinedStatus: map['headerDeclinedStatus'],
        requireInventory: map['requireInventory'],
        checkInventory: map['checkInventory'],
        autoApproveInvoice: map['autoApproveInvoice'],
        addToCartRemoveIncompat: map['addToCartRemoveIncompat'],
        enableAutoSuggestionList: map['enableAutoSuggestionList'],
        defaultSalesChannelEnumId: map['defaultSalesChannelEnumId'],
        autoApproveOrder: map['autoApproveOrder'],
        allowPassword: map['allowPassword'],
        showTaxIsExempt: map['showTaxIsExempt'],
        oldHeaderLogo: map['oldHeaderLogo'],
        autoSaveCart: map['autoSaveCart'],
        inventoryFacilityId: map['inventoryFacilityId'],
        headerApprovedStatus: map['headerApprovedStatus'],
        oldHeaderMiddleBackground: map['oldHeaderMiddleBackground'],
        defaultTimeZoneString: map['defaultTimeZoneString'],
        prorateTaxes: map['prorateTaxes'],
        showCheckoutGiftOptions: map['showCheckoutGiftOptions'],
        oldStyleSheet: map['oldStyleSheet'],
        manualAuthIsCapture: map['manualAuthIsCapture'],
        itemDeclinedStatus: map['itemDeclinedStatus'],
        visualThemeId: map['visualThemeId'],
        storeCreditAccountEnumId: map['storeCreditAccountEnumId'],
        showOutOfStockProducts: map['showOutOfStockProducts'],
        itemApprovedStatus: map['itemApprovedStatus'],
        allowComment: map['allowComment'],
        storeCreditValidDays: map['storeCreditValidDays'],
        splitPayPrefPerShpGrp: map['splitPayPrefPerShpGrp'],
        authFraudMessage: map['authFraudMessage'],
        managedByLot: map['managedByLot'],
        reqShipAddrForDigItems: map['reqShipAddrForDigItems'],
        oneInventoryFacility: map['oneInventoryFacility'],
        orderNumberPrefix: map['orderNumberPrefix'],
        autoInvoiceDigitalItems: map['autoInvoiceDigitalItems'],
        subtitle: map['subtitle'],
        reserveOrderEnumId: map['reserveOrderEnumId'],
        isDemoStore: map['isDemoStore'],
        retryFailedAuths: map['retryFailedAuths'],
        selectPaymentTypePerItem: map['selectPaymentTypePerItem'],
        balanceResOnOrderCreation: map['balanceResOnOrderCreation'],
        autoApproveReviews: map['autoApproveReviews'],
        explodeOrderItems: map['explodeOrderItems'],
        usePrimaryEmailUsername: map['usePrimaryEmailUsername'],
        headerCancelStatus: map['headerCancelStatus'],
        title: map['title'],
        primaryStoreGroupId: map['primaryStoreGroupId'],
        oldHeaderRightBackground: map['oldHeaderRightBackground'],
        enableDigProdUpload: map['enableDigProdUpload'],
        autoOrderCcTryOtherCards: map['autoOrderCcTryOtherCards'],
        autoOrderCcTryLaterMax: map['autoOrderCcTryLaterMax'],
        digitalItemApprovedStatus: map['digitalItemApprovedStatus'],
        storeName: map['storeName'],
        reserveInventory: map['reserveInventory'],
        productStoreId: map['productStoreId'],
        isImmediatelyFulfilled: map['isImmediatelyFulfilled'],
        defaultPassword: map['defaultPassword'],
        itemCancelStatus: map['itemCancelStatus'],
        autoOrderCcTryExp: map['autoOrderCcTryExp'],
        authDeclinedMessage: map['authDeclinedMessage'],
        prodSearchExcludeVariants: map['prodSearchExcludeVariants'],
        shipIfCaptureFails: map['shipIfCaptureFails'],
        showPricesWithVatTax: map['showPricesWithVatTax'],
        defaultCurrencyUomId: map['defaultCurrencyUomId'],
        orderDecimalQuantity: map['orderDecimalQuantity'],
        prorateShipping: map['prorateShipping'],
        digProdUploadCategoryId: map['digProdUploadCategoryId'],
        reqReturnInventoryReceive: map['reqReturnInventoryReceive'],
        authErrorMessage: map['authErrorMessage'],
        setOwnerUponIssuance: map['setOwnerUponIssuance'],
        checkGcBalance: map['checkGcBalance'],
        autoOrderCcTryLaterNsf: map['autoOrderCcTryLaterNsf'],
        addToCartReplaceUpsell: map['addToCartReplaceUpsell'],
        vatTaxAuthGeoId: map['vatTaxAuthGeoId'],
        vatTaxAuthPartyId: map['vatTaxAuthPartyId'],
        daysToCancelNonPay: map['daysToCancelNonPay'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        payToPartyId: map['payToPartyId'],
        defaultLocaleString: map['defaultLocaleString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreCatalog extractProductStoreCatalog(dynamic json) {
    return ProductStoreCatalog(
        entityId: create_id_from('ProductStoreCatalog', ['productStoreId', 'prodCatalogId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        productStoreId: json['productStoreId'] as String,
        prodCatalogId: json['prodCatalogId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreCatalog overridesProductStoreCatalog(Map<String, dynamic> map) {
    return ProductStoreCatalog(
        entityId: create_id_from('ProductStoreCatalog', ['productStoreId', 'prodCatalogId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        productStoreId: map['productStoreId'],
        prodCatalogId: map['prodCatalogId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreEmailSetting extractProductStoreEmailSetting(dynamic json) {
    return ProductStoreEmailSetting(
        entityId: create_id_from('ProductStoreEmailSetting', ['productStoreId', 'emailType'], json),
        xslfoAttachScreenLocation: json['xslfoAttachScreenLocation'] as String,
        bodyScreenLocation: json['bodyScreenLocation'] as String,
        subject: json['subject'] as String,
        bccAddress: json['bccAddress'] as String,
        ccAddress: json['ccAddress'] as String,
        emailType: json['emailType'] as String,
        fromAddress: json['fromAddress'] as String,
        productStoreId: json['productStoreId'] as String,
        contentType: json['contentType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreEmailSetting overridesProductStoreEmailSetting(Map<String, dynamic> map) {
    return ProductStoreEmailSetting(
        entityId: create_id_from('ProductStoreEmailSetting', ['productStoreId', 'emailType'], map),
        xslfoAttachScreenLocation: map['xslfoAttachScreenLocation'],
        bodyScreenLocation: map['bodyScreenLocation'],
        subject: map['subject'],
        bccAddress: map['bccAddress'],
        ccAddress: map['ccAddress'],
        emailType: map['emailType'],
        fromAddress: map['fromAddress'],
        productStoreId: map['productStoreId'],
        contentType: map['contentType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreFacility extractProductStoreFacility(dynamic json) {
    return ProductStoreFacility(
        entityId: create_id_from('ProductStoreFacility', ['productStoreId', 'facilityId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        productStoreId: json['productStoreId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreFacility overridesProductStoreFacility(Map<String, dynamic> map) {
    return ProductStoreFacility(
        entityId: create_id_from('ProductStoreFacility', ['productStoreId', 'facilityId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        sequenceNum: map['sequenceNum'],
        productStoreId: map['productStoreId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreFacilityByOrder extractProductStoreFacilityByOrder(dynamic json) {
    return ProductStoreFacilityByOrder(
        entityId: create_id_from('ProductStoreFacilityByOrder', ['orderId', 'productStoreId', 'facilityId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        orderId: json['orderId'] as String,
        facilityTypeId: json['facilityTypeId'] as String,
        storeName: json['storeName'] as String,
        productStoreId: json['productStoreId'] as String,
        facilityName: json['facilityName'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreFacilityByOrder overridesProductStoreFacilityByOrder(Map<String, dynamic> map) {
    return ProductStoreFacilityByOrder(
        entityId: create_id_from('ProductStoreFacilityByOrder', ['orderId', 'productStoreId', 'facilityId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        sequenceNum: map['sequenceNum'],
        orderId: map['orderId'],
        facilityTypeId: map['facilityTypeId'],
        storeName: map['storeName'],
        productStoreId: map['productStoreId'],
        facilityName: map['facilityName'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreFinActSetting extractProductStoreFinActSetting(dynamic json) {
    return ProductStoreFinActSetting(
        entityId: create_id_from('ProductStoreFinActSetting', ['productStoreId', 'finAccountTypeId'], json),
        authValidDays: json['authValidDays'] as int,
        allowAuthToNegative: json['allowAuthToNegative'] as String,
        accountCodeLength: json['accountCodeLength'] as int,
        purchSurveyCopyMe: json['purchSurveyCopyMe'] as String,
        validateGCFinAcct: json['validateGCFinAcct'] as String,
        replenishThreshold: json['replenishThreshold'] as double,
        accountValidDays: json['accountValidDays'] as int,
        finAccountTypeId: json['finAccountTypeId'] as String,
        replenishMethodEnumId: json['replenishMethodEnumId'] as String,
        purchSurveySendTo: json['purchSurveySendTo'] as String,
        minBalance: json['minBalance'] as double,
        productStoreId: json['productStoreId'] as String,
        purchaseSurveyId: json['purchaseSurveyId'] as String,
        requirePinCode: json['requirePinCode'] as String,
        pinCodeLength: json['pinCodeLength'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreFinActSetting overridesProductStoreFinActSetting(Map<String, dynamic> map) {
    return ProductStoreFinActSetting(
        entityId: create_id_from('ProductStoreFinActSetting', ['productStoreId', 'finAccountTypeId'], map),
        authValidDays: map['authValidDays'],
        allowAuthToNegative: map['allowAuthToNegative'],
        accountCodeLength: map['accountCodeLength'],
        purchSurveyCopyMe: map['purchSurveyCopyMe'],
        validateGCFinAcct: map['validateGCFinAcct'],
        replenishThreshold: map['replenishThreshold'],
        accountValidDays: map['accountValidDays'],
        finAccountTypeId: map['finAccountTypeId'],
        replenishMethodEnumId: map['replenishMethodEnumId'],
        purchSurveySendTo: map['purchSurveySendTo'],
        minBalance: map['minBalance'],
        productStoreId: map['productStoreId'],
        purchaseSurveyId: map['purchaseSurveyId'],
        requirePinCode: map['requirePinCode'],
        pinCodeLength: map['pinCodeLength'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroup extractProductStoreGroup(dynamic json) {
    return ProductStoreGroup(
        entityId: create_id_from('ProductStoreGroup', ['productStoreGroupId'], json),
        productStoreGroupTypeId: json['productStoreGroupTypeId'] as String,
        primaryParentGroupId: json['primaryParentGroupId'] as String,
        productStoreGroupName: json['productStoreGroupName'] as String,
        description: json['description'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroup overridesProductStoreGroup(Map<String, dynamic> map) {
    return ProductStoreGroup(
        entityId: create_id_from('ProductStoreGroup', ['productStoreGroupId'], map),
        productStoreGroupTypeId: map['productStoreGroupTypeId'],
        primaryParentGroupId: map['primaryParentGroupId'],
        productStoreGroupName: map['productStoreGroupName'],
        description: map['description'],
        productStoreGroupId: map['productStoreGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupAndMember extractProductStoreGroupAndMember(dynamic json) {
    return ProductStoreGroupAndMember(
        entityId: create_id_from('ProductStoreGroupAndMember', ['productStoreGroupId', 'fromDate', 'productStoreId'], json),
        viewCartOnAdd: json['viewCartOnAdd'] as String,
        requireCustomerRole: json['requireCustomerRole'] as String,
        sequenceNum: json['sequenceNum'] as int,
        companyName: json['companyName'] as String,
        headerDeclinedStatus: json['headerDeclinedStatus'] as String,
        requireInventory: json['requireInventory'] as String,
        checkInventory: json['checkInventory'] as String,
        autoApproveInvoice: json['autoApproveInvoice'] as String,
        addToCartRemoveIncompat: json['addToCartRemoveIncompat'] as String,
        enableAutoSuggestionList: json['enableAutoSuggestionList'] as String,
        defaultSalesChannelEnumId: json['defaultSalesChannelEnumId'] as String,
        autoApproveOrder: json['autoApproveOrder'] as String,
        allowPassword: json['allowPassword'] as String,
        showTaxIsExempt: json['showTaxIsExempt'] as String,
        oldHeaderLogo: json['oldHeaderLogo'] as String,
        autoSaveCart: json['autoSaveCart'] as String,
        inventoryFacilityId: json['inventoryFacilityId'] as String,
        headerApprovedStatus: json['headerApprovedStatus'] as String,
        oldHeaderMiddleBackground: json['oldHeaderMiddleBackground'] as String,
        defaultTimeZoneString: json['defaultTimeZoneString'] as String,
        prorateTaxes: json['prorateTaxes'] as String,
        showCheckoutGiftOptions: json['showCheckoutGiftOptions'] as String,
        oldStyleSheet: json['oldStyleSheet'] as String,
        manualAuthIsCapture: json['manualAuthIsCapture'] as String,
        itemDeclinedStatus: json['itemDeclinedStatus'] as String,
        visualThemeId: json['visualThemeId'] as String,
        storeCreditAccountEnumId: json['storeCreditAccountEnumId'] as String,
        showOutOfStockProducts: json['showOutOfStockProducts'] as String,
        itemApprovedStatus: json['itemApprovedStatus'] as String,
        allowComment: json['allowComment'] as String,
        storeCreditValidDays: json['storeCreditValidDays'] as int,
        splitPayPrefPerShpGrp: json['splitPayPrefPerShpGrp'] as String,
        authFraudMessage: json['authFraudMessage'] as String,
        managedByLot: json['managedByLot'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        reqShipAddrForDigItems: json['reqShipAddrForDigItems'] as String,
        oneInventoryFacility: json['oneInventoryFacility'] as String,
        orderNumberPrefix: json['orderNumberPrefix'] as String,
        autoInvoiceDigitalItems: json['autoInvoiceDigitalItems'] as String,
        subtitle: json['subtitle'] as String,
        reserveOrderEnumId: json['reserveOrderEnumId'] as String,
        isDemoStore: json['isDemoStore'] as String,
        productStoreGroupTypeId: json['productStoreGroupTypeId'] as String,
        retryFailedAuths: json['retryFailedAuths'] as String,
        selectPaymentTypePerItem: json['selectPaymentTypePerItem'] as String,
        balanceResOnOrderCreation: json['balanceResOnOrderCreation'] as String,
        autoApproveReviews: json['autoApproveReviews'] as String,
        explodeOrderItems: json['explodeOrderItems'] as String,
        usePrimaryEmailUsername: json['usePrimaryEmailUsername'] as String,
        description: json['description'] as String,
        headerCancelStatus: json['headerCancelStatus'] as String,
        title: json['title'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        primaryStoreGroupId: json['primaryStoreGroupId'] as String,
        primaryParentGroupId: json['primaryParentGroupId'] as String,
        oldHeaderRightBackground: json['oldHeaderRightBackground'] as String,
        enableDigProdUpload: json['enableDigProdUpload'] as String,
        autoOrderCcTryOtherCards: json['autoOrderCcTryOtherCards'] as String,
        autoOrderCcTryLaterMax: json['autoOrderCcTryLaterMax'] as int,
        digitalItemApprovedStatus: json['digitalItemApprovedStatus'] as String,
        storeName: json['storeName'] as String,
        reserveInventory: json['reserveInventory'] as String,
        productStoreId: json['productStoreId'] as String,
        isImmediatelyFulfilled: json['isImmediatelyFulfilled'] as String,
        defaultPassword: json['defaultPassword'] as String,
        itemCancelStatus: json['itemCancelStatus'] as String,
        autoOrderCcTryExp: json['autoOrderCcTryExp'] as String,
        authDeclinedMessage: json['authDeclinedMessage'] as String,
        prodSearchExcludeVariants: json['prodSearchExcludeVariants'] as String,
        productStoreGroupName: json['productStoreGroupName'] as String,
        shipIfCaptureFails: json['shipIfCaptureFails'] as String,
        showPricesWithVatTax: json['showPricesWithVatTax'] as String,
        defaultCurrencyUomId: json['defaultCurrencyUomId'] as String,
        orderDecimalQuantity: json['orderDecimalQuantity'] as String,
        prorateShipping: json['prorateShipping'] as String,
        digProdUploadCategoryId: json['digProdUploadCategoryId'] as String,
        reqReturnInventoryReceive: json['reqReturnInventoryReceive'] as String,
        authErrorMessage: json['authErrorMessage'] as String,
        setOwnerUponIssuance: json['setOwnerUponIssuance'] as String,
        checkGcBalance: json['checkGcBalance'] as String,
        autoOrderCcTryLaterNsf: json['autoOrderCcTryLaterNsf'] as String,
        addToCartReplaceUpsell: json['addToCartReplaceUpsell'] as String,
        vatTaxAuthGeoId: json['vatTaxAuthGeoId'] as String,
        vatTaxAuthPartyId: json['vatTaxAuthPartyId'] as String,
        daysToCancelNonPay: json['daysToCancelNonPay'] as int,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        payToPartyId: json['payToPartyId'] as String,
        defaultLocaleString: json['defaultLocaleString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupAndMember overridesProductStoreGroupAndMember(Map<String, dynamic> map) {
    return ProductStoreGroupAndMember(
        entityId: create_id_from('ProductStoreGroupAndMember', ['productStoreGroupId', 'fromDate', 'productStoreId'], map),
        viewCartOnAdd: map['viewCartOnAdd'],
        requireCustomerRole: map['requireCustomerRole'],
        sequenceNum: map['sequenceNum'],
        companyName: map['companyName'],
        headerDeclinedStatus: map['headerDeclinedStatus'],
        requireInventory: map['requireInventory'],
        checkInventory: map['checkInventory'],
        autoApproveInvoice: map['autoApproveInvoice'],
        addToCartRemoveIncompat: map['addToCartRemoveIncompat'],
        enableAutoSuggestionList: map['enableAutoSuggestionList'],
        defaultSalesChannelEnumId: map['defaultSalesChannelEnumId'],
        autoApproveOrder: map['autoApproveOrder'],
        allowPassword: map['allowPassword'],
        showTaxIsExempt: map['showTaxIsExempt'],
        oldHeaderLogo: map['oldHeaderLogo'],
        autoSaveCart: map['autoSaveCart'],
        inventoryFacilityId: map['inventoryFacilityId'],
        headerApprovedStatus: map['headerApprovedStatus'],
        oldHeaderMiddleBackground: map['oldHeaderMiddleBackground'],
        defaultTimeZoneString: map['defaultTimeZoneString'],
        prorateTaxes: map['prorateTaxes'],
        showCheckoutGiftOptions: map['showCheckoutGiftOptions'],
        oldStyleSheet: map['oldStyleSheet'],
        manualAuthIsCapture: map['manualAuthIsCapture'],
        itemDeclinedStatus: map['itemDeclinedStatus'],
        visualThemeId: map['visualThemeId'],
        storeCreditAccountEnumId: map['storeCreditAccountEnumId'],
        showOutOfStockProducts: map['showOutOfStockProducts'],
        itemApprovedStatus: map['itemApprovedStatus'],
        allowComment: map['allowComment'],
        storeCreditValidDays: map['storeCreditValidDays'],
        splitPayPrefPerShpGrp: map['splitPayPrefPerShpGrp'],
        authFraudMessage: map['authFraudMessage'],
        managedByLot: map['managedByLot'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        reqShipAddrForDigItems: map['reqShipAddrForDigItems'],
        oneInventoryFacility: map['oneInventoryFacility'],
        orderNumberPrefix: map['orderNumberPrefix'],
        autoInvoiceDigitalItems: map['autoInvoiceDigitalItems'],
        subtitle: map['subtitle'],
        reserveOrderEnumId: map['reserveOrderEnumId'],
        isDemoStore: map['isDemoStore'],
        productStoreGroupTypeId: map['productStoreGroupTypeId'],
        retryFailedAuths: map['retryFailedAuths'],
        selectPaymentTypePerItem: map['selectPaymentTypePerItem'],
        balanceResOnOrderCreation: map['balanceResOnOrderCreation'],
        autoApproveReviews: map['autoApproveReviews'],
        explodeOrderItems: map['explodeOrderItems'],
        usePrimaryEmailUsername: map['usePrimaryEmailUsername'],
        description: map['description'],
        headerCancelStatus: map['headerCancelStatus'],
        title: map['title'],
        productStoreGroupId: map['productStoreGroupId'],
        primaryStoreGroupId: map['primaryStoreGroupId'],
        primaryParentGroupId: map['primaryParentGroupId'],
        oldHeaderRightBackground: map['oldHeaderRightBackground'],
        enableDigProdUpload: map['enableDigProdUpload'],
        autoOrderCcTryOtherCards: map['autoOrderCcTryOtherCards'],
        autoOrderCcTryLaterMax: map['autoOrderCcTryLaterMax'],
        digitalItemApprovedStatus: map['digitalItemApprovedStatus'],
        storeName: map['storeName'],
        reserveInventory: map['reserveInventory'],
        productStoreId: map['productStoreId'],
        isImmediatelyFulfilled: map['isImmediatelyFulfilled'],
        defaultPassword: map['defaultPassword'],
        itemCancelStatus: map['itemCancelStatus'],
        autoOrderCcTryExp: map['autoOrderCcTryExp'],
        authDeclinedMessage: map['authDeclinedMessage'],
        prodSearchExcludeVariants: map['prodSearchExcludeVariants'],
        productStoreGroupName: map['productStoreGroupName'],
        shipIfCaptureFails: map['shipIfCaptureFails'],
        showPricesWithVatTax: map['showPricesWithVatTax'],
        defaultCurrencyUomId: map['defaultCurrencyUomId'],
        orderDecimalQuantity: map['orderDecimalQuantity'],
        prorateShipping: map['prorateShipping'],
        digProdUploadCategoryId: map['digProdUploadCategoryId'],
        reqReturnInventoryReceive: map['reqReturnInventoryReceive'],
        authErrorMessage: map['authErrorMessage'],
        setOwnerUponIssuance: map['setOwnerUponIssuance'],
        checkGcBalance: map['checkGcBalance'],
        autoOrderCcTryLaterNsf: map['autoOrderCcTryLaterNsf'],
        addToCartReplaceUpsell: map['addToCartReplaceUpsell'],
        vatTaxAuthGeoId: map['vatTaxAuthGeoId'],
        vatTaxAuthPartyId: map['vatTaxAuthPartyId'],
        daysToCancelNonPay: map['daysToCancelNonPay'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        payToPartyId: map['payToPartyId'],
        defaultLocaleString: map['defaultLocaleString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupMember extractProductStoreGroupMember(dynamic json) {
    return ProductStoreGroupMember(
        entityId: create_id_from('ProductStoreGroupMember', ['productStoreId', 'productStoreGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        productStoreId: json['productStoreId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupMember overridesProductStoreGroupMember(Map<String, dynamic> map) {
    return ProductStoreGroupMember(
        entityId: create_id_from('ProductStoreGroupMember', ['productStoreId', 'productStoreGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        productStoreId: map['productStoreId'],
        productStoreGroupId: map['productStoreGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupRole extractProductStoreGroupRole(dynamic json) {
    return ProductStoreGroupRole(
        entityId: create_id_from('ProductStoreGroupRole', ['productStoreGroupId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupRole overridesProductStoreGroupRole(Map<String, dynamic> map) {
    return ProductStoreGroupRole(
        entityId: create_id_from('ProductStoreGroupRole', ['productStoreGroupId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        productStoreGroupId: map['productStoreGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupRollup extractProductStoreGroupRollup(dynamic json) {
    return ProductStoreGroupRollup(
        entityId: create_id_from('ProductStoreGroupRollup', ['productStoreGroupId', 'parentGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        parentGroupId: json['parentGroupId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupRollup overridesProductStoreGroupRollup(Map<String, dynamic> map) {
    return ProductStoreGroupRollup(
        entityId: create_id_from('ProductStoreGroupRollup', ['productStoreGroupId', 'parentGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        parentGroupId: map['parentGroupId'],
        productStoreGroupId: map['productStoreGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupRollupAndChild extractProductStoreGroupRollupAndChild(dynamic json) {
    return ProductStoreGroupRollupAndChild(
        entityId: create_id_from('ProductStoreGroupRollupAndChild', ['productStoreGroupId', 'fromDate', 'parentGroupId'], json),
        productStoreGroupTypeId: json['productStoreGroupTypeId'] as String,
        primaryParentGroupId: json['primaryParentGroupId'] as String,
        fromDate: check_dt(json['fromDate']),
        productStoreGroupName: json['productStoreGroupName'] as String,
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        parentGroupId: json['parentGroupId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupRollupAndChild overridesProductStoreGroupRollupAndChild(Map<String, dynamic> map) {
    return ProductStoreGroupRollupAndChild(
        entityId: create_id_from('ProductStoreGroupRollupAndChild', ['productStoreGroupId', 'fromDate', 'parentGroupId'], map),
        productStoreGroupTypeId: map['productStoreGroupTypeId'],
        primaryParentGroupId: map['primaryParentGroupId'],
        fromDate: map['fromDate'],
        productStoreGroupName: map['productStoreGroupName'],
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        parentGroupId: map['parentGroupId'],
        productStoreGroupId: map['productStoreGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreGroupType extractProductStoreGroupType(dynamic json) {
    return ProductStoreGroupType(
        entityId: create_id_from('ProductStoreGroupType', ['productStoreGroupTypeId'], json),
        productStoreGroupTypeId: json['productStoreGroupTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreGroupType overridesProductStoreGroupType(Map<String, dynamic> map) {
    return ProductStoreGroupType(
        entityId: create_id_from('ProductStoreGroupType', ['productStoreGroupTypeId'], map),
        productStoreGroupTypeId: map['productStoreGroupTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreKeywordOvrd extractProductStoreKeywordOvrd(dynamic json) {
    return ProductStoreKeywordOvrd(
        entityId: create_id_from('ProductStoreKeywordOvrd', ['productStoreId', 'keyword', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productStoreId: json['productStoreId'] as String,
        targetTypeEnumId: json['targetTypeEnumId'] as String,
        keyword: json['keyword'] as String,
        thruDate: check_dt(json['thruDate']),
        target: json['target'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreKeywordOvrd overridesProductStoreKeywordOvrd(Map<String, dynamic> map) {
    return ProductStoreKeywordOvrd(
        entityId: create_id_from('ProductStoreKeywordOvrd', ['productStoreId', 'keyword', 'fromDate'], map),
        fromDate: map['fromDate'],
        productStoreId: map['productStoreId'],
        targetTypeEnumId: map['targetTypeEnumId'],
        keyword: map['keyword'],
        thruDate: map['thruDate'],
        target: map['target'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStorePaymentSetting extractProductStorePaymentSetting(dynamic json) {
    return ProductStorePaymentSetting(
        entityId: create_id_from('ProductStorePaymentSetting', ['productStoreId', 'paymentMethodTypeId', 'paymentServiceTypeEnumId'], json),
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        paymentService: json['paymentService'] as String,
        paymentPropertiesPath: json['paymentPropertiesPath'] as String,
        paymentServiceTypeEnumId: json['paymentServiceTypeEnumId'] as String,
        applyToAllProducts: json['applyToAllProducts'] as String,
        productStoreId: json['productStoreId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        paymentCustomMethodId: json['paymentCustomMethodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStorePaymentSetting overridesProductStorePaymentSetting(Map<String, dynamic> map) {
    return ProductStorePaymentSetting(
        entityId: create_id_from('ProductStorePaymentSetting', ['productStoreId', 'paymentMethodTypeId', 'paymentServiceTypeEnumId'], map),
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        paymentService: map['paymentService'],
        paymentPropertiesPath: map['paymentPropertiesPath'],
        paymentServiceTypeEnumId: map['paymentServiceTypeEnumId'],
        applyToAllProducts: map['applyToAllProducts'],
        productStoreId: map['productStoreId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        paymentCustomMethodId: map['paymentCustomMethodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStorePromoAndAppl extractProductStorePromoAndAppl(dynamic json) {
    return ProductStorePromoAndAppl(
        entityId: create_id_from('ProductStorePromoAndAppl', ['fromDate', 'productStoreId', 'productPromoId'], json),
        fromDate: check_dt(json['fromDate']),
        promoName: json['promoName'] as String,
        userEntered: json['userEntered'] as String,
        sequenceNum: json['sequenceNum'] as int,
        manualOnly: json['manualOnly'] as String,
        productStoreId: json['productStoreId'] as String,
        productPromoId: json['productPromoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStorePromoAndAppl overridesProductStorePromoAndAppl(Map<String, dynamic> map) {
    return ProductStorePromoAndAppl(
        entityId: create_id_from('ProductStorePromoAndAppl', ['fromDate', 'productStoreId', 'productPromoId'], map),
        fromDate: map['fromDate'],
        promoName: map['promoName'],
        userEntered: map['userEntered'],
        sequenceNum: map['sequenceNum'],
        manualOnly: map['manualOnly'],
        productStoreId: map['productStoreId'],
        productPromoId: map['productPromoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStorePromoAppl extractProductStorePromoAppl(dynamic json) {
    return ProductStorePromoAppl(
        entityId: create_id_from('ProductStorePromoAppl', ['productStoreId', 'productPromoId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        manualOnly: json['manualOnly'] as String,
        productStoreId: json['productStoreId'] as String,
        productPromoId: json['productPromoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStorePromoAppl overridesProductStorePromoAppl(Map<String, dynamic> map) {
    return ProductStorePromoAppl(
        entityId: create_id_from('ProductStorePromoAppl', ['productStoreId', 'productPromoId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        manualOnly: map['manualOnly'],
        productStoreId: map['productStoreId'],
        productPromoId: map['productPromoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreRole extractProductStoreRole(dynamic json) {
    return ProductStoreRole(
        entityId: create_id_from('ProductStoreRole', ['partyId', 'roleTypeId', 'productStoreId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        productStoreId: json['productStoreId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreRole overridesProductStoreRole(Map<String, dynamic> map) {
    return ProductStoreRole(
        entityId: create_id_from('ProductStoreRole', ['partyId', 'roleTypeId', 'productStoreId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        sequenceNum: map['sequenceNum'],
        productStoreId: map['productStoreId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreShipmentMeth extractProductStoreShipmentMeth(dynamic json) {
    return ProductStoreShipmentMeth(
        entityId: create_id_from('ProductStoreShipmentMeth', ['productStoreShipMethId'], json),
        productStoreShipMethId: json['productStoreShipMethId'] as String,
        companyPartyId: json['companyPartyId'] as String,
        allowancePercent: json['allowancePercent'] as double,
        includeFeatureGroup: json['includeFeatureGroup'] as String,
        shipmentCustomMethodId: json['shipmentCustomMethodId'] as String,
        minTotal: json['minTotal'] as double,
        minWeight: json['minWeight'] as double,
        requireCompanyAddr: json['requireCompanyAddr'] as String,
        maxSize: json['maxSize'] as double,
        excludeGeoId: json['excludeGeoId'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        minSize: json['minSize'] as double,
        productStoreId: json['productStoreId'] as String,
        allowCompanyAddr: json['allowCompanyAddr'] as String,
        partyId: json['partyId'] as String,
        minimumPrice: json['minimumPrice'] as double,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        excludeFeatureGroup: json['excludeFeatureGroup'] as String,
        sequenceNumber: json['sequenceNumber'] as int,
        roleTypeId: json['roleTypeId'] as String,
        allowUspsAddr: json['allowUspsAddr'] as String,
        maxWeight: json['maxWeight'] as double,
        serviceName: json['serviceName'] as String,
        includeGeoId: json['includeGeoId'] as String,
        maxTotal: json['maxTotal'] as double,
        requireUspsAddr: json['requireUspsAddr'] as String,
        configProps: json['configProps'] as String,
        includeNoChargeItems: json['includeNoChargeItems'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreShipmentMeth overridesProductStoreShipmentMeth(Map<String, dynamic> map) {
    return ProductStoreShipmentMeth(
        entityId: create_id_from('ProductStoreShipmentMeth', ['productStoreShipMethId'], map),
        productStoreShipMethId: map['productStoreShipMethId'],
        companyPartyId: map['companyPartyId'],
        allowancePercent: map['allowancePercent'],
        includeFeatureGroup: map['includeFeatureGroup'],
        shipmentCustomMethodId: map['shipmentCustomMethodId'],
        minTotal: map['minTotal'],
        minWeight: map['minWeight'],
        requireCompanyAddr: map['requireCompanyAddr'],
        maxSize: map['maxSize'],
        excludeGeoId: map['excludeGeoId'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        minSize: map['minSize'],
        productStoreId: map['productStoreId'],
        allowCompanyAddr: map['allowCompanyAddr'],
        partyId: map['partyId'],
        minimumPrice: map['minimumPrice'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        excludeFeatureGroup: map['excludeFeatureGroup'],
        sequenceNumber: map['sequenceNumber'],
        roleTypeId: map['roleTypeId'],
        allowUspsAddr: map['allowUspsAddr'],
        maxWeight: map['maxWeight'],
        serviceName: map['serviceName'],
        includeGeoId: map['includeGeoId'],
        maxTotal: map['maxTotal'],
        requireUspsAddr: map['requireUspsAddr'],
        configProps: map['configProps'],
        includeNoChargeItems: map['includeNoChargeItems'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreShipmentMethView extractProductStoreShipmentMethView(dynamic json) {
    return ProductStoreShipmentMethView(
        entityId: create_id_from('ProductStoreShipmentMethView', ['productStoreShipMethId'], json),
        productStoreShipMethId: json['productStoreShipMethId'] as String,
        companyPartyId: json['companyPartyId'] as String,
        includeFeatureGroup: json['includeFeatureGroup'] as String,
        shipmentCustomMethodId: json['shipmentCustomMethodId'] as String,
        minTotal: json['minTotal'] as double,
        minWeight: json['minWeight'] as double,
        requireCompanyAddr: json['requireCompanyAddr'] as String,
        description: json['description'] as String,
        maxSize: json['maxSize'] as double,
        excludeGeoId: json['excludeGeoId'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        minSize: json['minSize'] as double,
        productStoreId: json['productStoreId'] as String,
        allowCompanyAddr: json['allowCompanyAddr'] as String,
        partyId: json['partyId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        excludeFeatureGroup: json['excludeFeatureGroup'] as String,
        sequenceNumber: json['sequenceNumber'] as int,
        roleTypeId: json['roleTypeId'] as String,
        allowUspsAddr: json['allowUspsAddr'] as String,
        maxWeight: json['maxWeight'] as double,
        serviceName: json['serviceName'] as String,
        includeGeoId: json['includeGeoId'] as String,
        maxTotal: json['maxTotal'] as double,
        requireUspsAddr: json['requireUspsAddr'] as String,
        configProps: json['configProps'] as String,
        includeNoChargeItems: json['includeNoChargeItems'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreShipmentMethView overridesProductStoreShipmentMethView(Map<String, dynamic> map) {
    return ProductStoreShipmentMethView(
        entityId: create_id_from('ProductStoreShipmentMethView', ['productStoreShipMethId'], map),
        productStoreShipMethId: map['productStoreShipMethId'],
        companyPartyId: map['companyPartyId'],
        includeFeatureGroup: map['includeFeatureGroup'],
        shipmentCustomMethodId: map['shipmentCustomMethodId'],
        minTotal: map['minTotal'],
        minWeight: map['minWeight'],
        requireCompanyAddr: map['requireCompanyAddr'],
        description: map['description'],
        maxSize: map['maxSize'],
        excludeGeoId: map['excludeGeoId'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        minSize: map['minSize'],
        productStoreId: map['productStoreId'],
        allowCompanyAddr: map['allowCompanyAddr'],
        partyId: map['partyId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        excludeFeatureGroup: map['excludeFeatureGroup'],
        sequenceNumber: map['sequenceNumber'],
        roleTypeId: map['roleTypeId'],
        allowUspsAddr: map['allowUspsAddr'],
        maxWeight: map['maxWeight'],
        serviceName: map['serviceName'],
        includeGeoId: map['includeGeoId'],
        maxTotal: map['maxTotal'],
        requireUspsAddr: map['requireUspsAddr'],
        configProps: map['configProps'],
        includeNoChargeItems: map['includeNoChargeItems'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreSurveyAppl extractProductStoreSurveyAppl(dynamic json) {
    return ProductStoreSurveyAppl(
        entityId: create_id_from('ProductStoreSurveyAppl', ['productStoreSurveyId'], json),
        surveyId: json['surveyId'] as String,
        productId: json['productId'] as String,
        surveyTemplate: json['surveyTemplate'] as String,
        sequenceNum: json['sequenceNum'] as int,
        resultTemplate: json['resultTemplate'] as String,
        surveyApplTypeId: json['surveyApplTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        productStoreSurveyId: json['productStoreSurveyId'] as String,
        groupName: json['groupName'] as String,
        productCategoryId: json['productCategoryId'] as String,
        productStoreId: json['productStoreId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreSurveyAppl overridesProductStoreSurveyAppl(Map<String, dynamic> map) {
    return ProductStoreSurveyAppl(
        entityId: create_id_from('ProductStoreSurveyAppl', ['productStoreSurveyId'], map),
        surveyId: map['surveyId'],
        productId: map['productId'],
        surveyTemplate: map['surveyTemplate'],
        sequenceNum: map['sequenceNum'],
        resultTemplate: map['resultTemplate'],
        surveyApplTypeId: map['surveyApplTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        productStoreSurveyId: map['productStoreSurveyId'],
        groupName: map['groupName'],
        productCategoryId: map['productCategoryId'],
        productStoreId: map['productStoreId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreVendorPayment extractProductStoreVendorPayment(dynamic json) {
    return ProductStoreVendorPayment(
        entityId: create_id_from('ProductStoreVendorPayment', ['productStoreId', 'vendorPartyId', 'paymentMethodTypeId', 'creditCardEnumId'], json),
        productStoreId: json['productStoreId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        vendorPartyId: json['vendorPartyId'] as String,
        creditCardEnumId: json['creditCardEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreVendorPayment overridesProductStoreVendorPayment(Map<String, dynamic> map) {
    return ProductStoreVendorPayment(
        entityId: create_id_from('ProductStoreVendorPayment', ['productStoreId', 'vendorPartyId', 'paymentMethodTypeId', 'creditCardEnumId'], map),
        productStoreId: map['productStoreId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        vendorPartyId: map['vendorPartyId'],
        creditCardEnumId: map['creditCardEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductStoreVendorShipment extractProductStoreVendorShipment(dynamic json) {
    return ProductStoreVendorShipment(
        entityId: create_id_from('ProductStoreVendorShipment', ['productStoreId', 'vendorPartyId', 'shipmentMethodTypeId', 'carrierPartyId'], json),
        carrierPartyId: json['carrierPartyId'] as String,
        productStoreId: json['productStoreId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        vendorPartyId: json['vendorPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductStoreVendorShipment overridesProductStoreVendorShipment(Map<String, dynamic> map) {
    return ProductStoreVendorShipment(
        entityId: create_id_from('ProductStoreVendorShipment', ['productStoreId', 'vendorPartyId', 'shipmentMethodTypeId', 'carrierPartyId'], map),
        carrierPartyId: map['carrierPartyId'],
        productStoreId: map['productStoreId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        vendorPartyId: map['vendorPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}