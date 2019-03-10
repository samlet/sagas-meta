import 'package:bloc/bloc.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/common_states.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';
import 'package:sagas_meta/src/common_events.dart';

import 'package:sagas_meta/src/models_t/gen_models.dart';

class CommonSrvBloc extends Bloc<ServiceEvent, ServiceState> {
  final SrvClient client;
  CommonSrvBloc({@required this.client});

  @override
  ServiceState get initialState => ServiceLoading();
  @override
  Stream<ServiceState> mapEventToState(
      ServiceState currentState,
      ServiceEvent event,
      ) async* {
    if (event is TestScvEv) {
      yield* _mapTestScvEvToState(currentState, event);
    } else if (event is CreatePersonEv) {
      // ...
    }
  }

  Stream<ServiceState> _mapTestScvEvToState(currentState, ev) async* {
    try {
      final result = await testScv(ev);
      yield ServiceLoaded(result);
    } catch (_) {
      yield ServiceNotLoaded();
    }
  }

  /**
   * Test service -
   *
   * Requires
   * Returns resp[String]
   */
  Future<OfResult> testScv(TestScvEv ev) =>
      client.invoke('testScv', null, ev.asMap());

  /**
   * Create a Person - Person
   *
   * Requires
   * Returns partyId[String]
   */
  Future<OfResult> createPerson(CreatePersonEv ev) =>
      client.invoke('createPerson', ev.ent, ev.asMap());

  /**
   * Create a new product variant -
   *
   * Requires productId, productFeatureIds, productVariantId
   * Returns productVariantId[String]
   */
  Future<OfResult> quickAddVariant(QuickAddVariantEv ev) =>
      client.invoke('quickAddVariant', null, ev.asMap());

}

class TestScvEv extends ServiceEvent {
  double defaultValue; //
  String message; //

  TestScvEv({this.defaultValue, this.message})
      : super([defaultValue, message]);

  @override
  String toString() => 'TestScvEv { defaultValue: $defaultValue, message: $message }';

  @override
  Map<String, dynamic> asMap(){
    return {"defaultValue": defaultValue, "message": message};
  }
}

class CreatePersonEv extends ServiceEvent {
  String preferredCurrencyUomId; //
  String description; //
  String externalId; //
  String statusId; //
  Person ent;
  CreatePersonEv({this.preferredCurrencyUomId, this.description, this.externalId, this.statusId, this.ent})
      : super([preferredCurrencyUomId, description, externalId, statusId]);

  @override
  String toString() => 'CreatePersonEv { preferredCurrencyUomId: $preferredCurrencyUomId, description: $description, externalId: $externalId, statusId: $statusId, ent: $ent }';

  @override
  Map<String, dynamic> asMap(){
    return {"preferredCurrencyUomId": preferredCurrencyUomId, "description": description, "externalId": externalId, "statusId": statusId};
  }
}

class QuickAddVariantEv extends ServiceEvent {
  String productId; // @required
  String productFeatureIds; // @required
  String productVariantId; // @required
  int sequenceNum; //

  QuickAddVariantEv({this.productId, this.productFeatureIds, this.productVariantId, this.sequenceNum})
      : super([productId, productFeatureIds, productVariantId, sequenceNum]);

  @override
  String toString() => 'QuickAddVariantEv { productId: $productId, productFeatureIds: $productFeatureIds, productVariantId: $productVariantId, sequenceNum: $sequenceNum }';

  @override
  Map<String, dynamic> asMap(){
    return {"productId": productId, "productFeatureIds": productFeatureIds, "productVariantId": productVariantId, "sequenceNum": sequenceNum};
  }
}
