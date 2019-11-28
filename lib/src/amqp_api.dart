//import 'dart:convert';
//import "dart:io";
import "dart:async";
import "dart:math";
import "package:dart_amqp/dart_amqp.dart";
import 'package:decimal/decimal.dart';
//import 'package:sagas_meta/src/entity_base.dart';
//import 'package:sagas_meta/src/result_api.dart';

var UUID = () => "${(new Random()).nextDouble()}";

abstract class ApiBase<T>{
  Client client;
  String queueTag;
  String _replyQueueTag;
  Completer contextChannel;
  Map<String, Completer> channels = new Map<String, Completer>();
  Queue _queue;

  // queueTag = "rpc_queue"
  ApiBase(this.queueTag, Client client){
    if(client==null){
      client = new Client();
    }
    this.client=client;
    contextChannel = new Completer();
    this.client
        .channel()
        .then((Channel channel) => channel.queue(queueTag))
        .then((Queue rpcQueue) {
      _queue = rpcQueue;
      return rpcQueue.channel.privateQueue();
    }).then((Queue rpcQueue) {
      rpcQueue.consume(noAck: true).then((Consumer consumer) {
        _replyQueueTag = consumer.queue.name;
        consumer.listen(handler);
        contextChannel.complete();
      });
    });
  }

  void handler(AmqpMessage event);

  Future<T> call(Object req) {
    return contextChannel.future.then((_) {
      String uuid = UUID();
      Completer<T> channel = new Completer<T>();
      MessageProperties properties = new MessageProperties()
        ..replyTo = _replyQueueTag
        ..corellationId = uuid;
      channels[uuid] = channel;
      print(" [x] Requesting ...");

      if (req is Map) {
        _queue.publish(convertIncompatible(req), properties: properties);
      }else{
        _queue.publish(req, properties: properties);
      }
      return channel.future;
    });
  }

  Map convertIncompatible(Map<String, Object> req){
    var updates=new Map<String, Object>();
    req.forEach((k,v){
      if(v is Decimal){
        updates.putIfAbsent(k, ()=>v.toDouble());
      }else if(v is DateTime){
        updates.putIfAbsent(k, ()=>v.toString());
      }
    });
    req.addAll(updates);
    return req;
  }

  Future close() async{
    channels.forEach((_, var next) => next.complete("RPC client closed"));
    channels.clear();
    await client.close();
  }
}