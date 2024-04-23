import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/home/component/now_playing_movie.dart';
import 'package:flutter_tmdb_app/presentation/home/component/popular_movie.dart';
import 'package:flutter_tmdb_app/presentation/home/component/popular_movie_title.dart';

import 'component/now_playing_movie_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white54,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search),
              )
            ],
            title: Center(
              child: Text(
                'KYLJ Cinema',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          NowPlayingMovieTitle(),
          NowPlayingMovie(),
          PopularMovieTitle(),
          PopularMovie(),
        ],
      ),
    );
  }
}
