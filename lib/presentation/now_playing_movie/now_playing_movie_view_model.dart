import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_now_playing_movie_list_use_case.dart';

import '../../domain/model/now_playing_movie.dart';

class NowPlayingMovieViewModel with ChangeNotifier {

  final GetNowPlayingMovieListUseCase _getNowPlayingMovieListUseCase;

  NowPlayingMovieViewModel(
      {required GetNowPlayingMovieListUseCase getNowPlayingMovieListUseCase})
      : _getNowPlayingMovieListUseCase = getNowPlayingMovieListUseCase;

  List<NowPlayingMovie> _nowPlayingMovieList = [];

  get nowPlayingMovieList => List.unmodifiable(_nowPlayingMovieList);

  void fetchNowPlayingMovieList() async {
    _nowPlayingMovieList = await _getNowPlayingMovieListUseCase.execute();
    notifyListeners();
  }

}
