// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingMovieImpl _$$NowPlayingMovieImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingMovieImpl(
      movieId: json['movieId'] as num,
      title: json['title'] as String,
      voteAverage: json['voteAverage'] as num,
      posterPath: json['posterPath'] as String,
    );

Map<String, dynamic> _$$NowPlayingMovieImplToJson(
        _$NowPlayingMovieImpl instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'title': instance.title,
      'voteAverage': instance.voteAverage,
      'posterPath': instance.posterPath,
    };
