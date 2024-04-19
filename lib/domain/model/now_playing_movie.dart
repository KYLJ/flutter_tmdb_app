import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_movie.freezed.dart';

part 'now_playing_movie.g.dart';

@freezed
class NowPlayingMovie with _$NowPlayingMovie {
  const factory NowPlayingMovie({
    required num movieId,
    required String title,
    required num voteAverage,
    required String posterPath,
  }) = _NowPlayingMovie;

  factory NowPlayingMovie.fromJson(Map<String, Object?> json) => _$NowPlayingMovieFromJson(json);
}