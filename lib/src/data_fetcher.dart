import 'package:http/http.dart' as http;
import 'dart:convert';

typedef S ItemCreator<S>(dynamic val);

class DataFetcher<T> {
  ItemCreator<T> creator;
  final http.Client httpClient;

  DataFetcher(this.httpClient, ItemCreator<T> this.creator);

  Future<List<T>> fetchData(String entity, int startIndex, int limit) async {
    final response = await httpClient.get(
        'http://localhost:8099/list_entities/$entity?_start=$startIndex&_limit=$limit');
    if (response.statusCode == 200) {
      // final data = json.decode(response.body) as List;
      final jsonResponse = json.decode(response.body) as Map;

      var result = jsonResponse['_result'];
      if (result == 0) {
        final data = jsonResponse['data'];
        return data.map((rawPost) {
          return creator(rawPost);
        }).toList().cast<T>(); // need add '.cast<T>()'
      } else {
        print(jsonResponse['message']);
        print(jsonResponse['messages']);
        throw Exception('error fetching posts: ' + jsonResponse['message']);
      }
    } else {
      throw Exception('error fetching posts');
    }
  }

  void stop(){
    httpClient.close();
  }
}

