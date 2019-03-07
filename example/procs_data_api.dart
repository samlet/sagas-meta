import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/jsonifiers/security_login_jsonifiers.dart';
import 'package:sagas_meta/src/models/security_login.dart';
import 'package:sagas_meta/src/models_t/gen_jsonifiers.dart';
import 'package:sagas_meta/src/models_t/gen_models.dart';
import 'package:http/http.dart' as http;

void users(http.Client client) async{
  var fetcher= new DataFetcher<UserLogin>(client,
          (jsonData)=> SecurityLoginJsonifier.extractUserLogin(jsonData));
  final rs = await fetcher.fetchData("UserLogin", 0, 5);
  // rs.forEach((x)=> print("rec -> $x"));
  rs.forEach((x){
    var map=x.asMap();
    StringBuffer sb=new StringBuffer();
    map.forEach((k,v){
      if(v!=null){
        sb.write("$k: $v, ");
      }
    });
    print("rec -> ${sb.toString()}");
  });
}

void main() async{
  final client= http.Client();
  // TestFieldType
  var dataFetcher= new DataFetcher<TestFieldType>(client,
          (jsonData)=> TestingEntityJsonifier.extractTestFieldType(jsonData));
  final rs = await dataFetcher.fetchData("TestFieldType", 0, 5);
  rs.forEach((x)=> print("rec -> $x"));

  await users(client);

  // close client
  client.close();
  print('done');
}

