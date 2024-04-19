import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/domain/model/spoken_language.dart';

extension SpokenLanguageDtoMapper on SpokenLanguageDto {
  SpokenLanguage toSpokenLanguage() {
    return SpokenLanguage(
      englishName: englishName ?? '',
      iso6391: iso6391 ?? '',
      name: name ?? '',
    );
  }
}
