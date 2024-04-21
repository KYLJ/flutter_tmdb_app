import 'package:flutter_tmdb_app/data/data_source/movie_details_data_source.dart';
import 'package:flutter_tmdb_app/data/mapper/movie_details_dto_mapper.dart';
import 'package:flutter_tmdb_app/domain/model/movie_details.dart';
import 'package:flutter_tmdb_app/domain/repository/movie_details_repository.dart';

class MovieDetailsRepositoryImp implements MovieDetailsRepository {
  final MovieDetailsDataSource _movieDetailsDataSource;

  const MovieDetailsRepositoryImp({
    required MovieDetailsDataSource movieDetailsDataSource,
  }) : _movieDetailsDataSource = movieDetailsDataSource;

  @override
  Future<MovieDetails> getMovieDetails(String movieId) async {
    final movieDetailDto =
        await _movieDetailsDataSource.getMovieDetailsDto(movieId);

    return movieDetailDto.toMovieDetails();
  }
}
