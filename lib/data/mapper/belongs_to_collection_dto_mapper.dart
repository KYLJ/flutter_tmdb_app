import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/domain/model/belongs_to_collection.dart';

extension BelongsToCollectionDtoMapper on BelongsToCollectionDto {
  BelongsToCollection toBelongsToCollection() {
    return BelongsToCollection(
      id: id ?? -1,
      name: name ?? '',
      posterPath: posterPath ?? '',
      backdropPath: backdropPath ?? '',
    );
  }
}
