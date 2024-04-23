import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  const StarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow.shade700,
      size: 20,
    );
  }
}
