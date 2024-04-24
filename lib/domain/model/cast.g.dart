// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastImpl _$$CastImplFromJson(Map<String, dynamic> json) => _$CastImpl(
      adult: json['adult'] as bool,
      gender: json['gender'] as num,
      id: json['id'] as num,
      knownForDepartment: json['knownForDepartment'] as String,
      name: json['name'] as String,
      originalName: json['originalName'] as String,
      popularity: json['popularity'] as num,
      profilePath: json['profilePath'] as String,
      castId: json['castId'] as num,
      character: json['character'] as String,
      creditId: json['creditId'] as String,
      order: json['order'] as num,
    );

Map<String, dynamic> _$$CastImplToJson(_$CastImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'knownForDepartment': instance.knownForDepartment,
      'name': instance.name,
      'originalName': instance.originalName,
      'popularity': instance.popularity,
      'profilePath': instance.profilePath,
      'castId': instance.castId,
      'character': instance.character,
      'creditId': instance.creditId,
      'order': instance.order,
    };
