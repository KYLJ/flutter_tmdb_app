import '../model/popular_movie.dart';

abstract interface class PopularRepository {
  Future<PopularMovie> getPopularMovie();
}
