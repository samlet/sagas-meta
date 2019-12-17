import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesFormula{
  final SrvClient client;
  ManufacturingServicesFormula(this.client);

  /**
   * Example bom formula - 
   *
   * Requires arguments
   * Returns quantity[BigDecimal]
   */
  Future<OfResult> exampleComponentFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('exampleComponentFormula', null, { 'arguments': arguments });

  /**
   * Formula that computes the estimated manufacturing time of a given task - 
   *
   * Requires arguments
   * Returns totalTime[BigDecimal]
   */
  Future<OfResult> exampleTaskFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('exampleTaskFormula', null, { 'arguments': arguments });

  /**
   *  - 
   *
   * Requires arguments
   * Returns quantity[BigDecimal]
   */
  Future<OfResult> interfaceBomFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('interfaceBomFormula', null, { 'arguments': arguments });

  /**
   *  - 
   *
   * Requires arguments
   * Returns totalTime[BigDecimal]
   */
  Future<OfResult> interfaceTaskFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('interfaceTaskFormula', null, { 'arguments': arguments });

  /**
   * Formula that computes the quantity of linear component in bom - 
   *
   * Requires arguments
   * Returns quantity[BigDecimal]
   */
  Future<OfResult> linearComponentFormula({@required Map<String,dynamic> arguments}) =>
      client.invoke('linearComponentFormula', null, { 'arguments': arguments });

}