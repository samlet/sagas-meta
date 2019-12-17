import 'package:sagas_meta/src/models/security_cert.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class SecurityCertJsonifier{
  static X509IssuerProvision extractX509IssuerProvision(dynamic json) {
    return X509IssuerProvision(
        entityId: create_id_from('X509IssuerProvision', ['certProvisionId'], json),
        certProvisionId: json['certProvisionId'] as String,
        commonName: json['commonName'] as String,
        country: json['country'] as String,
        serialNumber: json['serialNumber'] as String,
        organizationName: json['organizationName'] as String,
        cityLocality: json['cityLocality'] as String,
        stateProvince: json['stateProvince'] as String,
        organizationalUnit: json['organizationalUnit'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static X509IssuerProvision overridesX509IssuerProvision(Map<String, dynamic> map) {
    return X509IssuerProvision(
        entityId: create_id_from('X509IssuerProvision', ['certProvisionId'], map),
        certProvisionId: map['certProvisionId'],
        commonName: map['commonName'],
        country: map['country'],
        serialNumber: map['serialNumber'],
        organizationName: map['organizationName'],
        cityLocality: map['cityLocality'],
        stateProvince: map['stateProvince'],
        organizationalUnit: map['organizationalUnit'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}