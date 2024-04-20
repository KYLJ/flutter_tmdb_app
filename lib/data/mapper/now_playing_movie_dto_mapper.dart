import 'package:flutter_tmdb_app/data/dto/now_playing_movie_dto.dart';
import 'package:flutter_tmdb_app/domain/model/now_playing_movie.dart';

extension NowPlayingMovieDtoMapper on ResultDto {
  NowPlayingMovie toNowPlayingMovie() {
    return NowPlayingMovie(
      movieId: id ?? -1,
      title: title ?? '',
      voteAverage: voteAverage ?? -1,
      posterPath: posterPath ?? '',
    );
  }
}
