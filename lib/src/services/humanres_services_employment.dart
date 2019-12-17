import 'package:sagas_meta/src/models/humanres_employment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class HumanresServicesEmployment{
  final SrvClient client;
  HumanresServicesEmployment(this.client);

  /**
   * Create a BenefitType record - BenefitType
   *
   * Requires 
   * Returns benefitTypeId[String]
   */
  Future<OfResult> createBenefitType(BenefitType ent, ) =>
      client.invoke('createBenefitType', ent, {  });

  /**
   * Create a EmploymentAppSourceType record - EmploymentAppSourceType
   *
   * Requires 
   * Returns employmentAppSourceTypeId[String]
   */
  Future<OfResult> createEmploymentAppSourceType(EmploymentAppSourceType ent, ) =>
      client.invoke('createEmploymentAppSourceType', ent, {  });

  /**
   * Delete a BenefitType record - BenefitType
   *
   * Requires benefitTypeId
   * Returns 
   */
  Future<OfResult> deleteBenefitType(BenefitType ent, ) =>
      client.invoke('deleteBenefitType', ent, {  });

  /**
   * Delete a EmploymentAppSourceType record - EmploymentAppSourceType
   *
   * Requires employmentAppSourceTypeId
   * Returns 
   */
  Future<OfResult> deleteEmploymentAppSourceType(EmploymentAppSourceType ent, ) =>
      client.invoke('deleteEmploymentAppSourceType', ent, {  });

  /**
   * Update a BenefitType record - BenefitType
   *
   * Requires benefitTypeId
   * Returns 
   */
  Future<OfResult> updateBenefitType(BenefitType ent, ) =>
      client.invoke('updateBenefitType', ent, {  });

  /**
   * Update a EmploymentAppSourceType record - EmploymentAppSourceType
   *
   * Requires employmentAppSourceTypeId
   * Returns 
   */
  Future<OfResult> updateEmploymentAppSourceType(EmploymentAppSourceType ent, ) =>
      client.invoke('updateEmploymentAppSourceType', ent, {  });

}