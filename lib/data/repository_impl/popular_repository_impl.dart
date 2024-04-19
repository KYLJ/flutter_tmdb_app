import 'package:flutter_tmdb_app/data/mapper/popular_movie_dto_mapper.dart';

import '../../domain/model/popular_movie.dart';
import '../../domain/repository/popular_repository.dart';
import '../data_source/popular_movie_data_source.dart';

class PopularRepositoryImpl implements PopularRepository {
  final PopularDataSource _popularDataSource;

  PopularRepositoryImpl({
    required PopularDataSource popularDataSource,
  }) : _popularDataSource = popularDataSource;

  @override
  Future<PopularMovie> getPopularMovie() async {
    final dto = await _popularDataSource.getPopularMovieApi();
    return dto.toPopularMovie();
  }
}
