import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/home/component/now_playing_movie.dart';
import 'package:flutter_tmdb_app/presentation/home/component/popular_movie.dart';
import 'package:flutter_tmdb_app/presentation/home/component/popular_movie_title.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/now_playing_movie_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: 133,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(246, 246, 246, 0.8),
            ),
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                backgroundColor: Colors.white54,
                leading: const Icon(Icons.menu),
                actions: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.search),
                  )
                ],
                title: Center(
                  child: Text(
                    'KYLJ Cinema',
                    style: GoogleFonts.merriweather(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
              const NowPlayingMovieTitle(),
              const NowPlayingMovie(),
              const PopularMovieTitle(),
              const PopularMovie(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.movie), label: 'movie'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies_outlined), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: 'save'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: (int index) {
          selectedIndex = index;
        },
      ),
    );
  }
}
