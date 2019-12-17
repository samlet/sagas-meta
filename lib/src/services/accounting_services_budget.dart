import 'package:sagas_meta/src/models/accounting_budget.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesBudget{
  final SrvClient client;
  AccountingServicesBudget(this.client);

  /**
   * Create a Budget - Budget
   *
   * Requires 
   * Returns budgetId[String]
   */
  Future<OfResult> createBudget(Budget ent, ) =>
      client.invoke('createBudget', ent, {  });

  /**
   * Create a new BudgetAttribute record - BudgetAttribute
   *
   * Requires budgetId, attrName
   * Returns 
   */
  Future<OfResult> createBudgetAttribute(BudgetAttribute ent, ) =>
      client.invoke('createBudgetAttribute', ent, {  });

  /**
   * Create a Budget Item - BudgetItem
   *
   * Requires budgetId
   * Returns budgetItemSeqId[String]
   */
  Future<OfResult> createBudgetItem(BudgetItem ent, ) =>
      client.invoke('createBudgetItem', ent, {  });

  /**
   * Create a new Budget Item Attribute Record - BudgetItemAttribute
   *
   * Requires budgetId, budgetItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createBudgetItemAttribute(BudgetItemAttribute ent, ) =>
      client.invoke('createBudgetItemAttribute', ent, {  });

  /**
   * Create a new Budget Item Type Record - BudgetItemType
   *
   * Requires 
   * Returns budgetItemTypeId[String]
   */
  Future<OfResult> createBudgetItemType(BudgetItemType ent, ) =>
      client.invoke('createBudgetItemType', ent, {  });

  /**
   * Create a new Budget Item Type Attr Record - BudgetItemTypeAttr
   *
   * Requires budgetItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> createBudgetItemTypeAttr(BudgetItemTypeAttr ent, ) =>
      client.invoke('createBudgetItemTypeAttr', ent, {  });

  /**
   * Create a new Budget Review Record - BudgetReview
   *
   * Requires budgetId, partyId, budgetReviewResultTypeId
   * Returns budgetReviewId[String], budgetReviewId[String]
   */
  Future<OfResult> createBudgetReview(BudgetReview ent, ) =>
      client.invoke('createBudgetReview', ent, {  });

  /**
   * Create a new Budget Review Result Type Record - BudgetReviewResultType
   *
   * Requires 
   * Returns budgetReviewResultTypeId[String]
   */
  Future<OfResult> createBudgetReviewResultType(BudgetReviewResultType ent, ) =>
      client.invoke('createBudgetReviewResultType', ent, {  });

  /**
   * Create a new Budget Revision Record - BudgetRevision
   *
   * Requires budgetId, revisionSeqId
   * Returns 
   */
  Future<OfResult> createBudgetRevision(BudgetRevision ent, ) =>
      client.invoke('createBudgetRevision', ent, {  });

  /**
   * Create a BudgetRevisionImpact - BudgetRevisionImpact
   *
   * Requires budgetId, budgetItemSeqId, revisionSeqId
   * Returns 
   */
  Future<OfResult> createBudgetRevisionImpact(BudgetRevisionImpact ent, ) =>
      client.invoke('createBudgetRevisionImpact', ent, {  });

  /**
   * Create a new Budget Role Record - BudgetRole
   *
   * Requires budgetId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createBudgetRole(BudgetRole ent, ) =>
      client.invoke('createBudgetRole', ent, {  });

  /**
   * Create a Budget Scenario Record - BudgetScenario
   *
   * Requires 
   * Returns budgetScenarioId[String]
   */
  Future<OfResult> createBudgetScenario(BudgetScenario ent, ) =>
      client.invoke('createBudgetScenario', ent, {  });

  /**
   * Create a Budget Scenario Application Record - BudgetScenarioApplication
   *
   * Requires budgetScenarioApplicId, budgetScenarioId
   * Returns 
   */
  Future<OfResult> createBudgetScenarioApplication(BudgetScenarioApplication ent, ) =>
      client.invoke('createBudgetScenarioApplication', ent, {  });

  /**
   * Create a new Budget Scenario Rule Record - BudgetScenarioRule
   *
   * Requires budgetScenarioId, budgetItemTypeId
   * Returns 
   */
  Future<OfResult> createBudgetScenarioRule(BudgetScenarioRule ent, ) =>
      client.invoke('createBudgetScenarioRule', ent, {  });

  /**
   * Create Budget Status Record - BudgetStatus
   *
   * Requires budgetId, statusId
   * Returns 
   */
  Future<OfResult> createBudgetStatus(BudgetStatus ent, ) =>
      client.invoke('createBudgetStatus', ent, {  });

  /**
   * Create a Budget Type Record - BudgetType
   *
   * Requires 
   * Returns budgetTypeId[String]
   */
  Future<OfResult> createBudgetType(BudgetType ent, ) =>
      client.invoke('createBudgetType', ent, {  });

  /**
   * Create a Budget Type Attr Record - BudgetTypeAttr
   *
   * Requires budgetTypeId, attrName
   * Returns 
   */
  Future<OfResult> createBudgetTypeAttr(BudgetTypeAttr ent, ) =>
      client.invoke('createBudgetTypeAttr', ent, {  });

  /**
   * Delete an existing Budget Item Attribute Record - BudgetItemAttribute
   *
   * Requires budgetId, budgetItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteBudgetItemAttribute(BudgetItemAttribute ent, ) =>
      client.invoke('deleteBudgetItemAttribute', ent, {  });

  /**
   * Delete an existing Budget Item Type Attr Record - BudgetItemTypeAttr
   *
   * Requires budgetItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteBudgetItemTypeAttr(BudgetItemTypeAttr ent, ) =>
      client.invoke('deleteBudgetItemTypeAttr', ent, {  });

  /**
   * Delete an existing Budget Review Result Type Record - BudgetReviewResultType
   *
   * Requires budgetReviewResultTypeId
   * Returns 
   */
  Future<OfResult> deleteBudgetReviewResultType(BudgetReviewResultType ent, ) =>
      client.invoke('deleteBudgetReviewResultType', ent, {  });

  /**
   * Delete an existing Budget Revision Record. BudgetRevision entity contains historical data, hence this service ideally will not +	 be used. - BudgetRevision
   *
   * Requires budgetId, revisionSeqId
   * Returns 
   */
  Future<OfResult> deleteBudgetRevision(BudgetRevision ent, ) =>
      client.invoke('deleteBudgetRevision', ent, {  });

  /**
   * Delete a Budget Scenario Record - BudgetScenario
   *
   * Requires budgetScenarioId
   * Returns 
   */
  Future<OfResult> deleteBudgetScenario(BudgetScenario ent, ) =>
      client.invoke('deleteBudgetScenario', ent, {  });

  /**
   * Delete a Budget Scenario Application Record - BudgetScenarioApplication
   *
   * Requires budgetScenarioApplicId, budgetScenarioId
   * Returns 
   */
  Future<OfResult> deleteBudgetScenarioApplication(BudgetScenarioApplication ent, ) =>
      client.invoke('deleteBudgetScenarioApplication', ent, {  });

  /**
   * Delete an existing Budget Scenario Rule Record - BudgetScenarioRule
   *
   * Requires budgetScenarioId, budgetItemTypeId
   * Returns 
   */
  Future<OfResult> deleteBudgetScenarioRule(BudgetScenarioRule ent, ) =>
      client.invoke('deleteBudgetScenarioRule', ent, {  });

  /**
   * Delete a Budget Type Record - BudgetType
   *
   * Requires budgetTypeId
   * Returns 
   */
  Future<OfResult> deleteBudgetType(BudgetType ent, ) =>
      client.invoke('deleteBudgetType', ent, {  });

  /**
   * Delete a Budget Type Attr Record - BudgetTypeAttr
   *
   * Requires budgetTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteBudgetTypeAttr(BudgetTypeAttr ent, ) =>
      client.invoke('deleteBudgetTypeAttr', ent, {  });

  /**
   * Delete a BudgetAttribute record - BudgetAttribute
   *
   * Requires budgetId, attrName
   * Returns 
   */
  Future<OfResult> removeBudgetAttribute(BudgetAttribute ent, ) =>
      client.invoke('removeBudgetAttribute', ent, {  });

  /**
   * Remove an existing Budget Item Record - BudgetItem
   *
   * Requires budgetId, budgetItemSeqId
   * Returns 
   */
  Future<OfResult> removeBudgetItem(BudgetItem ent, ) =>
      client.invoke('removeBudgetItem', ent, {  });

  /**
   * Remove an existing Budget Item Type Record - BudgetItemType
   *
   * Requires budgetItemTypeId
   * Returns 
   */
  Future<OfResult> removeBudgetItemType(BudgetItemType ent, ) =>
      client.invoke('removeBudgetItemType', ent, {  });

  /**
   * Remove an existing Budget Review Record - BudgetReview
   *
   * Requires budgetId, budgetReviewId, partyId, budgetReviewResultTypeId
   * Returns 
   */
  Future<OfResult> removeBudgetReview(BudgetReview ent, ) =>
      client.invoke('removeBudgetReview', ent, {  });

  /**
   * Remove a BudgetRevisionImpact - BudgetRevisionImpact
   *
   * Requires budgetId, budgetItemSeqId, revisionSeqId
   * Returns 
   */
  Future<OfResult> removeBudgetRevisionImpact(BudgetRevisionImpact ent, ) =>
      client.invoke('removeBudgetRevisionImpact', ent, {  });

  /**
   * Remove an existing Budget Role Record - BudgetRole
   *
   * Requires budgetId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeBudgetRole(BudgetRole ent, ) =>
      client.invoke('removeBudgetRole', ent, {  });

  /**
   * Update a Budget - Budget
   *
   * Requires budgetId
   * Returns 
   */
  Future<OfResult> updateBudget(Budget ent, ) =>
      client.invoke('updateBudget', ent, {  });

  /**
   * Update a BudgetAttribute record - BudgetAttribute
   *
   * Requires budgetId, attrName
   * Returns 
   */
  Future<OfResult> updateBudgetAttribute(BudgetAttribute ent, ) =>
      client.invoke('updateBudgetAttribute', ent, {  });

  /**
   * Update a Budget Item - BudgetItem
   *
   * Requires budgetId, budgetItemSeqId
   * Returns 
   */
  Future<OfResult> updateBudgetItem(BudgetItem ent, ) =>
      client.invoke('updateBudgetItem', ent, {  });

  /**
   * Update a Budget Item Attribute Record - BudgetItemAttribute
   *
   * Requires budgetId, budgetItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateBudgetItemAttribute(BudgetItemAttribute ent, ) =>
      client.invoke('updateBudgetItemAttribute', ent, {  });

  /**
   * Update a Budget Item Type Record - BudgetItemType
   *
   * Requires budgetItemTypeId
   * Returns 
   */
  Future<OfResult> updateBudgetItemType(BudgetItemType ent, ) =>
      client.invoke('updateBudgetItemType', ent, {  });

  /**
   * Update a Budget Item Type Attr Record - BudgetItemTypeAttr
   *
   * Requires budgetItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateBudgetItemTypeAttr(BudgetItemTypeAttr ent, ) =>
      client.invoke('updateBudgetItemTypeAttr', ent, {  });

  /**
   * Update a Budget Review Result Type Record - BudgetReviewResultType
   *
   * Requires budgetReviewResultTypeId
   * Returns 
   */
  Future<OfResult> updateBudgetReviewResultType(BudgetReviewResultType ent, ) =>
      client.invoke('updateBudgetReviewResultType', ent, {  });

  /**
   * Update a Budget Revision Record - BudgetRevision
   *
   * Requires budgetId, revisionSeqId
   * Returns 
   */
  Future<OfResult> updateBudgetRevision(BudgetRevision ent, ) =>
      client.invoke('updateBudgetRevision', ent, {  });

  /**
   * Update a BudgetRevisionImpact - BudgetRevisionImpact
   *
   * Requires budgetId, budgetItemSeqId, revisionSeqId
   * Returns 
   */
  Future<OfResult> updateBudgetRevisionImpact(BudgetRevisionImpact ent, ) =>
      client.invoke('updateBudgetRevisionImpact', ent, {  });

  /**
   * Update a Budget Scenario Record - BudgetScenario
   *
   * Requires budgetScenarioId
   * Returns 
   */
  Future<OfResult> updateBudgetScenario(BudgetScenario ent, ) =>
      client.invoke('updateBudgetScenario', ent, {  });

  /**
   * Update a Budget Scenario Application Record - BudgetScenarioApplication
   *
   * Requires budgetScenarioApplicId, budgetScenarioId
   * Returns 
   */
  Future<OfResult> updateBudgetScenarioApplication(BudgetScenarioApplication ent, ) =>
      client.invoke('updateBudgetScenarioApplication', ent, {  });

  /**
   * Update a Budget Scenario Rule - BudgetScenarioRule
   *
   * Requires budgetScenarioId, budgetItemTypeId
   * Returns 
   */
  Future<OfResult> updateBudgetScenarioRule(BudgetScenarioRule ent, ) =>
      client.invoke('updateBudgetScenarioRule', ent, {  });

  /**
   * Update a Budget - BudgetStatus
   *
   * Requires budgetId, statusId
   * Returns 
   */
  Future<OfResult> updateBudgetStatus(BudgetStatus ent, ) =>
      client.invoke('updateBudgetStatus', ent, {  });

  /**
   * Update a Budget Type Record - BudgetType
   *
   * Requires budgetTypeId
   * Returns 
   */
  Future<OfResult> updateBudgetType(BudgetType ent, ) =>
      client.invoke('updateBudgetType', ent, {  });

  /**
   * Update a Budget Type Attr Record - BudgetTypeAttr
   *
   * Requires budgetTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateBudgetTypeAttr(BudgetTypeAttr ent, ) =>
      client.invoke('updateBudgetTypeAttr', ent, {  });

}