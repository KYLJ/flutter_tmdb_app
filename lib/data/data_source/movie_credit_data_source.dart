import 'package:flutter_tmdb_app/data/dto/movie_credit_dto.dart';

abstract interface class MovieCreditDataSource {
  Future<MovieCreditDto> getMovieCredit(String movieId);
}
