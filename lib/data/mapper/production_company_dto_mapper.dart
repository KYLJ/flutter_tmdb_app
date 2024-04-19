import 'package:flutter_tmdb_app/data/dto/movie_details_dto.dart';
import 'package:flutter_tmdb_app/domain/model/production_company.dart';

extension ProductionCompanyDtoMapper on ProductionCompanyDto {
  ProductionCompany toProductionCompany() {
    return ProductionCompany(
      id: id ?? -1,
      logoPath: logoPath ?? '',
      name: name ?? '',
      originCountry: originCountry ?? '',
    );
  }
}
