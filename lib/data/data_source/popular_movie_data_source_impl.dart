import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../dto/popular_movie_dto.dart';
import 'popular_movie_data_source.dart';

class PopularDataSourceImpl implements PopularDataSource {
  final _baseUrl = 'https://api.themoviedb.org/3/movie/popular';
  final _queryParam = 'language=ko-KR&page=1';
  final _apiKey = Platform.environment['TMBD_API_KEY']!;

  @override
  Future<PopularMovieDto> getPopularMovieApi() async {
    try {
      final http.Response response =
          await http.get(Uri.parse('$_baseUrl?api_key=$_apiKey&$_queryParam'));

      Map<String, dynamic> json = response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : throw Exception(
              'Request failed with status: ${response.statusCode}.');

      return PopularMovieDto.fromJson(json);
    } catch (error) {
      throw Exception('unknownError: $error');
    }
  }
}
