import '../../domain/repository/popular_repository.dart';
import '../data_source/popular_movie_data_source.dart';
import '../dto/popular_movie_dto.dart';

class PopularRepositoryImpl implements PopularRepository {
  final PopularDataSource _popularDataSource;

  PopularRepositoryImpl({
    required PopularDataSource popularDataSource,
  }) : _popularDataSource = popularDataSource;

  @override
  Future<PopularMovieDto> getPopularMovie() async {
    return await _popularDataSource.getPopularMovieApi();
  }
}
