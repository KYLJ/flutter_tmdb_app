import 'package:flutter_tmdb_app/data/dto/popular_movie_dto.dart';
import 'package:flutter_tmdb_app/domain/model/popular_movie.dart';

extension PopularMovieDtoMapper on ResultDto {
  PopularMovie toPopularMovie() {
    return PopularMovie(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      genreIds: genreIds ?? [],
      id: id ?? -1,
      originalLanguage: originalLanguage ?? 'unknown',
      originalTitle: originalTitle ?? 'unknown',
      overview: overview ?? 'unknown',
      popularity: popularity ?? -1,
      posterPath: posterPath ?? 'unknown',
      releaseDate: releaseDate ?? 'unknown',
      title: title ?? 'unknown',
      video: video ?? false,
      voteAverage: voteAverage ?? -1,
      voteCount: voteCount ?? -1,
    );
  }
}
