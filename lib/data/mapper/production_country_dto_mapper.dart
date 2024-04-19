import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/domain/model/production_country.dart';

extension ProductionCountryDtoMapper on ProductionCountryDto {
  ProductionCountry toProductionCountry() {
    return ProductionCountry(
      iso31661: iso31661 ?? '',
      name: name ?? '',
    );
  }
}
