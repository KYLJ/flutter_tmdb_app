// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCreditImpl _$$MovieCreditImplFromJson(Map<String, dynamic> json) =>
    _$MovieCreditImpl(
      id: json['id'] as num,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieCreditImplToJson(_$MovieCreditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };
