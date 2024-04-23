import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/component/star_icon.dart';
import 'package:flutter_tmdb_app/presentation/popular_movie/popular_movie_view_model.dart';
import 'package:provider/provider.dart';

import '../../../data/dto/popular_movie_dto.dart';
import '../../popular_movie/genres_list.dart';

class PopularMovie extends StatefulWidget {
  const PopularMovie({super.key});

  @override
  State<PopularMovie> createState() => _PopularMovieState();
}

class _PopularMovieState extends State<PopularMovie> {

  @override
  Widget build(BuildContext context) {
    PopularMovieViewModel viewModel = context.watch();
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverList.builder(
      itemCount: viewModel.popularMovieList.length,
      itemBuilder: (BuildContext context, int index) {
        ResultDto result = viewModel.popularMovieList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: SizedBox(
                  width: 92.0,
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        '$imageBaseUrl${result.posterPath}',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  // height: 128.0,
                  width: screenWidth - 180,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          '${result.title}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Row(
                          children: [
                            const StarIcon(size: 20),
                            const SizedBox(width: 8.0),
                            Text(
                              result.voteAverage != null
                                  ? '${result.voteAverage!.toStringAsFixed(1)} / 10'
                                  : 'No rating',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        spacing: 8.0, // 수평 방향 간격
                        runSpacing: 8.0, // 수직 방향 간격
                        children: List<Widget>.generate(
                          result.genreIds?.length ?? 0,
                          (int index) {
                            final genresId = genresList.firstWhere((element) =>
                                element['id'] == result.genreIds![index]);
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.indigo.shade100.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 12.0),
                                child: Text(
                                  '${genresId['name']}',
                                  style: TextStyle(
                                      color: Colors.indigo.shade400,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 20.0,
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              '${result.releaseDate}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
