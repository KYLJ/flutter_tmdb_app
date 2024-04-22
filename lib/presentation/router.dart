import 'package:flutter_tmdb_app/data/data_source/now_playing_movie_data_source_impl.dart';
import 'package:flutter_tmdb_app/data/repository_impl/NowPlayingMovieRepositoryImpl.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_now_playing_movie_list_use_case.dart';
import 'package:flutter_tmdb_app/presentation/home/home_screen.dart';
import 'package:flutter_tmdb_app/presentation/now_playing_movie/now_playing_movie_view_model.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => NowPlayingMovieViewModel(
            getNowPlayingMovieListUseCase: GetNowPlayingMovieListUseCase(
              nowPlayingMovieRepository: NowPlayingMovieRepositoryImpl(
                nowPlayingMovieDataSource: NowPlayingMovieDataSourceImpl(),
              ),
            ),
          ),
          child: const HomeScreen(),
        );
      },
    ),
  ],
);
