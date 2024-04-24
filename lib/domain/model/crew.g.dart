// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrewImpl _$$CrewImplFromJson(Map<String, dynamic> json) => _$CrewImpl(
      adult: json['adult'] as bool,
      gender: json['gender'] as num,
      id: json['id'] as num,
      knownForDepartment: json['knownForDepartment'] as String,
      name: json['name'] as String,
      originalName: json['originalName'] as String,
      popularity: json['popularity'] as num,
      profilePath: json['profilePath'] as String,
      creditId: json['creditId'] as String,
      department: json['department'] as String,
      job: json['job'] as String,
    );

Map<String, dynamic> _$$CrewImplToJson(_$CrewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'knownForDepartment': instance.knownForDepartment,
      'name': instance.name,
      'originalName': instance.originalName,
      'popularity': instance.popularity,
      'profilePath': instance.profilePath,
      'creditId': instance.creditId,
      'department': instance.department,
      'job': instance.job,
    };
