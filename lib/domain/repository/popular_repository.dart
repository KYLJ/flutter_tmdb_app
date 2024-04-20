import '../../data/dto/popular_movie_dto.dart';

abstract interface class PopularRepository {
  Future<PopularMovieDto> getPopularMovie();
}
