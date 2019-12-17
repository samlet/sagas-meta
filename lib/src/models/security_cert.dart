import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity X509IssuerProvision, Valid issuer data for authentication of x.509 certificates
class X509IssuerProvision extends EntityBase {

  /// this entity has only one pk
  final String certProvisionId; // pk
  final String commonName;
  final String country;
  final String serialNumber;
  final String organizationName;
  final String cityLocality;
  final String stateProvince;
  final String organizationalUnit;
  X509IssuerProvision({entityId,
    @required this.certProvisionId, this.commonName, this.country, this.serialNumber, this.organizationName, this.cityLocality, this.stateProvince, this.organizationalUnit,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'X509IssuerProvision { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'certProvisionId':certProvisionId, 'commonName':commonName, 'country':country, 'serialNumber':serialNumber, 'organizationName':organizationName, 'cityLocality':cityLocality, 'stateProvince':stateProvince, 'organizationalUnit':organizationalUnit};
  }

}