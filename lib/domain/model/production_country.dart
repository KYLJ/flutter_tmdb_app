import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_country.freezed.dart';
part 'production_country.g.dart';

@freezed
class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    required String iso31661,
    required String name,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Map<String, Object?> json) =>
      _$ProductionCountryFromJson(json);
}
