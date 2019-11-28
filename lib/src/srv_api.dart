import 'dart:convert';
//import "dart:io";
import "dart:async";
//import "dart:math";
import "package:dart_amqp/dart_amqp.dart";
import 'package:sagas_meta/src/entity_base.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/amqp_api.dart';
import "package:sagas_meta/src/constants.dart" as cons;
class SrvClient extends ApiBase<String>{
  String token=cons.systemToken; // default token

  SrvClient({String queueTag='rpc_queue', Client client}) : super(queueTag, client);

  @override
  void handler(AmqpMessage event) {
    if (!channels.containsKey(event.properties.corellationId)) return;
    var cnt=event.payloadAsString;
    if(cnt.length<51){
      print(" [.] Got ${cnt} ...");
    }else {
      print(" [.] Got ${cnt.substring(0, 50)} ...");
    }
    channels
        .remove(event.properties.corellationId)
        .complete(cnt);
  }

  Future<OfResult> invoke(String method, EntityBase ent, Map<String, Object> params) async {
    params.putIfAbsent('_service', () => method);
    params.putIfAbsent('_token', ()=>token);
    if(ent!=null) {
      params.addAll(ent.asMap());
    }
    final response = await call(params);
    final jsonResponse=_parseResponse(response);
    return OfResult()
      ..errCode = jsonResponse['_result'] as int
      ..data = jsonResponse
    ;
  }

  Map<String, dynamic> _parseResponse(String response) {
    final Map<String, dynamic> jsonResponse = json.decode(response) as Map;

    if (jsonResponse['_result'] != 0) {
      // print error message for debug purpose
      if (jsonResponse['message'] != null) {
        print(jsonResponse['message']);
      }
      if (jsonResponse['messages'] != null) {
        print(jsonResponse['messages']);
      }
    }

    return jsonResponse;
  }
}

