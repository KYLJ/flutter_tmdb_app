import 'package:flutter_tmdb_app/domain/model/movie_details.dart';

abstract interface class MovieDetailsRepository {
  Future<MovieDetails> getMovieDetails(String movieId);
}
