import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/domain/model/movie_details.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_movie_details_use_case.dart';

class MovieDetailsViewModel with ChangeNotifier {
  final GetMovieDetailsUseCase _getMovieDetailsUseCase;
  final String _movieId;

  MovieDetailsViewModel({
    required GetMovieDetailsUseCase getMovieDetailsUseCase,
    required String movieId,
  })  : _getMovieDetailsUseCase = getMovieDetailsUseCase,
        _movieId = movieId;

  MovieDetails? _movieDetails;

  MovieDetails get movieDetails => _movieDetails!;

  Future<void> getMovieDetails() async {
    _movieDetails = await _getMovieDetailsUseCase.execute(_movieId);
    notifyListeners();
  }
}
