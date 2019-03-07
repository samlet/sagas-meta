import 'package:decimal/decimal.dart';
import 'dart:convert';

void main(){
  // with double
  print(0.2 + 0.1); // displays 0.30000000000000004
  // with decimal
  print(Decimal.parse('0.2') + Decimal.parse('0.1')); // displays 0.3
  var value=Decimal.parse('0.2') + Decimal.parse('0.1');
  print(json.encode(value.toDouble()));
}
