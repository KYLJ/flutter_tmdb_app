import 'package:flutter_tmdb_app/data/dto/movie_credit_dto.dart';
import 'package:flutter_tmdb_app/domain/model/cast.dart';

extension CastDtoMapper on CastDto {
  Cast toCast() {
    return Cast(
      adult: adult ?? false,
      gender: gender ?? -1,
      id: id ?? -1,
      knownForDepartment: knownForDepartment ?? '',
      name: name ?? '',
      originalName: originalName ?? '',
      popularity: popularity ?? -1,
      profilePath: profilePath ?? '',
      castId: castId ?? -1,
      character: character ?? '',
      creditId: creditId ?? '',
      order: order ?? -1,
    );
  }
}
