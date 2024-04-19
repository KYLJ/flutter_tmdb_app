import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/data/mapper/belongs_to_collection_dto_mapper.dart';
import 'package:flutter_tmdb_app/data/mapper/genre_dto_mappper.dart';
import 'package:flutter_tmdb_app/data/mapper/production_company_dto_mapper.dart';
import 'package:flutter_tmdb_app/data/mapper/production_country_dto_mapper.dart';
import 'package:flutter_tmdb_app/data/mapper/spoken_language_dto_mapper.dart';
import 'package:flutter_tmdb_app/domain/model/belongs_to_collection.dart';
import 'package:flutter_tmdb_app/domain/model/movie_details.dart';

extension MovieDetailsDtoMapper on MovieDetailsDto {
  MovieDetails toMovieDetails() {
    return MovieDetails(
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      belongsToCollection: belongsToCollectionDto?.toBelongsToCollection() ??
          BelongsToCollection.defaultObject,
      budget: budget ?? -1,
      genreList: genreDtoList?.map((e) => e.toGenre()).toList() ?? [],
      homepage: homepage ?? '',
      id: id ?? -1,
      imdbId: imdbId ?? '',
      originCountryList: originCountryList ?? <String>[],
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? -1,
      posterPath: posterPath ?? '',
      productionCompanyList: productionCompanyDtoList
              ?.map((e) => e.toProductionCompany())
              .toList() ??
          [],
      productionCountryList: productionCountryDtoList
              ?.map((e) => e.toProductionCountry())
              .toList() ??
          [],
      releaseDate: releaseDate ?? '',
      revenue: revenue ?? -1,
      runtime: runtime ?? -1,
      spokenLanguageList:
          spokenLanguageDtoList?.map((e) => e.toSpokenLanguage()).toList() ??
              [],
      status: status ?? '',
      tagline: tagline ?? '',
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? -1,
      voteCount: voteCount ?? -1,
    );
  }
}
