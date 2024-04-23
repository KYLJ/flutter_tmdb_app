import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required bool adult,
    required num gender,
    required num id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required num popularity,
    required String profilePath,
    required num castId,
    required String character,
    required String creditId,
    required num order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, Object?> json) => _$CastFromJson(json);
}
