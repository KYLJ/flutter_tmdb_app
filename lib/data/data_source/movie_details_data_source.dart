import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';

abstract interface class MovieDetailsDataSource {
  Future<MovieDetailsDto> getMovieDetailsDto(String movieId);
}
