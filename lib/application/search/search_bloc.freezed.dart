// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
    required TResult Function(String movieQuery) getSearchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
    TResult? Function(String movieQuery)? getSearchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    TResult Function(String movieQuery)? getSearchImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
    required TResult Function(_GetSearchImage value) getSearchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult? Function(_GetSearchImage value)? getSearchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult Function(_GetSearchImage value)? getSearchImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadsImageImplCopyWith<$Res> {
  factory _$$GetDownloadsImageImplCopyWith(_$GetDownloadsImageImpl value,
          $Res Function(_$GetDownloadsImageImpl) then) =
      __$$GetDownloadsImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsImageImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetDownloadsImageImpl>
    implements _$$GetDownloadsImageImplCopyWith<$Res> {
  __$$GetDownloadsImageImplCopyWithImpl(_$GetDownloadsImageImpl _value,
      $Res Function(_$GetDownloadsImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadsImageImpl implements _GetDownloadsImage {
  const _$GetDownloadsImageImpl();

  @override
  String toString() {
    return 'SearchEvent.getDownloadsImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
    required TResult Function(String movieQuery) getSearchImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
    TResult? Function(String movieQuery)? getSearchImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    TResult Function(String movieQuery)? getSearchImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
    required TResult Function(_GetSearchImage value) getSearchImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult? Function(_GetSearchImage value)? getSearchImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult Function(_GetSearchImage value)? getSearchImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements SearchEvent {
  const factory _GetDownloadsImage() = _$GetDownloadsImageImpl;
}

/// @nodoc
abstract class _$$GetSearchImageImplCopyWith<$Res> {
  factory _$$GetSearchImageImplCopyWith(_$GetSearchImageImpl value,
          $Res Function(_$GetSearchImageImpl) then) =
      __$$GetSearchImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$GetSearchImageImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetSearchImageImpl>
    implements _$$GetSearchImageImplCopyWith<$Res> {
  __$$GetSearchImageImplCopyWithImpl(
      _$GetSearchImageImpl _value, $Res Function(_$GetSearchImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$GetSearchImageImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchImageImpl implements _GetSearchImage {
  const _$GetSearchImageImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.getSearchImage(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchImageImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchImageImplCopyWith<_$GetSearchImageImpl> get copyWith =>
      __$$GetSearchImageImplCopyWithImpl<_$GetSearchImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
    required TResult Function(String movieQuery) getSearchImage,
  }) {
    return getSearchImage(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
    TResult? Function(String movieQuery)? getSearchImage,
  }) {
    return getSearchImage?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    TResult Function(String movieQuery)? getSearchImage,
    required TResult orElse(),
  }) {
    if (getSearchImage != null) {
      return getSearchImage(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
    required TResult Function(_GetSearchImage value) getSearchImage,
  }) {
    return getSearchImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult? Function(_GetSearchImage value)? getSearchImage,
  }) {
    return getSearchImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    TResult Function(_GetSearchImage value)? getSearchImage,
    required TResult orElse(),
  }) {
    if (getSearchImage != null) {
      return getSearchImage(this);
    }
    return orElse();
  }
}

abstract class _GetSearchImage implements SearchEvent {
  const factory _GetSearchImage({required final String movieQuery}) =
      _$GetSearchImageImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$GetSearchImageImplCopyWith<_$GetSearchImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
//search idle
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccesOption =>
          throw _privateConstructorUsedError; //search result
  List<Search>? get search => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Search>>> get searchFailureOrSuccesOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      List<Search>? search,
      Option<Either<MainFailure, List<Search>>> searchFailureOrSuccesOption});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccesOption = null,
    Object? search = freezed,
    Object? searchFailureOrSuccesOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as List<Search>?,
      searchFailureOrSuccesOption: null == searchFailureOrSuccesOption
          ? _value.searchFailureOrSuccesOption
          : searchFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Search>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      List<Search>? search,
      Option<Either<MainFailure, List<Search>>> searchFailureOrSuccesOption});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccesOption = null,
    Object? search = freezed,
    Object? searchFailureOrSuccesOption = null,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
      search: freezed == search
          ? _value._search
          : search // ignore: cast_nullable_to_non_nullable
              as List<Search>?,
      searchFailureOrSuccesOption: null == searchFailureOrSuccesOption
          ? _value.searchFailureOrSuccesOption
          : searchFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Search>>>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.isLoading,
      required this.hasError,
      required final List<Downloads>? downloads,
      required this.downloadsFailureOrSuccesOption,
      required final List<Search>? search,
      required this.searchFailureOrSuccesOption})
      : _downloads = downloads,
        _search = search;

//search idle
  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<Downloads>? _downloads;
  @override
  List<Downloads>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadsFailureOrSuccesOption;
//search result
  final List<Search>? _search;
//search result
  @override
  List<Search>? get search {
    final value = _search;
    if (value == null) return null;
    if (_search is EqualUnmodifiableListView) return _search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<Search>>> searchFailureOrSuccesOption;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, hasError: $hasError, downloads: $downloads, downloadsFailureOrSuccesOption: $downloadsFailureOrSuccesOption, search: $search, searchFailureOrSuccesOption: $searchFailureOrSuccesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downloadsFailureOrSuccesOption,
                    downloadsFailureOrSuccesOption) ||
                other.downloadsFailureOrSuccesOption ==
                    downloadsFailureOrSuccesOption) &&
            const DeepCollectionEquality().equals(other._search, _search) &&
            (identical(other.searchFailureOrSuccesOption,
                    searchFailureOrSuccesOption) ||
                other.searchFailureOrSuccesOption ==
                    searchFailureOrSuccesOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      const DeepCollectionEquality().hash(_downloads),
      downloadsFailureOrSuccesOption,
      const DeepCollectionEquality().hash(_search),
      searchFailureOrSuccesOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool hasError,
      required final List<Downloads>? downloads,
      required final Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      required final List<Search>? search,
      required final Option<Either<MainFailure, List<Search>>>
          searchFailureOrSuccesOption}) = _$SearchStateImpl;

  @override //search idle
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<Downloads>? get downloads;
  @override
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccesOption;
  @override //search result
  List<Search>? get search;
  @override
  Option<Either<MainFailure, List<Search>>> get searchFailureOrSuccesOption;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
