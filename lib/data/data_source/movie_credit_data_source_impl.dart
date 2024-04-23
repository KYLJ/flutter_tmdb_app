import 'dart:convert';

import 'package:flutter_tmdb_app/data/data_source/movie_credit_data_source.dart';
import 'package:flutter_tmdb_app/data/dto/movie_credit_dto.dart';
import 'package:http/http.dart' as http;

class MovieCreditDataSourceImpl implements MovieCreditDataSource {
  final String _baseUri = 'https://api.themoviedb.org/3/movie';
  final String _queryParam = '?language=ko-KR&api_key=';
  final String _apiKey = Platform.environment['TMDB_API_KEY']!;

  Future<MovieCreditDto> getMovieCredit(String movieId) async {
    final http.Response response = await http
        .get(Uri.parse('$_baseUri/$movieId/credits$_queryParam$_apiKey'));

    final Map<String, dynamic> decodedJson = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Request failed with status: ${response.statusCode}');

    return MovieCreditDto.fromJson(decodedJson);
  }
}
