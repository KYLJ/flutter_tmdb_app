import '../model/now_playing_movie.dart';

abstract interface class NowPlayingMovieRepository {

  Future<List<NowPlayingMovie>> getNowPlayingMovieList();
}