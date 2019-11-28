//import 'dart:convert';
//import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:sagas_meta/src/http_rpc_api.dart';

void main() async {
  String method="echo";
  Map<String,Object> params={"value": 5, "message": "hello world"};
  OfRpc rpc=new OfRpc(httpClient: http.Client());
  var result=await rpc.invoke(method, params);
  print(result);
  if (result.errCode == 0) {
    print('ok');
  } else {
    print('got a error');
  }

  // end
  rpc.close();
}

