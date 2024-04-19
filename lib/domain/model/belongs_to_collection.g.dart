// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BelongsToCollectionImpl _$$BelongsToCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$BelongsToCollectionImpl(
      id: json['id'] as num,
      name: json['name'] as String,
      posterPath: json['posterPath'] as String,
      backdropPath: json['backdropPath'] as String,
    );

Map<String, dynamic> _$$BelongsToCollectionImplToJson(
        _$BelongsToCollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
    };
