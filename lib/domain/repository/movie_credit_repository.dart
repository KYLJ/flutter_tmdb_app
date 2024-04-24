import 'package:flutter_tmdb_app/domain/model/movie_credit.dart';

abstract interface class MovieCreditRepository {
  Future<MovieCredit> getMovieCredit(String movieId);
}
