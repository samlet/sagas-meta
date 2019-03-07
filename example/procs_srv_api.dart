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

  // test service subs
  CommonService commonService=new CommonService(client);
  r=await commonService.testScv(defaultValue: 7.7, message: 'bye');
  print(r);

  await client.close();
}
