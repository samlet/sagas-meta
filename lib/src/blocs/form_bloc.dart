import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:sagas_meta/sagas_meta.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/common_exceptions.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/forms.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';

// --- states
abstract class FormMetaState extends Equatable {
  FormMetaState([List props = const []]) : super(props);
}

class FormUninitialized extends FormMetaState {
  @override
  String toString() => 'FormUninitialized';
}

class FormInitialized extends FormMetaState {
  final MetaForm formMeta;
  final MetaSingleFormData formData;

  FormInitialized({this.formMeta, this.formData});

  FormInitialized copyWith({
    MetaForm formMeta,
    MetaSingleFormData formData,
  }) {
    return FormInitialized(
      formMeta: formMeta ?? this.formMeta,
      formData: formData ?? this.formData
    );
  }

  @override
  String toString() => 'FormInitialized { ${formMeta.name} }';
}

class FormLoading extends FormMetaState {
  @override
  String toString() => 'FormLoading';
}

class FormFailure extends FormMetaState {
  final String error;

  FormFailure({@required this.error}) : super([error]);

  @override
  String toString() => 'FormFailure { error: $error }';
}

// --- events
abstract class FormEvent extends Equatable {
  FormEvent([List props = const []]) : super(props);
}

class FormRetrieveEvent extends FormEvent {
  final String uri;
  final Map<String,dynamic> parameters;

  FormRetrieveEvent({
    @required this.uri,
    this.parameters,
  }) : super([uri, parameters]);

  @override
  String toString() =>
      'FormRetrieveEvent { uri: $uri }';
}

// --- bloc

class FormBloc extends Bloc<FormEvent, FormMetaState> {
  final FormRepository formRepository;

  FormBloc({
    @required this.formRepository
  })  : assert(formRepository != null);

  @override
  FormMetaState get initialState => FormUninitialized();

  @override
  Stream<FormMetaState> mapEventToState(
      FormEvent event,
      ) async* {
    if (event is FormRetrieveEvent) {
      yield FormLoading();

      try {
        final formMeta = await formRepository.retrieveMeta(event.uri);
        final formData= await formRepository.retrieveData(event.uri);
        // ........
        yield FormInitialized(formMeta: formMeta, formData: formData);
      } catch (error) {
        yield FormFailure(error: error.toString());
      }
    }
  }
}

class FormRepository{
  final BrokerClient brokerClient;
  // =new BrokerClient('blue_queue');
  FormRepository(this.brokerClient);

  // key is uri
  Map<String, MetaForm> formMetas={};
  Map<String, MetaSingleFormData> editors={};

  Future<MetaForm> retrieveMeta(String uri, {Map<String,dynamic> parameters}) async {
    if(formMetas.containsKey(uri)){
      return formMetas[uri];
    }

    var value=TaFieldValue()..stringVal=uri;
    BlueMessage msg=BlueMessage.create()
      ..actorPath='akka://default/user/logins/system/representer'
      ..type='meta'
      ..body=value.writeToBuffer();

    var result=await brokerClient.invoke(msg.writeToBuffer());
    var resp=MetaPayload.fromBuffer(result);
    print(resp.type);
    if(resp.type==MetaPayloadType.ACTION_RESULT) {
      // var form = MetaForm.fromBuffer(resp.body);
      // print(form);
      print('ok.');
      var val=MetaForm.fromBuffer(resp.body);
      this.formMetas[uri]=val;
      return val;
    }else{
      print('err.');
      var err=ErrorInfo.fromBuffer(resp.body);
      print(err);
      throw new RetrieveError(err);
    }
  }

  Future<MetaSingleFormData> retrieveData(String uri, {Map<String,dynamic> parameters}) async {
    if (editors.containsKey(uri)) {
      return editors[uri];
    }
    var value=FormDataRequestor()
      ..uri=uri;

    BlueMessage msg=BlueMessage.create()
      ..actorPath='akka://default/user/logins/system/representer'
      ..type='form-data'
      ..body=value.writeToBuffer();

    var result=await brokerClient.invoke(msg.writeToBuffer());
    var resp=MetaPayload.fromBuffer(result);
    print(resp.type);
    if(resp.type==MetaPayloadType.ACTION_RESULT) {
      print('ok.');
      var val=MetaSingleFormData.fromBuffer(resp.body);
      // print(val);
      this.editors[uri]=val;
      return val;
    }else{
      print('err.');
      var err=ErrorInfo.fromBuffer(resp.body);
      print(err);
      throw new RetrieveError(err);
    }
  }
}

