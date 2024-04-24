import 'package:flutter_tmdb_app/data/data_source/movie_credit_data_source.dart';
import 'package:flutter_tmdb_app/data/mapper/movie_credit_dto_mapper.dart';
import 'package:flutter_tmdb_app/domain/model/movie_credit.dart';
import 'package:flutter_tmdb_app/domain/repository/movie_credit_repository.dart';

class MovieCreditRepositoryImpl implements MovieCreditRepository {
  final MovieCreditDataSource _movieCreditDataSource;

  const MovieCreditRepositoryImpl({
    required MovieCreditDataSource movieCreditDataSource,
  }) : _movieCreditDataSource = movieCreditDataSource;

  @override
  Future<MovieCredit> getMovieCredit(String movieId) async {
    final movieCreditDto = await _movieCreditDataSource.getMovieCredit(movieId);

    return movieCreditDto.toMovieCredit();
  }
}
