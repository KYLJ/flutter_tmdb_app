import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/component/star_icon.dart';
import 'package:provider/provider.dart';

import '../../now_playing_movie/now_playing_movie_view_model.dart';

class NowPlayingMovie extends StatefulWidget {
  const NowPlayingMovie({super.key});

  @override
  State<NowPlayingMovie> createState() => _NowPlayingMovieState();
}

class _NowPlayingMovieState extends State<NowPlayingMovie> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<NowPlayingMovieViewModel>().fetchNowPlayingMovieList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final NowPlayingMovieViewModel viewModel =
        context.watch<NowPlayingMovieViewModel>();

    return SliverList(
      delegate: SliverChildListDelegate([
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: viewModel.nowPlayingMovieList
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 135,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(1, 5),
                                )
                              ],
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w200/${e.posterPath}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 128,
                            child: Row(
                              children: [
                                const StarIcon(),
                                Text(
                                  ' ${e.voteAverage.toStringAsFixed(1)}/10',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 128,
                            height: 60,
                            child: Text(
                              e.title,
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
