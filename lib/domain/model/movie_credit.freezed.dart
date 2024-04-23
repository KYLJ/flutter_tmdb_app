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
  List<Cast> get castList => throw _privateConstructorUsedError;
  List<Crew> get crewList => throw _privateConstructorUsedError;

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
  $Res call({num id, List<Cast> castList, List<Crew> crewList});
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
    Object? castList = null,
    Object? crewList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      castList: null == castList
          ? _value.castList
          : castList // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crewList: null == crewList
          ? _value.crewList
          : crewList // ignore: cast_nullable_to_non_nullable
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
  $Res call({num id, List<Cast> castList, List<Crew> crewList});
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
    Object? castList = null,
    Object? crewList = null,
  }) {
    return _then(_$MovieCreditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      castList: null == castList
          ? _value._castList
          : castList // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crewList: null == crewList
          ? _value._crewList
          : crewList // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCreditImpl implements _MovieCredit {
  const _$MovieCreditImpl(
      {required this.id,
      required final List<Cast> castList,
      required final List<Crew> crewList})
      : _castList = castList,
        _crewList = crewList;

  factory _$MovieCreditImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCreditImplFromJson(json);

  @override
  final num id;
  final List<Cast> _castList;
  @override
  List<Cast> get castList {
    if (_castList is EqualUnmodifiableListView) return _castList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_castList);
  }

  final List<Crew> _crewList;
  @override
  List<Crew> get crewList {
    if (_crewList is EqualUnmodifiableListView) return _crewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crewList);
  }

  @override
  String toString() {
    return 'MovieCredit(id: $id, castList: $castList, crewList: $crewList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._castList, _castList) &&
            const DeepCollectionEquality().equals(other._crewList, _crewList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_castList),
      const DeepCollectionEquality().hash(_crewList));

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
      required final List<Cast> castList,
      required final List<Crew> crewList}) = _$MovieCreditImpl;

  factory _MovieCredit.fromJson(Map<String, dynamic> json) =
      _$MovieCreditImpl.fromJson;

  @override
  num get id;
  @override
  List<Cast> get castList;
  @override
  List<Crew> get crewList;
  @override
  @JsonKey(ignore: true)
  _$$MovieCreditImplCopyWith<_$MovieCreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
