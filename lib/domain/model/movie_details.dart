import 'package:flutter_tmdb_app/domain/model/belongs_to_collection.dart';
import 'package:flutter_tmdb_app/domain/model/genre.dart';
import 'package:flutter_tmdb_app/domain/model/production_company.dart';
import 'package:flutter_tmdb_app/domain/model/production_country.dart';
import 'package:flutter_tmdb_app/domain/model/spoken_language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required bool adult,
    required String backdropPath,
    required BelongsToCollection belongsToCollection,
    required num budget,
    required List<Genre> genreList,
    required String homepage,
    required num id,
    required String imdbId,
    required List<String> originCountry,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required num popularity,
    required String posterPath,
    required List<ProductionCompany> productionCompanyList,
    required List<ProductionCountry> productionCountryList,
    required String releaseDate,
    required num revenue,
    required num runtime,
    required List<SpokenLanguage> spokenLanguageList,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required num voteAverage,
    required num voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsFromJson(json);
}
