import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {

  final double _size;

  const StarIcon({super.key, double size = 17}) : _size = size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow.shade700,
      size: _size,
    );
  }
}
