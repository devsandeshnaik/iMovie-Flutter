import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:imovie/Model/APIResponse.dart';
import 'package:imovie/Model/Movie.dart';

class MovieAPI {
  static Future<List<Movie>> getMovies(String url) async {
    APIResponse apiRespose;

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        apiRespose = APIResponse.fromJSON(json.decode(response.body));
        return apiRespose.result;
      } else {
        throw Exception('Failed to load album');
      }
    } catch (error) {
      print('Error occured $error');
      return null;
    }
  }
}
