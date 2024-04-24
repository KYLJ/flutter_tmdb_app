import 'package:flutter_tmdb_app/data/dto/movie_credit_dto.dart';
import 'package:flutter_tmdb_app/domain/model/crew.dart';

extension CrewDtoMapper on CrewDto {
  Crew toCrew() {
    return Crew(
      adult: adult ?? false,
      gender: gender ?? -1,
      id: id ?? -1,
      knownForDepartment: knownForDepartment ?? '',
      name: name ?? '',
      originalName: originalName ?? '',
      popularity: popularity ?? -1,
      profilePath: profilePath ?? '',
      creditId: creditId ?? '',
      department: department ?? '',
      job: job ?? '',
    );
  }
}
