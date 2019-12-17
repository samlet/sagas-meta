import 'package:sagas_meta/src/models/humanres_ability.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class HumanresServicesAbility{
  final SrvClient client;
  HumanresServicesAbility(this.client);

  /**
   * Create a PerfRatingType record - PerfRatingType
   *
   * Requires 
   * Returns perfRatingTypeId[String]
   */
  Future<OfResult> createPerfRatingType(PerfRatingType ent, ) =>
      client.invoke('createPerfRatingType', ent, {  });

  /**
   * Create a PerfReviewItemType record - PerfReviewItemType
   *
   * Requires 
   * Returns perfReviewItemTypeId[String]
   */
  Future<OfResult> createPerfReviewItemType(PerfReviewItemType ent, ) =>
      client.invoke('createPerfReviewItemType', ent, {  });

  /**
   * Delete a PerfRatingType record - PerfRatingType
   *
   * Requires perfRatingTypeId
   * Returns 
   */
  Future<OfResult> deletePerfRatingType(PerfRatingType ent, ) =>
      client.invoke('deletePerfRatingType', ent, {  });

  /**
   * Delete a PerfReviewItemType record - PerfReviewItemType
   *
   * Requires perfReviewItemTypeId
   * Returns 
   */
  Future<OfResult> deletePerfReviewItemType(PerfReviewItemType ent, ) =>
      client.invoke('deletePerfReviewItemType', ent, {  });

  /**
   * Update a PerfRatingType record - PerfRatingType
   *
   * Requires perfRatingTypeId
   * Returns 
   */
  Future<OfResult> updatePerfRatingType(PerfRatingType ent, ) =>
      client.invoke('updatePerfRatingType', ent, {  });

  /**
   * Update a PerfReviewItemType record - PerfReviewItemType
   *
   * Requires perfReviewItemTypeId
   * Returns 
   */
  Future<OfResult> updatePerfReviewItemType(PerfReviewItemType ent, ) =>
      client.invoke('updatePerfReviewItemType', ent, {  });

}