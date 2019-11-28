import 'dart:convert';
//import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';

class OfRpc {
  final http.Client httpClient;

  OfRpc({@required this.httpClient});

  Future<OfResult> invoke(String method, Map<String, Object> params) async {
    final response = await httpClient.post(
        'http://localhost:8099/rpc/$method',
        body: json.encode(params)
    );

    if (response.statusCode == 200) {
      // final data = json.decode(response.body) as List;
      final jsonResponse = json.decode(response.body) as Map;
      // print(jsonResponse);
      int errCode = jsonResponse['_result'];

      return OfResult()
        ..statusCode = response.statusCode
        ..errCode = errCode
        ..data = jsonResponse
      ;
    } else {
      print(response.statusCode);
      return OfResult()
        ..statusCode = response.statusCode
        ..errCode = 2
        ..data = {}
      ;
    }
  }

  void close(){
    httpClient.close();
  }
}
