import 'package:flutter_tmdb_app/domain/model/movie_details.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_movie_details_use_case.dart';

class MovieDetailsViewModel {
  final GetMovieDetailsUseCase _getMovieDetailsUseCase;

  MovieDetailsViewModel({
    required GetMovieDetailsUseCase getMovieDetailsUseCase,
    required String movieId,
  }) : _getMovieDetailsUseCase = getMovieDetailsUseCase {
    getMovieDetails(movieId);
  }

  MovieDetails? _movieDetails;

  MovieDetails get movieDetails => _movieDetails!;

  Future<void> getMovieDetails(String movieId) async {
    _movieDetails = await _getMovieDetailsUseCase.execute(movieId);
  }
}
