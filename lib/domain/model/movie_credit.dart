import 'package:flutter_tmdb_app/domain/model/cast.dart';
import 'package:flutter_tmdb_app/domain/model/crew.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credit.freezed.dart';
part 'movie_credit.g.dart';

@freezed
class MovieCredit with _$MovieCredit {
  const factory MovieCredit({
    required num id,
    required List<Cast> cast,
    required List<Crew> crew,
  }) = _MovieCredit;

  factory MovieCredit.fromJson(Map<String, Object?> json) =>
      _$MovieCreditFromJson(json);
}
