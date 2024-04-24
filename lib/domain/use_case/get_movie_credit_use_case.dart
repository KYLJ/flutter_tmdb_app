import 'package:flutter_tmdb_app/domain/model/movie_credit.dart';
import 'package:flutter_tmdb_app/domain/repository/movie_credit_repository.dart';

class GetMovieCreditUseCase {
  final MovieCreditRepository _movieCreditRepository;

  const GetMovieCreditUseCase({
    required MovieCreditRepository movieCreditRepository,
  }) : _movieCreditRepository = movieCreditRepository;

  Future<MovieCredit> execute(String movieId) async {
    return await _movieCreditRepository.getMovieCredit(movieId);
  }
}
