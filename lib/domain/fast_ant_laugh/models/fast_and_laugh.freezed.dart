// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_and_laugh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FastAndLaugh _$FastAndLaughFromJson(Map<String, dynamic> json) {
  return _FastAndLaugh.fromJson(json);
}

/// @nodoc
mixin _$FastAndLaugh {
// ignore: invalid_annotation_target
  @JsonKey(name: 'sources')
  String? get sources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FastAndLaughCopyWith<FastAndLaugh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastAndLaughCopyWith<$Res> {
  factory $FastAndLaughCopyWith(
          FastAndLaugh value, $Res Function(FastAndLaugh) then) =
      _$FastAndLaughCopyWithImpl<$Res, FastAndLaugh>;
  @useResult
  $Res call({@JsonKey(name: 'sources') String? sources});
}

/// @nodoc
class _$FastAndLaughCopyWithImpl<$Res, $Val extends FastAndLaugh>
    implements $FastAndLaughCopyWith<$Res> {
  _$FastAndLaughCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(_value.copyWith(
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FastAndLaughImplCopyWith<$Res>
    implements $FastAndLaughCopyWith<$Res> {
  factory _$$FastAndLaughImplCopyWith(
          _$FastAndLaughImpl value, $Res Function(_$FastAndLaughImpl) then) =
      __$$FastAndLaughImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'sources') String? sources});
}

/// @nodoc
class __$$FastAndLaughImplCopyWithImpl<$Res>
    extends _$FastAndLaughCopyWithImpl<$Res, _$FastAndLaughImpl>
    implements _$$FastAndLaughImplCopyWith<$Res> {
  __$$FastAndLaughImplCopyWithImpl(
      _$FastAndLaughImpl _value, $Res Function(_$FastAndLaughImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = freezed,
  }) {
    return _then(_$FastAndLaughImpl(
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FastAndLaughImpl implements _FastAndLaugh {
  const _$FastAndLaughImpl({@JsonKey(name: 'sources') required this.sources});

  factory _$FastAndLaughImpl.fromJson(Map<String, dynamic> json) =>
      _$$FastAndLaughImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'sources')
  final String? sources;

  @override
  String toString() {
    return 'FastAndLaugh(sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastAndLaughImpl &&
            (identical(other.sources, sources) || other.sources == sources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FastAndLaughImplCopyWith<_$FastAndLaughImpl> get copyWith =>
      __$$FastAndLaughImplCopyWithImpl<_$FastAndLaughImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FastAndLaughImplToJson(
      this,
    );
  }
}

abstract class _FastAndLaugh implements FastAndLaugh {
  const factory _FastAndLaugh(
          {@JsonKey(name: 'sources') required final String? sources}) =
      _$FastAndLaughImpl;

  factory _FastAndLaugh.fromJson(Map<String, dynamic> json) =
      _$FastAndLaughImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'sources')
  String? get sources;
  @override
  @JsonKey(ignore: true)
  _$$FastAndLaughImplCopyWith<_$FastAndLaughImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
