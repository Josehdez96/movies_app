import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/moviesResponse.dart';

class MoviesProvider extends ChangeNotifier {
  List<Movie> movies = [];
  final String endpoint = 'api.themoviedb.org';
  final Map<String, String> basicParams = {
    'api_key': '16d550d36c7c3c667bfc2f352f4fbda0',
    'language': 'es-ES',
    'page': '1'
  };

  Future<void> fetchNowPlayingMovies() async {
    final Uri url = Uri.https(endpoint, '/3/movie/now_playing', basicParams);
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        MoviesResponse moviesResponse =
            MoviesResponse.fromJson(jsonDecode(response.body));
        movies = moviesResponse.results;
      } else {
        throw Exception(
            'Error fetching data but responding status code: ${response.statusCode} from the backend');
      }
    } catch (err) {
      throw Exception('Fetching data, the error is: $err');
    }
  }
}
