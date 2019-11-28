import 'package:meta/meta.dart';
import 'package:sagas_meta/src/common_events.dart';
import 'package:sagas_meta/src/models_t/gen_stubs.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class TestService{
  final SrvClient client;
  TestService(this.client);

  /// Test service
  /// Returns resp[String], value[GenericValue]
  Future<OfResult> testScv({double defaultValue, String message}) =>
      client.invoke('testScv', null, {'defaultValue': defaultValue, 'message': message});

  Future<OfResult> testScv_(TestScvEv ev )=>
      client.invoke('testScv', null, ev.asMap());
}

void callWithEvent(TestService ts) async{
  var r=await ts.testScv_(TestScvEv(defaultValue: 6.6, message: 'hi'));
  print("call with event result -> $r");
}

void main(List<String> arguments) async {
  SrvClient client = new SrvClient();
  /*
  client.call({'_service': 'testScv',
    'defaultValue': 5.5,
    'message': "hello world"})
      .then((String res) {
    print(" [x] result = ${res}");
    var r=parseResponse(res);
    print(r['resp']);
  })
  */
  var result = await client
      .invoke('testScv', null, {'defaultValue': 5.5, 'message': "hello world"});

  print(result);
  if (result.errCode == 0) {
    print('ok');
  } else {
    print('got a error');
  }

  TestService cs=new TestService(client);
  var r=await cs.testScv(defaultValue: 6.6, message: 'hi');
  print(r);

  await callWithEvent(cs);

  // test service subs
  CommonService commonService=new CommonService(client);
  r=await commonService.testScv(defaultValue: 7.7, message: 'bye');
  print(r);

  await client.close();
}


class TestScvEv extends ServiceEvent {
  double defaultValue;
  String message;

  TestScvEv({@required this.defaultValue, this.message})
      : super([defaultValue, message]);

  @override
  String toString() => 'AddTodo { defaultValue: $defaultValue, message: $message }';
  @override
  Map<String, dynamic> asMap(){
    return {'defaultValue': defaultValue, 'message': message};
  }
}

