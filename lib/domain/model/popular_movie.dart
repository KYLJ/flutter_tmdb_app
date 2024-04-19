import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movie.freezed.dart';

part 'popular_movie.g.dart';

@freezed
class PopularMovie with _$PopularMovie {
  const factory PopularMovie({
    required bool adult,
    required String backdropPath,
    required List<num> genreIds,
    required num id,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required num popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required num voteAverage,
    required num voteCount,
  }) = _PopularMovie;

  factory PopularMovie.fromJson(Map<String, Object?> json) =>
      _$PopularMovieFromJson(json);
}
