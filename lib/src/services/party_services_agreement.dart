import 'package:sagas_meta/src/models/party_agreement.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServicesAgreement{
  final SrvClient client;
  PartyServicesAgreement(this.client);

  /**
   * Create Addendum Record - Addendum
   *
   * Requires 
   * Returns addendumId[String]
   */
  Future<OfResult> createAddendum(Addendum ent, ) =>
      client.invoke('createAddendum', ent, {  });

  /**
   * Create AgreementContentType Record - AgreementContentType
   *
   * Requires 
   * Returns agreementContentTypeId[String]
   */
  Future<OfResult> createAgreementContentType(AgreementContentType ent, ) =>
      client.invoke('createAgreementContentType', ent, {  });

  /**
   * Create a AgreementItemType record - AgreementItemType
   *
   * Requires 
   * Returns agreementItemTypeId[String]
   */
  Future<OfResult> createAgreementItemType(AgreementItemType ent, ) =>
      client.invoke('createAgreementItemType', ent, {  });

  /**
   *  - AgreementTermAttribute
   *
   * Requires agreementTermId, attrName
   * Returns agreementTermId[String], attrName[String]
   */
  Future<OfResult> createAgreementTermAttribute(AgreementTermAttribute ent, ) =>
      client.invoke('createAgreementTermAttribute', ent, {  });

  /**
   * Create TermType record - TermType
   *
   * Requires 
   * Returns termTypeId[String]
   */
  Future<OfResult> createTermType(TermType ent, ) =>
      client.invoke('createTermType', ent, {  });

  /**
   * Create TermTypeAttr record - TermTypeAttr
   *
   * Requires termTypeId, attrName
   * Returns 
   */
  Future<OfResult> createTermTypeAttr(TermTypeAttr ent, ) =>
      client.invoke('createTermTypeAttr', ent, {  });

  /**
   * Delete Addendum record - Addendum
   *
   * Requires addendumId
   * Returns 
   */
  Future<OfResult> deleteAddendum(Addendum ent, ) =>
      client.invoke('deleteAddendum', ent, {  });

  /**
   * Delete AgreementContentType record - AgreementContentType
   *
   * Requires agreementContentTypeId
   * Returns 
   */
  Future<OfResult> deleteAgreementContentType(AgreementContentType ent, ) =>
      client.invoke('deleteAgreementContentType', ent, {  });

  /**
   * Delete an AgreementItemType record - AgreementItemType
   *
   * Requires agreementItemTypeId
   * Returns 
   */
  Future<OfResult> deleteAgreementItemType(AgreementItemType ent, ) =>
      client.invoke('deleteAgreementItemType', ent, {  });

  /**
   *  - AgreementTermAttribute
   *
   * Requires agreementTermId, attrName
   * Returns 
   */
  Future<OfResult> deleteAgreementTermAttribute(AgreementTermAttribute ent, ) =>
      client.invoke('deleteAgreementTermAttribute', ent, {  });

  /**
   * Delete TermType record - TermType
   *
   * Requires termTypeId
   * Returns 
   */
  Future<OfResult> deleteTermType(TermType ent, ) =>
      client.invoke('deleteTermType', ent, {  });

  /**
   * Delete TermTypeAttr record - TermTypeAttr
   *
   * Requires termTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteTermTypeAttr(TermTypeAttr ent, ) =>
      client.invoke('deleteTermTypeAttr', ent, {  });

  /**
   * Update Addendum Record - Addendum
   *
   * Requires addendumId
   * Returns 
   */
  Future<OfResult> updateAddendum(Addendum ent, ) =>
      client.invoke('updateAddendum', ent, {  });

  /**
   * Update AgreementContentType Record - AgreementContentType
   *
   * Requires agreementContentTypeId
   * Returns 
   */
  Future<OfResult> updateAgreementContentType(AgreementContentType ent, ) =>
      client.invoke('updateAgreementContentType', ent, {  });

  /**
   * Update a AgreementItemType record - AgreementItemType
   *
   * Requires agreementItemTypeId
   * Returns 
   */
  Future<OfResult> updateAgreementItemType(AgreementItemType ent, ) =>
      client.invoke('updateAgreementItemType', ent, {  });

  /**
   *  - AgreementTermAttribute
   *
   * Requires agreementTermId, attrName
   * Returns 
   */
  Future<OfResult> updateAgreementTermAttribute(AgreementTermAttribute ent, ) =>
      client.invoke('updateAgreementTermAttribute', ent, {  });

  /**
   * Update TermType record - TermType
   *
   * Requires termTypeId
   * Returns 
   */
  Future<OfResult> updateTermType(TermType ent, ) =>
      client.invoke('updateTermType', ent, {  });

  /**
   * Update TermTypeAttr record - TermTypeAttr
   *
   * Requires termTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateTermTypeAttr(TermTypeAttr ent, ) =>
      client.invoke('updateTermTypeAttr', ent, {  });

}