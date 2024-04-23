import 'package:flutter/material.dart';

class PopularMovieTitle extends StatelessWidget {
  const PopularMovieTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Popular',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
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
    );
  }
}
