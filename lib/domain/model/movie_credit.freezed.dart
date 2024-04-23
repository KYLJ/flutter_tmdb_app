// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieCredit _$MovieCreditFromJson(Map<String, dynamic> json) {
  return _MovieCredit.fromJson(json);
}

/// @nodoc
mixin _$MovieCredit {
  num get id => throw _privateConstructorUsedError;
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Crew> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditCopyWith<MovieCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditCopyWith<$Res> {
  factory $MovieCreditCopyWith(
          MovieCredit value, $Res Function(MovieCredit) then) =
      _$MovieCreditCopyWithImpl<$Res, MovieCredit>;
  @useResult
  $Res call({num id, List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class _$MovieCreditCopyWithImpl<$Res, $Val extends MovieCredit>
    implements $MovieCreditCopyWith<$Res> {
  _$MovieCreditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCreditImplCopyWith<$Res>
    implements $MovieCreditCopyWith<$Res> {
  factory _$$MovieCreditImplCopyWith(
          _$MovieCreditImpl value, $Res Function(_$MovieCreditImpl) then) =
      __$$MovieCreditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num id, List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class __$$MovieCreditImplCopyWithImpl<$Res>
    extends _$MovieCreditCopyWithImpl<$Res, _$MovieCreditImpl>
    implements _$$MovieCreditImplCopyWith<$Res> {
  __$$MovieCreditImplCopyWithImpl(
      _$MovieCreditImpl _value, $Res Function(_$MovieCreditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$MovieCreditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCreditImpl implements _MovieCredit {
  const _$MovieCreditImpl(
      {required this.id,
      required final List<Cast> cast,
      required final List<Crew> crew})
      : _cast = cast,
        _crew = crew;

  factory _$MovieCreditImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCreditImplFromJson(json);

  @override
  final num id;
  final List<Cast> _cast;
  @override
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Crew> _crew;
  @override
  List<Crew> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'MovieCredit(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditImplCopyWith<_$MovieCreditImpl> get copyWith =>
      __$$MovieCreditImplCopyWithImpl<_$MovieCreditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCreditImplToJson(
      this,
    );
  }
}

abstract class _MovieCredit implements MovieCredit {
  const factory _MovieCredit(
      {required final num id,
      required final List<Cast> cast,
      required final List<Crew> crew}) = _$MovieCreditImpl;

  factory _MovieCredit.fromJson(Map<String, dynamic> json) =
      _$MovieCreditImpl.fromJson;

  @override
  num get id;
  @override
  List<Cast> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$$MovieCreditImplCopyWith<_$MovieCreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
