// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NowPlayingMovie _$NowPlayingMovieFromJson(Map<String, dynamic> json) {
  return _NowPlayingMovie.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingMovie {
  num get movieId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get voteAverage => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingMovieCopyWith<NowPlayingMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMovieCopyWith<$Res> {
  factory $NowPlayingMovieCopyWith(
          NowPlayingMovie value, $Res Function(NowPlayingMovie) then) =
      _$NowPlayingMovieCopyWithImpl<$Res, NowPlayingMovie>;
  @useResult
  $Res call({num movieId, String title, num voteAverage, String posterPath});
}

/// @nodoc
class _$NowPlayingMovieCopyWithImpl<$Res, $Val extends NowPlayingMovie>
    implements $NowPlayingMovieCopyWith<$Res> {
  _$NowPlayingMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? posterPath = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingMovieImplCopyWith<$Res>
    implements $NowPlayingMovieCopyWith<$Res> {
  factory _$$NowPlayingMovieImplCopyWith(_$NowPlayingMovieImpl value,
          $Res Function(_$NowPlayingMovieImpl) then) =
      __$$NowPlayingMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num movieId, String title, num voteAverage, String posterPath});
}

/// @nodoc
class __$$NowPlayingMovieImplCopyWithImpl<$Res>
    extends _$NowPlayingMovieCopyWithImpl<$Res, _$NowPlayingMovieImpl>
    implements _$$NowPlayingMovieImplCopyWith<$Res> {
  __$$NowPlayingMovieImplCopyWithImpl(
      _$NowPlayingMovieImpl _value, $Res Function(_$NowPlayingMovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? posterPath = null,
  }) {
    return _then(_$NowPlayingMovieImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingMovieImpl implements _NowPlayingMovie {
  const _$NowPlayingMovieImpl(
      {required this.movieId,
      required this.title,
      required this.voteAverage,
      required this.posterPath});

  factory _$NowPlayingMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingMovieImplFromJson(json);

  @override
  final num movieId;
  @override
  final String title;
  @override
  final num voteAverage;
  @override
  final String posterPath;

  @override
  String toString() {
    return 'NowPlayingMovie(movieId: $movieId, title: $title, voteAverage: $voteAverage, posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingMovieImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, movieId, title, voteAverage, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingMovieImplCopyWith<_$NowPlayingMovieImpl> get copyWith =>
      __$$NowPlayingMovieImplCopyWithImpl<_$NowPlayingMovieImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingMovieImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingMovie implements NowPlayingMovie {
  const factory _NowPlayingMovie(
      {required final num movieId,
      required final String title,
      required final num voteAverage,
      required final String posterPath}) = _$NowPlayingMovieImpl;

  factory _NowPlayingMovie.fromJson(Map<String, dynamic> json) =
      _$NowPlayingMovieImpl.fromJson;

  @override
  num get movieId;
  @override
  String get title;
  @override
  num get voteAverage;
  @override
  String get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingMovieImplCopyWith<_$NowPlayingMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
