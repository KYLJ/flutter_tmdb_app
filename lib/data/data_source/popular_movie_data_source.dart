import '../dto/popular_movie_dto.dart';

abstract interface class PopularDataSource {
  Future<ResultDto> getPopularMovieApi();
}
