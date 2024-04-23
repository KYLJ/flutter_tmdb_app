import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/presentation/component/star_icon.dart';
import 'package:flutter_tmdb_app/presentation/movie_details/language_list.dart';
import 'package:flutter_tmdb_app/presentation/movie_details/movie_details_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  final unitHour = 60;

  @override
  void initState() {
    super.initState();
    context.read<MovieDetailsViewModel>().getMovieDetails();
  }

  @override
  Widget build(BuildContext context) {
    final movieDetails = context.read<MovieDetailsViewModel>().movieDetails;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: true,
            actions: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.more_horiz),
              )
            ],
            flexibleSpace: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.network(
                    'https://image.tmdb.org/t/p/original${movieDetails.backdropPath}',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -1,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                movieDetails.title,
                                style: GoogleFonts.notoSansKr(
                                  textStyle: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Icon(Icons.bookmark_border)
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            StarIcon(),
                            Text(
                              '${movieDetails.voteAverage.toStringAsFixed(1)}/10',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: movieDetails.genreList
                              .map(
                                (genre) => Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.indigo.shade100
                                          .withOpacity(0.7),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3.0, horizontal: 12.0),
                                    child: Text(
                                      genre.name,
                                      style: TextStyle(
                                          color: Colors.indigo.shade400,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Length',
                                  style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                      color: Colors.black26,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${movieDetails.runtime ~/ unitHour}h ${movieDetails.runtime % unitHour}min',
                                  style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 40),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Language',
                                  style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                      color: Colors.black26,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${languageList.firstWhere((e) => e['iso_639_1'] == movieDetails.originalLanguage)['name']}',
                                  style: GoogleFonts.mulish(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: GoogleFonts.merriweather(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              movieDetails.overview,
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 220),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
