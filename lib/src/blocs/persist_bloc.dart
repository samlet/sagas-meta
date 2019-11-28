import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/common_exceptions.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';
import 'package:sagas_meta/src/meta/values.pb.dart';

// ------------- states
abstract class PersistState extends Equatable {
  PersistState([List props = const []]) : super(props);
}

class PersistEmpty extends PersistState {}

class PersistLoading extends PersistState {}

class PersistLoaded<T extends EntityBase> extends PersistState {
  final T data;

  PersistLoaded({@required this.data})
      : assert(data != null),
        super([data]);
}

class PersistError extends PersistState {}

// ---------- events

abstract class PersistEvent extends Equatable {
  PersistEvent([List props = const []]) : super(props);
}

class FetchPersist extends PersistEvent {
  final Map<String, dynamic> ids;

  FetchPersist({@required this.ids})
      : assert(ids != null),
        super([ids]);
}

class RefreshPersist extends PersistEvent {
  final Map<String,dynamic> ids;

  RefreshPersist({@required this.ids})
      : assert(ids != null),
        super([ids]);
}

class ModifyPersist extends PersistEvent {
  final Map<String, dynamic> vars;

  ModifyPersist({@required this.vars})
      : assert(vars != null),
        super([vars]);
}

class SubmitPersist extends PersistEvent {
  // only has ids, because the latest entity values is hold in PersistLoaded.data
  final Map<String,dynamic> ids;

  SubmitPersist({@required this.ids})
      : assert(ids != null),
        super([ids]);
}

// ---------- bloc
typedef MI ItemModifier<MI>(dynamic val);
typedef ME ItemExtractor<ME>(dynamic val);

class PersistBloc<T extends EntityBase> extends Bloc<PersistEvent, PersistState> {
  final PersistRepository repository;
  ItemModifier<T> modifier;
  ItemExtractor<T> extractor;

  PersistBloc({@required this.repository,
    @required ItemModifier<T> this.modifier,
    @required ItemExtractor<T> this.extractor
  })
      : assert(repository != null);

  @override
  PersistState get initialState => PersistEmpty();

  @override
  Stream<PersistState> mapEventToState(
      PersistEvent event,
      ) async* {

    if (event is FetchPersist) {
      yield PersistLoading();
      try {
        var schedule = await repository.get(event.ids);
        yield PersistLoaded<T>(data: extractor(schedule));
      } catch (e, s) {
        print('Exception details:\n $e');
        print('Stack trace:\n $s');

        yield PersistError();
      }
    }

    if (event is RefreshPersist) {
      /*
      try {
        final Persist schedule = await scheduleRepository.getPersist(event.city);
        yield PersistLoaded(schedule: schedule);
      } catch (_) {
        yield currentState;
      }
      */
      try {
        yield PersistLoading();
        var schedule = await repository.get(event.ids);
        // schedule.activity=event.id;
        yield PersistLoaded(data: extractor(schedule));
      } catch (e, s) {
        print('Exception details:\n $e');
        print('Stack trace:\n $s');

        yield currentState;
      }
    }

    if (event is ModifyPersist){
      if(currentState is PersistLoaded) {
        // yield PersistLoading();
        T schedule = (currentState as PersistLoaded).data;
        // create a new schedule object with original values and new values
        final props=schedule.asMap();
        props.addAll(event.vars);
        // yield PersistLoaded<T>(data: schedule.overridesPersist(props));
        yield PersistLoaded<T>(data: modifier(props));
      }else{
        yield currentState;
      }
    }

    if (event is SubmitPersist){
      if(currentState is PersistLoaded) {
        try {
          // yield PersistLoading();
          T schedule = (currentState as PersistLoaded).data;
          // create a new schedule object with original values and new values
          final props = schedule.asMap();
          print(".. will store ${props}");
          await repository.store(props);
          var data = await repository.get(event.ids);
          print(".. regain ${data}");
          yield PersistLoaded<T>(data: extractor(data));
        }catch (e, s) {
          print('Exception details:\n $e');
          print('Stack trace:\n $s');

          yield PersistError();
        }
      }else{
        yield currentState;
      }
    }
  }
}

// -------------- repository
// global broker-client
final BrokerClient brokerClient=new BrokerClient('blue_queue');

class PersistRepository{
  // final PersistApiClient PersistApiClient;
  final String entityName;

  PersistRepository(this.entityName);

  Future<dynamic> get(Map<String,dynamic> ids) async {
    // final int locationId = await PersistApiClient.getLocationId(city);
    // return await PersistApiClient.fetchPersist(locationId);
    // var value=ProductType(productTypeId:"Test_type_114");
    TaStringEntries entry=TaStringEntries.create()
      ..entityName=this.entityName;
    entry.values.addAll(ids.map((k,v) =>
        MapEntry<String,String>(k, v.toString())));

    BlueMessage msg=BlueMessage.create()
      ..actorPath='akka://default/user/logins/system/persister'
      ..type='get'
      ..body=entry.writeToBuffer();

    var result=await brokerClient.invoke(msg.writeToBuffer());
    var resp=MetaPayload.fromBuffer(result);
    print(resp.type);
    if(resp.type==MetaPayloadType.ACTION_RESULT) {
      // var form = MetaForm.fromBuffer(resp.body);
      // print(form);
      print('ok.');
      var val=TaJsonEntity.fromBuffer(resp.body);
      print(val);
      // return val;
      return json.decode(val.json);
    }else{
      print('err.');
      var err=ErrorInfo.fromBuffer(resp.body);
      print(err);
      throw new RetrieveError(err);
    }
  }

  Future<TaFieldValue> store(Map<String,dynamic> values) async{
    // var value=ProductType(productTypeId:"Test_type_114");
    TaJsonEntities entities=TaJsonEntities.create();
    entities.entities.add(TaJsonEntity.create()
      ..entityName=this.entityName
      ..json=json.encode(values)
    );

    BlueMessage msg=BlueMessage.create()
      ..actorPath='akka://default/user/logins/system/persister'
      ..type='storeJson'
      ..body=entities.writeToBuffer();

    var result=await brokerClient.invoke(msg.writeToBuffer());
    var resp=MetaPayload.fromBuffer(result);
    print(resp.type);
    if(resp.type==MetaPayloadType.ACTION_RESULT) {
      print('ok.');
      var val=TaFieldValue.fromBuffer(resp.body);
      print(val);
      return val;
    }else{
      print('err...');
      var err=ErrorInfo.fromBuffer(resp.body);
      print(err);
      throw new SubmitError(err);
    }
  }
}

