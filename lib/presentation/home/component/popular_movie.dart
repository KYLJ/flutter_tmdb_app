import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/popular_movie/popular_movie_view_model.dart';
import 'package:provider/provider.dart';

import '../../../data/dto/now_playing_movie_dto.dart';

class PopularMovie extends StatefulWidget {
  const PopularMovie({super.key});

  @override
  State<PopularMovie> createState() => _PopularMovieState();
}

class _PopularMovieState extends State<PopularMovie> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<PopularMovieViewModel>().fetchPopularMovieList());
  }

  @override
  Widget build(BuildContext context) {
    PopularMovieViewModel viewModel = context.watch();
    return Column(
      children: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 22.0,
                  width: 64.0,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 0.4, color: Colors.grey),
                        padding: const EdgeInsets.all(2)),
                    child: const Text(
                      'See more',
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList.builder(
          itemCount: viewModel.popularMovieList.length,
          itemBuilder: (BuildContext context, int index) {
            ResultDto result = viewModel.popularMovieList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        '$imageBaseUrl${result.posterPath}',
                        // height: 128.0,
                        width: 60.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: SizedBox(
                      height: 128.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${result.title}',
                            style: const TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: 20.0,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                result.voteAverage != null
                                    ? '${result.voteAverage!.toStringAsFixed(1)} / 10'
                                    : 'No rating',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      Colors.indigo.shade100.withOpacity(0.7),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6.0, horizontal: 16.0),
                                  child: Text(
                                    '${result.genreIds}',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.indigo.shade400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                size: 20.0,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                '${result.releaseDate}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
