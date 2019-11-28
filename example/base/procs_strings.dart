import 'package:sprintf/sprintf.dart';

void main(){
  //⊕ [Naddiseo/dart-sprintf: Dart implementation of sprintf](https://github.com/Naddiseo/dart-sprintf)
  // sprintf
  print(sprintf("%04i", [-42]));
  print(sprintf("%s %s", ["Hello", "World"]));
  print(sprintf("%#04x", [10]));

}

