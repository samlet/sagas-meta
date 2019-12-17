import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesUom{
  final SrvClient client;
  ProductServicesUom(this.client);

  /**
   * UoM conversion based on product attributes - 
   *
   * Requires arguments
   * Returns convertedValue[BigDecimal]
   */
  Future<OfResult> convertUomProduct({@required Map<String,dynamic> arguments}) =>
      client.invoke('convertUomProduct', null, { 'arguments': arguments });

  /**
   *  - 
   *
   * Requires arguments
   * Returns convertedValue[BigDecimal]
   */
  Future<OfResult> interfaceUomFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('interfaceUomFormula', null, { 'arguments': arguments });

}