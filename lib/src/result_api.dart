
class OfResult{
  int statusCode=200;
  int errCode;

  Map data;
  dynamic val(String name, dynamic defaultValue) => data[name]??defaultValue;

  @override
  String toString() {
    return 'Result{statusCode: $statusCode, errCode: $errCode, data: $data}';
  }
}

