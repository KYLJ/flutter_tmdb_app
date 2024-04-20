import 'dart:convert';
import 'dart:io';

import 'package:flutter_tmdb_app/data/data_source/movie_details_data_source.dart';
import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:http/http.dart' as http;

class MovieDetailDataSourceImpl implements MovieDetailsDataSource {
  final String _baseUri = 'https://api.themoviedb.org/3/movie';
  final String _queryParam = '?language=ko-KR&api_key=';
  final String _apiKey = Platform.environment['TMDB_API_KEY']!;

  @override
  Future<MovieDetailsDto> getMovieDetailsDto(String movieId) async {
    final http.Response response =
        await http.get(Uri.parse('$_baseUri/$movieId$_queryParam$_apiKey'));

    final Map<String, dynamic> decodedJson = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Request failed with status: ${response.statusCode}');

    return MovieDetailsDto.fromJson(decodedJson);
  }
}
