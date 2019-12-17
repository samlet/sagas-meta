import 'package:sagas_meta/src/models/party_agreement.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesAgreement{
  final SrvClient client;
  AccountingServicesAgreement(this.client);

  /**
   * Copy an Agreement - Agreement
   *
   * Requires agreementId
   * Returns agreementId[String]
   */
  Future<OfResult> copyAgreement(Agreement ent, {String copyAgreementTerms, String copyAgreementProducts, String copyAgreementParties, String copyAgreementFacilities}) =>
      client.invoke('copyAgreement', ent, { 'copyAgreementTerms': copyAgreementTerms, 'copyAgreementProducts': copyAgreementProducts, 'copyAgreementParties': copyAgreementParties, 'copyAgreementFacilities': copyAgreementFacilities });

  /**
   * Create an Agreement - Agreement
   *
   * Requires 
   * Returns agreementId[String]
   */
  Future<OfResult> createAgreement(Agreement ent, ) =>
      client.invoke('createAgreement', ent, {  });

  /**
   * Create Agreement Content - AgreementContent
   *
   * Requires agreementId, agreementItemSeqId, agreementContentTypeId, contentId
   * Returns 
   */
  Future<OfResult> createAgreementContent(AgreementContent ent, ) =>
      client.invoke('createAgreementContent', ent, {  });

  /**
   * Create an AgreementFacilityAppl - AgreementFacilityAppl
   *
   * Requires agreementId, agreementItemSeqId, facilityId
   * Returns 
   */
  Future<OfResult> createAgreementFacilityAppl(AgreementFacilityAppl ent, ) =>
      client.invoke('createAgreementFacilityAppl', ent, {  });

  /**
   * Create an AgreementGeographicalApplic - AgreementGeographicalApplic
   *
   * Requires agreementId, agreementItemSeqId, geoId
   * Returns 
   */
  Future<OfResult> createAgreementGeographicalApplic(AgreementGeographicalApplic ent, ) =>
      client.invoke('createAgreementGeographicalApplic', ent, {  });

  /**
   * Create an AgreementItemAttribute - AgreementItemAttribute
   *
   * Requires agreementId, agreementItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createAgreementItemAttribute(AgreementItemAttribute ent, ) =>
      client.invoke('createAgreementItemAttribute', ent, {  });

  /**
   * Create an AgreementPartyApplic - AgreementPartyApplic
   *
   * Requires agreementId, agreementItemSeqId, partyId
   * Returns 
   */
  Future<OfResult> createAgreementPartyApplic(AgreementPartyApplic ent, ) =>
      client.invoke('createAgreementPartyApplic', ent, {  });

  /**
   * Create an AgreementProductAppl - AgreementProductAppl
   *
   * Requires agreementId, agreementItemSeqId, productId
   * Returns 
   */
  Future<OfResult> createAgreementProductAppl(AgreementProductAppl ent, ) =>
      client.invoke('createAgreementProductAppl', ent, {  });

  /**
   * Create an AgreementPromoAppl - AgreementPromoAppl
   *
   * Requires agreementId, agreementItemSeqId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> createAgreementPromoAppl(AgreementPromoAppl ent, ) =>
      client.invoke('createAgreementPromoAppl', ent, {  });

  /**
   * Create an Agreement Role - AgreementRole
   *
   * Requires agreementId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createAgreementRole(AgreementRole ent, ) =>
      client.invoke('createAgreementRole', ent, {  });

  /**
   * Create an AgreementTerm - AgreementTerm
   *
   * Requires 
   * Returns agreementTermId[String]
   */
  Future<OfResult> createAgreementTerm(AgreementTerm ent, ) =>
      client.invoke('createAgreementTerm', ent, {  });

  /**
   * Create a AgreementType record - AgreementType
   *
   * Requires 
   * Returns agreementTypeId[String]
   */
  Future<OfResult> createAgreementType(AgreementType ent, ) =>
      client.invoke('createAgreementType', ent, {  });

  /**
   * Create an AgreementTypeAttr - AgreementTypeAttr
   *
   * Requires agreementTypeId, attrName
   * Returns 
   */
  Future<OfResult> createAgreementTypeAttr(AgreementTypeAttr ent, ) =>
      client.invoke('createAgreementTypeAttr', ent, {  });

  /**
   *  Create AgreementWorkEffortApplic  - AgreementWorkEffortApplic
   *
   * Requires agreementId, workEffortId
   * Returns 
   */
  Future<OfResult> createAgreementWorkEffortApplic(AgreementWorkEffortApplic ent, ) =>
      client.invoke('createAgreementWorkEffortApplic', ent, {  });

  /**
   * Delete an AgreementItemAttribute - AgreementItemAttribute
   *
   * Requires agreementId, agreementItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteAgreementItemAttribute(AgreementItemAttribute ent, ) =>
      client.invoke('deleteAgreementItemAttribute', ent, {  });

  /**
   * Delete an Agreement Role - AgreementRole
   *
   * Requires agreementId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteAgreementRole(AgreementRole ent, ) =>
      client.invoke('deleteAgreementRole', ent, {  });

  /**
   * Delete an AgreementTerm - AgreementTerm
   *
   * Requires agreementTermId
   * Returns 
   */
  Future<OfResult> deleteAgreementTerm(AgreementTerm ent, ) =>
      client.invoke('deleteAgreementTerm', ent, {  });

  /**
   * Delete AgreementWorkEffortApplic - AgreementWorkEffortApplic
   *
   * Requires agreementId, agreementItemSeqId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteAgreementWorkEffortApplic(AgreementWorkEffortApplic ent, ) =>
      client.invoke('deleteAgreementWorkEffortApplic', ent, {  });

  /**
   * Expire an Agreement - Agreement
   *
   * Requires agreementId
   * Returns 
   */
  Future<OfResult> expireAgreement(Agreement ent, ) =>
      client.invoke('expireAgreement', ent, {  });

  /**
   * Get commission receiving parties and amounts for a product. <br/>
            amount input is for the entire quantity. <br/><br/>
            Returns a List of Maps each containing <br/>
            partyIdFrom     String  commission paying party <br/>
            partyIdTo       String  commission receiving party <br/>
            commission      BigDecimal  Commission <br/>
            days            Long    term days <br/>
            currencyUomId   String  Currency <br/>
            productId       String  Product Id <br/>
            Will use the virtual product if no agreement is found for a variant product.  If no quantity is specified, defaults to one (1).
         - 
   *
   * Requires productId, invoiceItemTypeId, amount
   * Returns commissions[List]
   */
  Future<OfResult> getCommissionForProduct({@required String productId, String invoiceId, String invoiceItemSeqId, @required String invoiceItemTypeId, @required Decimal amount, Decimal quantity}) =>
      client.invoke('getCommissionForProduct', null, { 'productId': productId, 'invoiceId': invoiceId, 'invoiceItemSeqId': invoiceItemSeqId, 'invoiceItemTypeId': invoiceItemTypeId, 'amount': amount, 'quantity': quantity });

  /**
   * Remove Content From Agreement - AgreementContent
   *
   * Requires agreementId, agreementItemSeqId, agreementContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> removeAgreementContent(AgreementContent ent, ) =>
      client.invoke('removeAgreementContent', ent, {  });

  /**
   * Remove an AgreementFacilityAppl - AgreementFacilityAppl
   *
   * Requires agreementId, agreementItemSeqId, facilityId
   * Returns 
   */
  Future<OfResult> removeAgreementFacilityAppl(AgreementFacilityAppl ent, ) =>
      client.invoke('removeAgreementFacilityAppl', ent, {  });

  /**
   * Remove an AgreementGeographicalApplic - AgreementGeographicalApplic
   *
   * Requires agreementId, agreementItemSeqId, geoId
   * Returns 
   */
  Future<OfResult> removeAgreementGeographicalApplic(AgreementGeographicalApplic ent, ) =>
      client.invoke('removeAgreementGeographicalApplic', ent, {  });

  /**
   * Remove an AgreementPartyApplic - AgreementPartyApplic
   *
   * Requires agreementId, agreementItemSeqId, partyId
   * Returns 
   */
  Future<OfResult> removeAgreementPartyApplic(AgreementPartyApplic ent, ) =>
      client.invoke('removeAgreementPartyApplic', ent, {  });

  /**
   * Remove an AgreementProductAppl - AgreementProductAppl
   *
   * Requires agreementId, agreementItemSeqId, productId
   * Returns 
   */
  Future<OfResult> removeAgreementProductAppl(AgreementProductAppl ent, ) =>
      client.invoke('removeAgreementProductAppl', ent, {  });

  /**
   * Remove an AgreementPromoAppl - AgreementPromoAppl
   *
   * Requires agreementId, agreementItemSeqId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> removeAgreementPromoAppl(AgreementPromoAppl ent, ) =>
      client.invoke('removeAgreementPromoAppl', ent, {  });

  /**
   * Remove a AgreementType record - AgreementType
   *
   * Requires agreementTypeId
   * Returns 
   */
  Future<OfResult> removeAgreementType(AgreementType ent, ) =>
      client.invoke('removeAgreementType', ent, {  });

  /**
   * Remove an AgreementTypeAttr - AgreementTypeAttr
   *
   * Requires agreementTypeId, attrName
   * Returns 
   */
  Future<OfResult> removeAgreementTypeAttr(AgreementTypeAttr ent, ) =>
      client.invoke('removeAgreementTypeAttr', ent, {  });

  /**
   * Update an Agreement - Agreement
   *
   * Requires agreementId
   * Returns 
   */
  Future<OfResult> updateAgreement(Agreement ent, ) =>
      client.invoke('updateAgreement', ent, {  });

  /**
   * Update Agreement Content - AgreementContent
   *
   * Requires agreementId, agreementItemSeqId, agreementContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> updateAgreementContent(AgreementContent ent, ) =>
      client.invoke('updateAgreementContent', ent, {  });

  /**
   * Update an AgreementFacilityAppl - AgreementFacilityAppl
   *
   * Requires agreementId, agreementItemSeqId, facilityId
   * Returns 
   */
  Future<OfResult> updateAgreementFacilityAppl(AgreementFacilityAppl ent, ) =>
      client.invoke('updateAgreementFacilityAppl', ent, {  });

  /**
   * Update an AgreementGeographicalApplic - AgreementGeographicalApplic
   *
   * Requires agreementId, agreementItemSeqId, geoId
   * Returns 
   */
  Future<OfResult> updateAgreementGeographicalApplic(AgreementGeographicalApplic ent, ) =>
      client.invoke('updateAgreementGeographicalApplic', ent, {  });

  /**
   * Update an AgreementItemAttribute - AgreementItemAttribute
   *
   * Requires agreementId, agreementItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateAgreementItemAttribute(AgreementItemAttribute ent, ) =>
      client.invoke('updateAgreementItemAttribute', ent, {  });

  /**
   * Update an AgreementPartyApplic - AgreementPartyApplic
   *
   * Requires agreementId, agreementItemSeqId, partyId
   * Returns 
   */
  Future<OfResult> updateAgreementPartyApplic(AgreementPartyApplic ent, ) =>
      client.invoke('updateAgreementPartyApplic', ent, {  });

  /**
   * Update an AgreementProductAppl - AgreementProductAppl
   *
   * Requires agreementId, agreementItemSeqId, productId
   * Returns 
   */
  Future<OfResult> updateAgreementProductAppl(AgreementProductAppl ent, ) =>
      client.invoke('updateAgreementProductAppl', ent, {  });

  /**
   * Update an AgreementPromoAppl - AgreementPromoAppl
   *
   * Requires agreementId, agreementItemSeqId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> updateAgreementPromoAppl(AgreementPromoAppl ent, ) =>
      client.invoke('updateAgreementPromoAppl', ent, {  });

  /**
   * Update an Agreement Role - AgreementRole
   *
   * Requires agreementId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> updateAgreementRole(AgreementRole ent, ) =>
      client.invoke('updateAgreementRole', ent, {  });

  /**
   * Update an AgreementTerm - AgreementTerm
   *
   * Requires agreementTermId
   * Returns 
   */
  Future<OfResult> updateAgreementTerm(AgreementTerm ent, ) =>
      client.invoke('updateAgreementTerm', ent, {  });

  /**
   * Update a AgreementType record - AgreementType
   *
   * Requires agreementTypeId
   * Returns 
   */
  Future<OfResult> updateAgreementType(AgreementType ent, ) =>
      client.invoke('updateAgreementType', ent, {  });

  /**
   * Update an AgreementTypeAttr - AgreementTypeAttr
   *
   * Requires agreementTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateAgreementTypeAttr(AgreementTypeAttr ent, ) =>
      client.invoke('updateAgreementTypeAttr', ent, {  });

}