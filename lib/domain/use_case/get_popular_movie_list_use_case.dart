import 'package:flutter_tmdb_app/domain/repository/popular_repository.dart';
import '../../data/dto/popular_movie_dto.dart';

class GetPopularMovieListUseCase {
  final PopularRepository _popularRepository;

  GetPopularMovieListUseCase({
    required PopularRepository popularRepository,
  }) : _popularRepository = popularRepository;

  Future<List<ResultDto>?> execute() async {
    final popularMovie = await _popularRepository.getPopularMovie();
    return popularMovie.results;
  }
}
