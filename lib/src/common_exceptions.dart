import 'package:sagas_meta/src/meta/metainfo.pb.dart';

class RetrieveError implements Exception {
  ErrorInfo cause;
  RetrieveError(this.cause);
}
class SubmitError implements Exception {
  ErrorInfo cause;
  SubmitError(this.cause);
}
class ServiceError implements Exception {
  String cause;
  ServiceError(this.cause);
}

