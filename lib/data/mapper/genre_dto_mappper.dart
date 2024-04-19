import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/domain/model/genre.dart';

extension GenreDtoMapper on GenreDto {
  Genre toGenre() {
    return Genre(
      id: id ?? -1,
      name: name ?? '',
    );
  }
}
