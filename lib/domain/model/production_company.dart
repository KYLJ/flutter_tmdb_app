import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company.freezed.dart';
part 'production_company.g.dart';

@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    required num id,
    required String logoPath,
    required String name,
    required String originCountry,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, Object?> json) =>
      _$ProductionCompanyFromJson(json);
}
