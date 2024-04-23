import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  const factory Crew({
    required bool adult,
    required num gender,
    required num id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required num popularity,
    required String profilePath,
    required String creditId,
    required String department,
    required String job,
  }) = _Crew;

  factory Crew.fromJson(Map<String, Object?> json) => _$CrewFromJson(json);
}
