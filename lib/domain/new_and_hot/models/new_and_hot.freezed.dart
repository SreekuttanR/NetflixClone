// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_and_hot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewAndHot _$NewAndHotFromJson(Map<String, dynamic> json) {
  return _NewAndHot.fromJson(json);
}

/// @nodoc
mixin _$NewAndHot {
// ignore: invalid_annotation_target
  @JsonKey(name: 'poster_path')
  String? get posterPath =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'title')
  String? get title =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'overview')
  String? get overview =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewAndHotCopyWith<NewAndHot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAndHotCopyWith<$Res> {
  factory $NewAndHotCopyWith(NewAndHot value, $Res Function(NewAndHot) then) =
      _$NewAndHotCopyWithImpl<$Res, NewAndHot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$NewAndHotCopyWithImpl<$Res, $Val extends NewAndHot>
    implements $NewAndHotCopyWith<$Res> {
  _$NewAndHotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewAndHotImplCopyWith<$Res>
    implements $NewAndHotCopyWith<$Res> {
  factory _$$NewAndHotImplCopyWith(
          _$NewAndHotImpl value, $Res Function(_$NewAndHotImpl) then) =
      __$$NewAndHotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$$NewAndHotImplCopyWithImpl<$Res>
    extends _$NewAndHotCopyWithImpl<$Res, _$NewAndHotImpl>
    implements _$$NewAndHotImplCopyWith<$Res> {
  __$$NewAndHotImplCopyWithImpl(
      _$NewAndHotImpl _value, $Res Function(_$NewAndHotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$NewAndHotImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewAndHotImpl implements _NewAndHot {
  const _$NewAndHotImpl(
      {@JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'overview') required this.overview,
      @JsonKey(name: 'release_date') required this.releaseDate});

  factory _$NewAndHotImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewAndHotImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'title')
  final String? title;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'overview')
  final String? overview;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @override
  String toString() {
    return 'NewAndHot(posterPath: $posterPath, title: $title, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewAndHotImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, posterPath, title, overview, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAndHotImplCopyWith<_$NewAndHotImpl> get copyWith =>
      __$$NewAndHotImplCopyWithImpl<_$NewAndHotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewAndHotImplToJson(
      this,
    );
  }
}

abstract class _NewAndHot implements NewAndHot {
  const factory _NewAndHot(
          {@JsonKey(name: 'poster_path') required final String? posterPath,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'overview') required final String? overview,
          @JsonKey(name: 'release_date') required final String? releaseDate}) =
      _$NewAndHotImpl;

  factory _NewAndHot.fromJson(Map<String, dynamic> json) =
      _$NewAndHotImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'title')
  String? get title;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'overview')
  String? get overview;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$NewAndHotImplCopyWith<_$NewAndHotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
