import 'package:flutter_tmdb_app/domain/model/movie_details.dart';
import 'package:flutter_tmdb_app/domain/repository/movie_details_repository.dart';

class GetMovieDetailsUseCase {
  final MovieDetailsRepository _movieDetailsRepository;

  const GetMovieDetailsUseCase({
    required MovieDetailsRepository movieDetailsRepository,
  }) : _movieDetailsRepository = movieDetailsRepository;

  Future<MovieDetails> execute(String movieId) async {
    return await _movieDetailsRepository.getMovieDetails(movieId);
  }
}
