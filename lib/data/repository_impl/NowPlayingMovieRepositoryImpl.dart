import 'package:flutter_tmdb_app/data/data_source/now_playing_movie_data_source.dart';
import 'package:flutter_tmdb_app/data/dto/now_playing_movie_dto.dart';
import 'package:flutter_tmdb_app/data/mapper/now_playing_movie_dto_mapper.dart';
import 'package:flutter_tmdb_app/domain/model/now_playing_movie.dart';
import 'package:flutter_tmdb_app/domain/repository/now_playing_movie_repository.dart';

class NowPlayingMovieRepositoryImpl implements NowPlayingMovieRepository {

  final NowPlayingMovieDataSource _nowPlayingMovieDataSource;

  NowPlayingMovieRepositoryImpl(
      {required NowPlayingMovieDataSource nowPlayingMovieDataSource})
      : _nowPlayingMovieDataSource = nowPlayingMovieDataSource;

  @override
  Future<List<NowPlayingMovie>> getNowPlayingMovieList() async {
    final NowPlayingMovieDto nowPlayingMovieDto = await _nowPlayingMovieDataSource.getNowPlayingMovieDto();
    return nowPlayingMovieDto.resultDtoList?.map((e) => e.toNowPlayingMovie()).toList() ?? [];
  }
}
