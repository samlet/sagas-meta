import 'package:dart_amqp/dart_amqp.dart';
import 'package:decimal/decimal.dart';
import 'package:sagas_meta/src/services/common_services_test.dart';
import 'package:sagas_meta/src/services/manufacturing_services_production_run.dart';
import 'package:sagas_meta/src/srv_api.dart';
import 'package:sagas_meta/src/constants.dart' as cons;
void main() async{
  SrvClient client = new SrvClient(client:Client());
  client.token=cons.manufAdminToken;

  var productId='PROD_MANUF';
  var facilityId='WebStoreWarehouse';
  var quantity=Decimal.parse('5.0');
  var productionRunStartDate=DateTime.now();

  var r=await ManufacturingServicesProductionRun(client).createProductionRun(
      // userLogin:admin,
      productId:productId,
      pRQuantity:quantity,
      startDate:productionRunStartDate,
      facilityId:facilityId);
  print(r);

  await client.close();
}

