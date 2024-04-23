import 'package:flutter_tmdb_app/data/data_source/now_playing_movie_data_source_impl.dart';
import 'package:flutter_tmdb_app/data/data_source/popular_movie_data_source_impl.dart';
import 'package:flutter_tmdb_app/data/repository_impl/now_playing_movie_repository_impl.dart';
import 'package:flutter_tmdb_app/data/repository_impl/popular_repository_impl.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_now_playing_movie_list_use_case.dart';
import 'package:flutter_tmdb_app/domain/use_case/get_popular_movie_list_use_case.dart';
import 'package:flutter_tmdb_app/presentation/home/home_screen.dart';
import 'package:flutter_tmdb_app/presentation/now_playing_movie/now_playing_movie_view_model.dart';
import 'package:flutter_tmdb_app/presentation/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'popular_movie/popular_movie_view_model.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => NowPlayingMovieViewModel(
                getNowPlayingMovieListUseCase: GetNowPlayingMovieListUseCase(
                  nowPlayingMovieRepository: NowPlayingMovieRepositoryImpl(
                    nowPlayingMovieDataSource: NowPlayingMovieDataSourceImpl(),
                  ),
                ),
              ),
            ),
            ChangeNotifierProvider(
              create: (_) => PopularMovieViewModel(
                getPopularMovieListUseCase: GetPopularMovieListUseCase(
                  popularRepository: PopularRepositoryImpl(
                    popularDataSource: PopularDataSourceImpl(),
                  ),
                ),
              ),
            ),
          ],
          child: const HomeScreen(),
        );
      },
    ),
  ],
);
