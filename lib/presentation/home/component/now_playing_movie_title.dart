import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowPlayingMovieTitle extends StatelessWidget {
  const NowPlayingMovieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 30,
            child: Text(
              'Now Showing',
              style: GoogleFonts.merriweather(
                textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
