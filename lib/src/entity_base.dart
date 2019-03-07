import 'dart:convert';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

abstract class EntityBase extends Equatable {
  final String entityId;
  final DateTime lastUpdatedStamp;
  final DateTime createdStamp;

  EntityBase(
    this.entityId,
    this.lastUpdatedStamp,
    this.createdStamp,
  ) : super([
          entityId,
          lastUpdatedStamp,
          createdStamp,
        ]);

  Map<String, dynamic> asMap();
}

String create_id_from(String entityName, List<String> fieldNames, jsonMap){
  StringBuffer sb=new StringBuffer(entityName);
  fieldNames.forEach((fld){
    sb.write(':');
    sb.write(jsonMap[fld]);
  });
  return sb.toString();
}

DateTime check_dt(dynamic val){
  if(val!=null) {
    return DateTime.fromMillisecondsSinceEpoch(val);
  }else{
    return null;
  }
}
DateTime check_time(dynamic val){
  if(val!=null) {
    return DateFormat.Hms().parse(val);
  }else{
    return null;
  }
}

Uint8List check_b64(dynamic val){
  if(val!=null) {
    return base64Decode(val);
  }else{
    return null;
  }
}
