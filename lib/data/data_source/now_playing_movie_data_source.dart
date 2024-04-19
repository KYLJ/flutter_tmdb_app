import '../dto/now_playing_movie_dto.dart';

abstract interface class NowPlayingMovieDataSource {

  Future<NowPlayingMovieDto> getNowPlayingMovieDto();
}