import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Addendum, Addendum
class Addendum extends EntityBase {

  /// this entity has only one pk
  final DateTime addendumEffectiveDate;
  final String agreementId;
  final DateTime addendumCreationDate;
  final String agreementItemSeqId;
  final String addendumId; // pk
  final String addendumText;
  Addendum({entityId,
    this.addendumEffectiveDate, this.agreementId, this.addendumCreationDate, this.agreementItemSeqId, @required this.addendumId, this.addendumText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Addendum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'addendumEffectiveDate':addendumEffectiveDate, 'agreementId':agreementId, 'addendumCreationDate':addendumCreationDate, 'agreementItemSeqId':agreementItemSeqId, 'addendumId':addendumId, 'addendumText':addendumText};
  }

}

/// Entity Agreement, Agreement
class Agreement extends EntityBase {

  /// this entity has only one pk
  final String roleTypeIdTo;
  final String partyIdFrom;
  final String productId;
  final DateTime agreementDate;
  final String agreementTypeId;
  final String description;
  final String roleTypeIdFrom;
  final DateTime thruDate;
  final DateTime fromDate;
  final String textData;
  final String agreementId; // pk
  final String partyIdTo;
  Agreement({entityId,
    this.roleTypeIdTo, this.partyIdFrom, this.productId, this.agreementDate, this.agreementTypeId, this.description, this.roleTypeIdFrom, this.thruDate, this.fromDate, this.textData, @required this.agreementId, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Agreement { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'productId':productId, 'agreementDate':agreementDate, 'agreementTypeId':agreementTypeId, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'textData':textData, 'agreementId':agreementId, 'partyIdTo':partyIdTo};
  }

}

/// Entity AgreementAttribute, Agreement Attribute
class AgreementAttribute extends EntityBase {

  final String attrDescription;
  final String agreementId; // pk
  final String attrValue;
  final String attrName; // pk
  AgreementAttribute({entityId,
    this.attrDescription, @required this.agreementId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'agreementId':agreementId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity AgreementContent, Agreement Content
class AgreementContent extends EntityBase {

  final DateTime fromDate; // pk
  final String agreementId; // pk
  final String contentId; // pk
  final String agreementItemSeqId; // pk
  final String agreementContentTypeId; // pk
  final DateTime thruDate;
  AgreementContent({entityId,
    @required this.fromDate, @required this.agreementId, @required this.contentId, @required this.agreementItemSeqId, @required this.agreementContentTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'agreementId':agreementId, 'contentId':contentId, 'agreementItemSeqId':agreementItemSeqId, 'agreementContentTypeId':agreementContentTypeId, 'thruDate':thruDate};
  }

}

/// Entity AgreementContentType, Agreement Content Type
class AgreementContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String agreementContentTypeId; // pk
  AgreementContentType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.agreementContentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'agreementContentTypeId':agreementContentTypeId};
  }

}

/// Entity AgreementEmploymentAppl, Agreement Employment Application
class AgreementEmploymentAppl extends EntityBase {

  final String roleTypeIdTo; // pk
  final String partyIdFrom; // pk
  final DateTime agreementDate;
  final String agreementItemSeqId; // pk
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String agreementId; // pk
  final String partyIdTo; // pk
  AgreementEmploymentAppl({entityId,
    @required this.roleTypeIdTo, @required this.partyIdFrom, this.agreementDate, @required this.agreementItemSeqId, @required this.roleTypeIdFrom, this.thruDate, @required this.fromDate, @required this.agreementId, @required this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementEmploymentAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'agreementDate':agreementDate, 'agreementItemSeqId':agreementItemSeqId, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'agreementId':agreementId, 'partyIdTo':partyIdTo};
  }

}

/// Entity AgreementFacilityAppl, Agreement Facility Application
class AgreementFacilityAppl extends EntityBase {

  final String facilityId; // pk
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  AgreementFacilityAppl({entityId,
    @required this.facilityId, @required this.agreementId, @required this.agreementItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementFacilityAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId};
  }

}

/// Entity AgreementGeographicalApplic, Agreement Geographical Applicability
class AgreementGeographicalApplic extends EntityBase {

  final String geoId; // pk
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  AgreementGeographicalApplic({entityId,
    @required this.geoId, @required this.agreementId, @required this.agreementItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementGeographicalApplic { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoId':geoId, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId};
  }

}

/// Entity AgreementItem, Agreement Item
class AgreementItem extends EntityBase {

  final String currencyUomId;
  final String agreementText;
  final String agreementImage;
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  final String agreementItemTypeId;
  AgreementItem({entityId,
    this.currencyUomId, this.agreementText, this.agreementImage, @required this.agreementId, @required this.agreementItemSeqId, this.agreementItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'currencyUomId':currencyUomId, 'agreementText':agreementText, 'agreementImage':agreementImage, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId, 'agreementItemTypeId':agreementItemTypeId};
  }

}

/// Entity AgreementItemAndFacilityAppl, Agreement Item and Agreement Facility Applicability View
class AgreementItemAndFacilityAppl extends EntityBase {

  final String roleTypeIdTo;
  final String partyIdFrom;
  final String facilityId; // pk
  final String productId;
  final DateTime agreementDate;
  final String agreementItemSeqId; // pk
  final String agreementTypeId;
  final String description;
  final String roleTypeIdFrom;
  final String agreementItemTypeId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String textData;
  final String currencyUomId;
  final String agreementText;
  final String agreementImage;
  final String agreementId; // pk
  final String partyIdTo;
  AgreementItemAndFacilityAppl({entityId,
    this.roleTypeIdTo, this.partyIdFrom, @required this.facilityId, this.productId, this.agreementDate, @required this.agreementItemSeqId, this.agreementTypeId, this.description, this.roleTypeIdFrom, this.agreementItemTypeId, this.thruDate, this.fromDate, this.textData, this.currencyUomId, this.agreementText, this.agreementImage, @required this.agreementId, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemAndFacilityAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'facilityId':facilityId, 'productId':productId, 'agreementDate':agreementDate, 'agreementItemSeqId':agreementItemSeqId, 'agreementTypeId':agreementTypeId, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'agreementItemTypeId':agreementItemTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'textData':textData, 'currencyUomId':currencyUomId, 'agreementText':agreementText, 'agreementImage':agreementImage, 'agreementId':agreementId, 'partyIdTo':partyIdTo};
  }

}

/// Entity AgreementItemAndPartyAppl, Agreement Item and Agreement Party Applicability View
class AgreementItemAndPartyAppl extends EntityBase {

  final String roleTypeIdTo;
  final String partyIdFrom;
  final DateTime agreementDate;
  final String agreementItemSeqId; // pk
  final String agreementTypeId;
  final String description;
  final String roleTypeIdFrom;
  final String agreementItemTypeId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String textData;
  final String currencyUomId;
  final String agreementText;
  final String agreementImage;
  final String agreementId; // pk
  final String partyIdTo;
  final String partyId; // pk
  AgreementItemAndPartyAppl({entityId,
    this.roleTypeIdTo, this.partyIdFrom, this.agreementDate, @required this.agreementItemSeqId, this.agreementTypeId, this.description, this.roleTypeIdFrom, this.agreementItemTypeId, this.thruDate, this.fromDate, this.textData, this.currencyUomId, this.agreementText, this.agreementImage, @required this.agreementId, this.partyIdTo, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemAndPartyAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'agreementDate':agreementDate, 'agreementItemSeqId':agreementItemSeqId, 'agreementTypeId':agreementTypeId, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'agreementItemTypeId':agreementItemTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'textData':textData, 'currencyUomId':currencyUomId, 'agreementText':agreementText, 'agreementImage':agreementImage, 'agreementId':agreementId, 'partyIdTo':partyIdTo, 'partyId':partyId};
  }

}

/// Entity AgreementItemAndProductAppl, Agreement Item and Agreement Product Applicability View
class AgreementItemAndProductAppl extends EntityBase {

  final String roleTypeIdTo;
  final String partyIdFrom;
  final String productId; // pk
  final DateTime agreementDate;
  final String agreementItemSeqId; // pk
  final String agreementTypeId;
  final String description;
  final String roleTypeIdFrom;
  final String agreementItemTypeId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String textData;
  final String currencyUomId;
  final String agreementText;
  final String agreementImage;
  final double price;
  final String agreementId; // pk
  final String partyIdTo;
  AgreementItemAndProductAppl({entityId,
    this.roleTypeIdTo, this.partyIdFrom, @required this.productId, this.agreementDate, @required this.agreementItemSeqId, this.agreementTypeId, this.description, this.roleTypeIdFrom, this.agreementItemTypeId, this.thruDate, this.fromDate, this.textData, this.currencyUomId, this.agreementText, this.agreementImage, this.price, @required this.agreementId, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemAndProductAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'productId':productId, 'agreementDate':agreementDate, 'agreementItemSeqId':agreementItemSeqId, 'agreementTypeId':agreementTypeId, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'agreementItemTypeId':agreementItemTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'textData':textData, 'currencyUomId':currencyUomId, 'agreementText':agreementText, 'agreementImage':agreementImage, 'price':price, 'agreementId':agreementId, 'partyIdTo':partyIdTo};
  }

}

/// Entity AgreementItemAttribute, Agreement Item Attribute
class AgreementItemAttribute extends EntityBase {

  final String attrDescription;
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  final String attrValue;
  final String attrName; // pk
  AgreementItemAttribute({entityId,
    this.attrDescription, @required this.agreementId, @required this.agreementItemSeqId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity AgreementItemType, Agreement Item Type
class AgreementItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String agreementItemTypeId; // pk
  AgreementItemType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.agreementItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'agreementItemTypeId':agreementItemTypeId};
  }

}

/// Entity AgreementItemTypeAttr, Agreement Item Type Attribute
class AgreementItemTypeAttr extends EntityBase {

  final String description;
  final String agreementItemTypeId; // pk
  final String attrName; // pk
  AgreementItemTypeAttr({entityId,
    this.description, @required this.agreementItemTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementItemTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'agreementItemTypeId':agreementItemTypeId, 'attrName':attrName};
  }

}

/// Entity AgreementPartyApplic, Agreement Party Application
class AgreementPartyApplic extends EntityBase {

  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  final String partyId; // pk
  AgreementPartyApplic({entityId,
    @required this.agreementId, @required this.agreementItemSeqId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementPartyApplic { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId, 'partyId':partyId};
  }

}

/// Entity AgreementProductAppl, Agreement Product Application
class AgreementProductAppl extends EntityBase {

  final String productId; // pk
  final double price;
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  AgreementProductAppl({entityId,
    @required this.productId, this.price, @required this.agreementId, @required this.agreementItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementProductAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'price':price, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId};
  }

}

/// Entity AgreementPromoAppl, Agreement Promo Applicability
class AgreementPromoAppl extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  final String productPromoId; // pk
  final DateTime thruDate;
  AgreementPromoAppl({entityId,
    @required this.fromDate, this.sequenceNum, @required this.agreementId, @required this.agreementItemSeqId, @required this.productPromoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementPromoAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId, 'productPromoId':productPromoId, 'thruDate':thruDate};
  }

}

/// Entity AgreementRole, Agreement Role
class AgreementRole extends EntityBase {

  final String roleTypeId; // pk
  final String agreementId; // pk
  final String partyId; // pk
  AgreementRole({entityId,
    @required this.roleTypeId, @required this.agreementId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'agreementId':agreementId, 'partyId':partyId};
  }

}

/// Entity AgreementTerm, Agreement Term
class AgreementTerm extends EntityBase {

  /// this entity has only one pk
  final String textValue;
  final int termDays;
  final double maxQuantity;
  final String termTypeId;
  final String agreementItemSeqId;
  final String description;
  final String agreementTermId; // pk
  final double termValue;
  final String invoiceItemTypeId;
  final DateTime thruDate;
  final DateTime fromDate;
  final double minQuantity;
  final String agreementId;
  AgreementTerm({entityId,
    this.textValue, this.termDays, this.maxQuantity, this.termTypeId, this.agreementItemSeqId, this.description, @required this.agreementTermId, this.termValue, this.invoiceItemTypeId, this.thruDate, this.fromDate, this.minQuantity, this.agreementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'textValue':textValue, 'termDays':termDays, 'maxQuantity':maxQuantity, 'termTypeId':termTypeId, 'agreementItemSeqId':agreementItemSeqId, 'description':description, 'agreementTermId':agreementTermId, 'termValue':termValue, 'invoiceItemTypeId':invoiceItemTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'minQuantity':minQuantity, 'agreementId':agreementId};
  }

}

/// Entity AgreementTermAttribute, Agreement Term Attribute
class AgreementTermAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String agreementTermId; // pk
  final String attrName; // pk
  AgreementTermAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.agreementTermId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementTermAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'agreementTermId':agreementTermId, 'attrName':attrName};
  }

}

/// Entity AgreementType, Agreement Type
class AgreementType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String agreementTypeId; // pk
  final String description;
  AgreementType({entityId,
    this.parentTypeId, this.hasTable, @required this.agreementTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'agreementTypeId':agreementTypeId, 'description':description};
  }

}

/// Entity AgreementTypeAttr, Agreement Type Attribute
class AgreementTypeAttr extends EntityBase {

  final String agreementTypeId; // pk
  final String description;
  final String attrName; // pk
  AgreementTypeAttr({entityId,
    @required this.agreementTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'agreementTypeId':agreementTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity AgreementWorkEffortApplic, Agreement WorkEffort Application
class AgreementWorkEffortApplic extends EntityBase {

  final String workEffortId; // pk
  final String agreementId; // pk
  final String agreementItemSeqId; // pk
  AgreementWorkEffortApplic({entityId,
    @required this.workEffortId, @required this.agreementId, @required this.agreementItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AgreementWorkEffortApplic { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'agreementId':agreementId, 'agreementItemSeqId':agreementItemSeqId};
  }

}

/// Entity TermType, Term Type
class TermType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String termTypeId; // pk
  final String description;
  TermType({entityId,
    this.parentTypeId, this.hasTable, @required this.termTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TermType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'termTypeId':termTypeId, 'description':description};
  }

}

/// Entity TermTypeAttr, Term Type Attribute
class TermTypeAttr extends EntityBase {

  final String termTypeId; // pk
  final String description;
  final String attrName; // pk
  TermTypeAttr({entityId,
    @required this.termTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TermTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'termTypeId':termTypeId, 'description':description, 'attrName':attrName};
  }

}