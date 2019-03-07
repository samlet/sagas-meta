import 'package:http/http.dart' as http;
import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/jsonifiers/sagas_dss_jsonifiers.dart';
import 'package:sagas_meta/src/models/sagas_dss.dart';

void fetch(http.Client client) async{
  var fetcher= new DataFetcher<DssOrdinalSales>(client,
          (jsonData)=> SagasDssJsonifier.extractDssOrdinalSales(jsonData));
  final rs = await fetcher.fetchData("DssOrdinalSales", 0, 10);
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
  await fetch(client);

  // close client
  client.close();
  print('done');
}

