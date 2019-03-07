import 'package:sagas_meta/src/models_t/gen_models.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonService{
  final SrvClient client;
  CommonService(this.client);

  /// Test service -
  /// Requires
  /// Returns resp[String]
  Future<OfResult> testScv({double defaultValue, String message}) =>
      client.invoke('testScv', null, { 'defaultValue': defaultValue, 'message': message });

  /// Create a Person - Person
  /// Requires
  /// Returns partyId[String]
  Future<OfResult> createPerson(Person ent, {String preferredCurrencyUomId, String description, String externalId, String statusId}) =>
      client.invoke('createPerson', ent, { 'preferredCurrencyUomId': preferredCurrencyUomId, 'description': description, 'externalId': externalId, 'statusId': statusId });

  /// Create a new product variant -
  /// Requires productId, productFeatureIds, productVariantId
  /// Returns productVariantId[String]
  Future<OfResult> quickAddVariant({@required String productId, @required String productFeatureIds, @required String productVariantId, int sequenceNum}) =>
      client.invoke('quickAddVariant', null, { 'productId': productId, 'productFeatureIds': productFeatureIds, 'productVariantId': productVariantId, 'sequenceNum': sequenceNum });

}