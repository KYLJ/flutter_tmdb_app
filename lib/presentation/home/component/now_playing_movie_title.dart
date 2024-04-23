import 'package:flutter/material.dart';

class NowPlayingMovieTitle extends StatelessWidget {
  const NowPlayingMovieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: SizedBox(
          width: 393,
          height: 30,
          child: Text(
            'Now Showing',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
