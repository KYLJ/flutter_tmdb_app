import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_popular_movie_list_use_case.dart';

import '../../data/dto/popular_movie_dto.dart';

const String imageBaseUrl = 'https://image.tmdb.org/t/p/original';

class PopularMovieViewModel with ChangeNotifier {
  final GetPopularMovieListUseCase _getPopularMovieListUseCase;

  PopularMovieViewModel({
    required GetPopularMovieListUseCase getPopularMovieListUseCase,
  }) : _getPopularMovieListUseCase = getPopularMovieListUseCase {
    fetchPopularMovieList();
  }

  List<ResultDto> _popularMovieList = [];

  List get popularMovieList => List.unmodifiable(_popularMovieList);

  void fetchPopularMovieList() async {
    _popularMovieList = await _getPopularMovieListUseCase.execute() ?? [];

    notifyListeners();
  }
}
