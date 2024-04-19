import 'dart:convert';
import 'dart:io';

import 'package:flutter_tmdb_app/data/data_source/now_playing_movie_data_source.dart';
import 'package:flutter_tmdb_app/data/dto/now_playing_movie_dto.dart';
import 'package:http/http.dart' as http;

class NowPlayingMovieDataSourceImpl implements NowPlayingMovieDataSource {
  final String _baseUri = 'https://api.themoviedb.org/3/movie/now_playing';
  final String _queryParam = '?language=ko-KR&page=1&api_key=';
  final String _apiKey = Platform.environment['TMDB_API_KEY']!;

  @override
  Future<NowPlayingMovieDto> getNowPlayingMovieDto() async {
    http.Response response =
        await http.get(Uri.parse(_baseUri + _queryParam + _apiKey));

    Map<String, dynamic> decodedJson = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Request failed with status: ${response.statusCode}');

    return NowPlayingMovieDto.fromJson(decodedJson);
  }
}
