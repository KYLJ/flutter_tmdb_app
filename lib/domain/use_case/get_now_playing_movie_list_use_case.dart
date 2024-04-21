import 'package:flutter_tmdb_app/domain/model/now_playing_movie.dart';
import 'package:flutter_tmdb_app/domain/repository/now_playing_movie_repository.dart';

class GetNowPlayingMovieListUseCase {
  final NowPlayingMovieRepository _nowPlayingMovieRepository;

  GetNowPlayingMovieListUseCase(
      {required NowPlayingMovieRepository nowPlayingMovieRepository})
      : _nowPlayingMovieRepository = nowPlayingMovieRepository;

  Future<List<NowPlayingMovie>> execute() async {
    return await _nowPlayingMovieRepository.getNowPlayingMovieList();
  }
}
