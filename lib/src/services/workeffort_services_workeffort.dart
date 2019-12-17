import 'package:sagas_meta/src/models/workeffort_workeffort.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class WorkeffortServicesWorkeffort{
  final SrvClient client;
  WorkeffortServicesWorkeffort(this.client);

  /**
   * Create ApplicationSandbox record - ApplicationSandbox
   *
   * Requires 
   * Returns applicationId[String]
   */
  Future<OfResult> createApplicationSandbox(ApplicationSandbox ent, ) =>
      client.invoke('createApplicationSandbox', ent, {  });

  /**
   * Create a Deliverable record - Deliverable
   *
   * Requires 
   * Returns deliverableId[String]
   */
  Future<OfResult> createDeliverable(Deliverable ent, ) =>
      client.invoke('createDeliverable', ent, {  });

  /**
   * Create a Deliverable Type record - DeliverableType
   *
   * Requires 
   * Returns deliverableTypeId[String]
   */
  Future<OfResult> createDeliverableType(DeliverableType ent, ) =>
      client.invoke('createDeliverableType', ent, {  });

  /**
   * Create a WorkEffortAssocAttribute record - WorkEffortAssocAttribute
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> createWorkEffortAssocAttribute(WorkEffortAssocAttribute ent, ) =>
      client.invoke('createWorkEffortAssocAttribute', ent, {  });

  /**
   * Create a WorkEffortAssocType record - WorkEffortAssocType
   *
   * Requires 
   * Returns workEffortAssocTypeId[String]
   */
  Future<OfResult> createWorkEffortAssocType(WorkEffortAssocType ent, ) =>
      client.invoke('createWorkEffortAssocType', ent, {  });

  /**
   * Create a WorkEffortAssocTypeAttr record - WorkEffortAssocTypeAttr
   *
   * Requires workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> createWorkEffortAssocTypeAttr(WorkEffortAssocTypeAttr ent, ) =>
      client.invoke('createWorkEffortAssocTypeAttr', ent, {  });

  /**
   * Create a WorkEffortBilling record - WorkEffortBilling
   *
   * Requires workEffortId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> createWorkEffortBilling(WorkEffortBilling ent, ) =>
      client.invoke('createWorkEffortBilling', ent, {  });

  /**
   * Create a WorkEffortContentType record - WorkEffortContentType
   *
   * Requires 
   * Returns workEffortContentTypeId[String]
   */
  Future<OfResult> createWorkEffortContentType(WorkEffortContentType ent, ) =>
      client.invoke('createWorkEffortContentType', ent, {  });

  /**
   * Create a WorkEffortGoodStandardType record - WorkEffortGoodStandardType
   *
   * Requires 
   * Returns workEffortGoodStdTypeId[String]
   */
  Future<OfResult> createWorkEffortGoodStandardType(WorkEffortGoodStandardType ent, ) =>
      client.invoke('createWorkEffortGoodStandardType', ent, {  });

  /**
   * Create a WorkEffortPurposeType record - WorkEffortPurposeType
   *
   * Requires 
   * Returns workEffortPurposeTypeId[String]
   */
  Future<OfResult> createWorkEffortPurposeType(WorkEffortPurposeType ent, ) =>
      client.invoke('createWorkEffortPurposeType', ent, {  });

  /**
   * Create a WorkEffortType record - WorkEffortType
   *
   * Requires 
   * Returns workEffortTypeId[String]
   */
  Future<OfResult> createWorkEffortType(WorkEffortType ent, ) =>
      client.invoke('createWorkEffortType', ent, {  });

  /**
   * Create a WorkEffortTypeAttr record - WorkEffortTypeAttr
   *
   * Requires workEffortTypeId, attrName
   * Returns 
   */
  Future<OfResult> createWorkEffortTypeAttr(WorkEffortTypeAttr ent, ) =>
      client.invoke('createWorkEffortTypeAttr', ent, {  });

  /**
   * Delete ApplicationSandbox record - ApplicationSandbox
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> deleteApplicationSandbox(ApplicationSandbox ent, ) =>
      client.invoke('deleteApplicationSandbox', ent, {  });

  /**
   * Delete a Deliverable record - Deliverable
   *
   * Requires deliverableId
   * Returns 
   */
  Future<OfResult> deleteDeliverable(Deliverable ent, ) =>
      client.invoke('deleteDeliverable', ent, {  });

  /**
   * Delete a Deliverable Type record - DeliverableType
   *
   * Requires deliverableTypeId
   * Returns 
   */
  Future<OfResult> deleteDeliverableType(DeliverableType ent, ) =>
      client.invoke('deleteDeliverableType', ent, {  });

  /**
   * Delete a WorkEffortAssocAttribute record - WorkEffortAssocAttribute
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteWorkEffortAssocAttribute(WorkEffortAssocAttribute ent, ) =>
      client.invoke('deleteWorkEffortAssocAttribute', ent, {  });

  /**
   * Delete a WorkEffortAssocType record - WorkEffortAssocType
   *
   * Requires workEffortAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortAssocType(WorkEffortAssocType ent, ) =>
      client.invoke('deleteWorkEffortAssocType', ent, {  });

  /**
   * Delete a WorkEffortAssocTypeAttr record - WorkEffortAssocTypeAttr
   *
   * Requires workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteWorkEffortAssocTypeAttr(WorkEffortAssocTypeAttr ent, ) =>
      client.invoke('deleteWorkEffortAssocTypeAttr', ent, {  });

  /**
   * Delete a WorkEffortBilling record - WorkEffortBilling
   *
   * Requires workEffortId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortBilling(WorkEffortBilling ent, ) =>
      client.invoke('deleteWorkEffortBilling', ent, {  });

  /**
   * Delete a WorkEffortContentType record - WorkEffortContentType
   *
   * Requires workEffortContentTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortContentType(WorkEffortContentType ent, ) =>
      client.invoke('deleteWorkEffortContentType', ent, {  });

  /**
   * Delete a WorkEffortGoodStandardType record - WorkEffortGoodStandardType
   *
   * Requires workEffortGoodStdTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortGoodStandardType(WorkEffortGoodStandardType ent, ) =>
      client.invoke('deleteWorkEffortGoodStandardType', ent, {  });

  /**
   * Delete a WorkEffortPurposeType record - WorkEffortPurposeType
   *
   * Requires workEffortPurposeTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortPurposeType(WorkEffortPurposeType ent, ) =>
      client.invoke('deleteWorkEffortPurposeType', ent, {  });

  /**
   * Delete a WorkEffortType record - WorkEffortType
   *
   * Requires workEffortTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortType(WorkEffortType ent, ) =>
      client.invoke('deleteWorkEffortType', ent, {  });

  /**
   * Delete a WorkEffortTypeAttr record - WorkEffortTypeAttr
   *
   * Requires workEffortTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteWorkEffortTypeAttr(WorkEffortTypeAttr ent, ) =>
      client.invoke('deleteWorkEffortTypeAttr', ent, {  });

  /**
   * Update ApplicationSandbox record - ApplicationSandbox
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> updateApplicationSandbox(ApplicationSandbox ent, ) =>
      client.invoke('updateApplicationSandbox', ent, {  });

  /**
   * Update a Deliverable record - Deliverable
   *
   * Requires deliverableId
   * Returns 
   */
  Future<OfResult> updateDeliverable(Deliverable ent, ) =>
      client.invoke('updateDeliverable', ent, {  });

  /**
   * Update a Deliverable Type record - DeliverableType
   *
   * Requires deliverableTypeId
   * Returns 
   */
  Future<OfResult> updateDeliverableType(DeliverableType ent, ) =>
      client.invoke('updateDeliverableType', ent, {  });

  /**
   * Update a WorkEffortAssocAttribute record - WorkEffortAssocAttribute
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateWorkEffortAssocAttribute(WorkEffortAssocAttribute ent, ) =>
      client.invoke('updateWorkEffortAssocAttribute', ent, {  });

  /**
   * Update a WorkEffortAssocType record - WorkEffortAssocType
   *
   * Requires workEffortAssocTypeId
   * Returns 
   */
  Future<OfResult> updateWorkEffortAssocType(WorkEffortAssocType ent, ) =>
      client.invoke('updateWorkEffortAssocType', ent, {  });

  /**
   * Update a WorkEffortAssocTypeAttr record - WorkEffortAssocTypeAttr
   *
   * Requires workEffortAssocTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateWorkEffortAssocTypeAttr(WorkEffortAssocTypeAttr ent, ) =>
      client.invoke('updateWorkEffortAssocTypeAttr', ent, {  });

  /**
   * Update a WorkEffortBilling record - WorkEffortBilling
   *
   * Requires workEffortId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> updateWorkEffortBilling(WorkEffortBilling ent, ) =>
      client.invoke('updateWorkEffortBilling', ent, {  });

  /**
   * Update a WorkEffortContentType record - WorkEffortContentType
   *
   * Requires workEffortContentTypeId
   * Returns 
   */
  Future<OfResult> updateWorkEffortContentType(WorkEffortContentType ent, ) =>
      client.invoke('updateWorkEffortContentType', ent, {  });

  /**
   * Update a WorkEffortGoodStandardType record - WorkEffortGoodStandardType
   *
   * Requires workEffortGoodStdTypeId
   * Returns 
   */
  Future<OfResult> updateWorkEffortGoodStandardType(WorkEffortGoodStandardType ent, ) =>
      client.invoke('updateWorkEffortGoodStandardType', ent, {  });

  /**
   * Update a WorkEffortPurposeType record - WorkEffortPurposeType
   *
   * Requires workEffortPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateWorkEffortPurposeType(WorkEffortPurposeType ent, ) =>
      client.invoke('updateWorkEffortPurposeType', ent, {  });

  /**
   * Update a WorkEffortType record - WorkEffortType
   *
   * Requires workEffortTypeId
   * Returns 
   */
  Future<OfResult> updateWorkEffortType(WorkEffortType ent, ) =>
      client.invoke('updateWorkEffortType', ent, {  });

  /**
   * Update a WorkEffortTypeAttr record - WorkEffortTypeAttr
   *
   * Requires workEffortTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateWorkEffortTypeAttr(WorkEffortTypeAttr ent, ) =>
      client.invoke('updateWorkEffortTypeAttr', ent, {  });

}