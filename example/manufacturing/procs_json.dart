import 'dart:convert';

import 'package:decimal/decimal.dart';

void main(){
  var productId='PROD_MANUF';
  var facilityId='WebStoreWarehouse';
  // var quantity=Decimal.parse('5.0');
  var quantity=5.0;
  // var productionRunStartDate=DateTime.now();
  var productionRunStartDate=DateTime.now().toString();

  Map payloadContent={ 'productId': productId, 'pRQuantity': quantity,
    'startDate': productionRunStartDate, 'facilityId': facilityId};
  var jsonstr=json.encode(payloadContent);
  print(jsonstr);
}
