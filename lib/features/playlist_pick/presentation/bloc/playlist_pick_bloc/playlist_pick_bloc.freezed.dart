// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_pick_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaylistPickEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequested,
    required TResult Function(String? query) searchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRequested,
    TResult? Function(String? query)? searchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequested,
    TResult Function(String? query)? searchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistPickRequested value) getRequested,
    required TResult Function(SearchPlaylistPickRequested value)
        searchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistPickRequested value)? getRequested,
    TResult? Function(SearchPlaylistPickRequested value)? searchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistPickRequested value)? getRequested,
    TResult Function(SearchPlaylistPickRequested value)? searchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPickEventCopyWith<$Res> {
  factory $PlaylistPickEventCopyWith(
          PlaylistPickEvent value, $Res Function(PlaylistPickEvent) then) =
      _$PlaylistPickEventCopyWithImpl<$Res, PlaylistPickEvent>;
}

/// @nodoc
class _$PlaylistPickEventCopyWithImpl<$Res, $Val extends PlaylistPickEvent>
    implements $PlaylistPickEventCopyWith<$Res> {
  _$PlaylistPickEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistPickEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPlaylistPickRequestedImplCopyWith<$Res> {
  factory _$$GetPlaylistPickRequestedImplCopyWith(
          _$GetPlaylistPickRequestedImpl value,
          $Res Function(_$GetPlaylistPickRequestedImpl) then) =
      __$$GetPlaylistPickRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistPickRequestedImplCopyWithImpl<$Res>
    extends _$PlaylistPickEventCopyWithImpl<$Res,
        _$GetPlaylistPickRequestedImpl>
    implements _$$GetPlaylistPickRequestedImplCopyWith<$Res> {
  __$$GetPlaylistPickRequestedImplCopyWithImpl(
      _$GetPlaylistPickRequestedImpl _value,
      $Res Function(_$GetPlaylistPickRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPlaylistPickRequestedImpl implements GetPlaylistPickRequested {
  const _$GetPlaylistPickRequestedImpl();

  @override
  String toString() {
    return 'PlaylistPickEvent.getRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaylistPickRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequested,
    required TResult Function(String? query) searchRequested,
  }) {
    return getRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRequested,
    TResult? Function(String? query)? searchRequested,
  }) {
    return getRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequested,
    TResult Function(String? query)? searchRequested,
    required TResult orElse(),
  }) {
    if (getRequested != null) {
      return getRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistPickRequested value) getRequested,
    required TResult Function(SearchPlaylistPickRequested value)
        searchRequested,
  }) {
    return getRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistPickRequested value)? getRequested,
    TResult? Function(SearchPlaylistPickRequested value)? searchRequested,
  }) {
    return getRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistPickRequested value)? getRequested,
    TResult Function(SearchPlaylistPickRequested value)? searchRequested,
    required TResult orElse(),
  }) {
    if (getRequested != null) {
      return getRequested(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistPickRequested implements PlaylistPickEvent {
  const factory GetPlaylistPickRequested() = _$GetPlaylistPickRequestedImpl;
}

/// @nodoc
abstract class _$$SearchPlaylistPickRequestedImplCopyWith<$Res> {
  factory _$$SearchPlaylistPickRequestedImplCopyWith(
          _$SearchPlaylistPickRequestedImpl value,
          $Res Function(_$SearchPlaylistPickRequestedImpl) then) =
      __$$SearchPlaylistPickRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchPlaylistPickRequestedImplCopyWithImpl<$Res>
    extends _$PlaylistPickEventCopyWithImpl<$Res,
        _$SearchPlaylistPickRequestedImpl>
    implements _$$SearchPlaylistPickRequestedImplCopyWith<$Res> {
  __$$SearchPlaylistPickRequestedImplCopyWithImpl(
      _$SearchPlaylistPickRequestedImpl _value,
      $Res Function(_$SearchPlaylistPickRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchPlaylistPickRequestedImpl(
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchPlaylistPickRequestedImpl implements SearchPlaylistPickRequested {
  const _$SearchPlaylistPickRequestedImpl(this.query);

  @override
  final String? query;

  @override
  String toString() {
    return 'PlaylistPickEvent.searchRequested(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPlaylistPickRequestedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of PlaylistPickEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPlaylistPickRequestedImplCopyWith<_$SearchPlaylistPickRequestedImpl>
      get copyWith => __$$SearchPlaylistPickRequestedImplCopyWithImpl<
          _$SearchPlaylistPickRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequested,
    required TResult Function(String? query) searchRequested,
  }) {
    return searchRequested(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRequested,
    TResult? Function(String? query)? searchRequested,
  }) {
    return searchRequested?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequested,
    TResult Function(String? query)? searchRequested,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaylistPickRequested value) getRequested,
    required TResult Function(SearchPlaylistPickRequested value)
        searchRequested,
  }) {
    return searchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPlaylistPickRequested value)? getRequested,
    TResult? Function(SearchPlaylistPickRequested value)? searchRequested,
  }) {
    return searchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaylistPickRequested value)? getRequested,
    TResult Function(SearchPlaylistPickRequested value)? searchRequested,
    required TResult orElse(),
  }) {
    if (searchRequested != null) {
      return searchRequested(this);
    }
    return orElse();
  }
}

abstract class SearchPlaylistPickRequested implements PlaylistPickEvent {
  const factory SearchPlaylistPickRequested(final String? query) =
      _$SearchPlaylistPickRequestedImpl;

  String? get query;

  /// Create a copy of PlaylistPickEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPlaylistPickRequestedImplCopyWith<_$SearchPlaylistPickRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistPickState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPickStateCopyWith<$Res> {
  factory $PlaylistPickStateCopyWith(
          PlaylistPickState value, $Res Function(PlaylistPickState) then) =
      _$PlaylistPickStateCopyWithImpl<$Res, PlaylistPickState>;
}

/// @nodoc
class _$PlaylistPickStateCopyWithImpl<$Res, $Val extends PlaylistPickState>
    implements $PlaylistPickStateCopyWith<$Res> {
  _$PlaylistPickStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlaylistPickInitialImplCopyWith<$Res> {
  factory _$$PlaylistPickInitialImplCopyWith(_$PlaylistPickInitialImpl value,
          $Res Function(_$PlaylistPickInitialImpl) then) =
      __$$PlaylistPickInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistPickInitialImplCopyWithImpl<$Res>
    extends _$PlaylistPickStateCopyWithImpl<$Res, _$PlaylistPickInitialImpl>
    implements _$$PlaylistPickInitialImplCopyWith<$Res> {
  __$$PlaylistPickInitialImplCopyWithImpl(_$PlaylistPickInitialImpl _value,
      $Res Function(_$PlaylistPickInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlaylistPickInitialImpl implements PlaylistPickInitial {
  const _$PlaylistPickInitialImpl();

  @override
  String toString() {
    return 'PlaylistPickState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlaylistPickInitial implements PlaylistPickState {
  const factory PlaylistPickInitial() = _$PlaylistPickInitialImpl;
}

/// @nodoc
abstract class _$$PlaylistPickLoadingImplCopyWith<$Res> {
  factory _$$PlaylistPickLoadingImplCopyWith(_$PlaylistPickLoadingImpl value,
          $Res Function(_$PlaylistPickLoadingImpl) then) =
      __$$PlaylistPickLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistPickLoadingImplCopyWithImpl<$Res>
    extends _$PlaylistPickStateCopyWithImpl<$Res, _$PlaylistPickLoadingImpl>
    implements _$$PlaylistPickLoadingImplCopyWith<$Res> {
  __$$PlaylistPickLoadingImplCopyWithImpl(_$PlaylistPickLoadingImpl _value,
      $Res Function(_$PlaylistPickLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlaylistPickLoadingImpl implements PlaylistPickLoading {
  const _$PlaylistPickLoadingImpl();

  @override
  String toString() {
    return 'PlaylistPickState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlaylistPickLoading implements PlaylistPickState {
  const factory PlaylistPickLoading() = _$PlaylistPickLoadingImpl;
}

/// @nodoc
abstract class _$$PlaylistPickLoadedImplCopyWith<$Res> {
  factory _$$PlaylistPickLoadedImplCopyWith(_$PlaylistPickLoadedImpl value,
          $Res Function(_$PlaylistPickLoadedImpl) then) =
      __$$PlaylistPickLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaylistPick> data});
}

/// @nodoc
class __$$PlaylistPickLoadedImplCopyWithImpl<$Res>
    extends _$PlaylistPickStateCopyWithImpl<$Res, _$PlaylistPickLoadedImpl>
    implements _$$PlaylistPickLoadedImplCopyWith<$Res> {
  __$$PlaylistPickLoadedImplCopyWithImpl(_$PlaylistPickLoadedImpl _value,
      $Res Function(_$PlaylistPickLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PlaylistPickLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PlaylistPick>,
    ));
  }
}

/// @nodoc

class _$PlaylistPickLoadedImpl implements PlaylistPickLoaded {
  const _$PlaylistPickLoadedImpl(final List<PlaylistPick> data) : _data = data;

  final List<PlaylistPick> _data;
  @override
  List<PlaylistPick> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PlaylistPickState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPickLoadedImplCopyWith<_$PlaylistPickLoadedImpl> get copyWith =>
      __$$PlaylistPickLoadedImplCopyWithImpl<_$PlaylistPickLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlaylistPickLoaded implements PlaylistPickState {
  const factory PlaylistPickLoaded(final List<PlaylistPick> data) =
      _$PlaylistPickLoadedImpl;

  List<PlaylistPick> get data;

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistPickLoadedImplCopyWith<_$PlaylistPickLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistPickSearchedImplCopyWith<$Res> {
  factory _$$PlaylistPickSearchedImplCopyWith(_$PlaylistPickSearchedImpl value,
          $Res Function(_$PlaylistPickSearchedImpl) then) =
      __$$PlaylistPickSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaylistPick> result});
}

/// @nodoc
class __$$PlaylistPickSearchedImplCopyWithImpl<$Res>
    extends _$PlaylistPickStateCopyWithImpl<$Res, _$PlaylistPickSearchedImpl>
    implements _$$PlaylistPickSearchedImplCopyWith<$Res> {
  __$$PlaylistPickSearchedImplCopyWithImpl(_$PlaylistPickSearchedImpl _value,
      $Res Function(_$PlaylistPickSearchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$PlaylistPickSearchedImpl(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PlaylistPick>,
    ));
  }
}

/// @nodoc

class _$PlaylistPickSearchedImpl implements PlaylistPickSearched {
  const _$PlaylistPickSearchedImpl(final List<PlaylistPick> result)
      : _result = result;

  final List<PlaylistPick> _result;
  @override
  List<PlaylistPick> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'PlaylistPickState.searched(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickSearchedImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPickSearchedImplCopyWith<_$PlaylistPickSearchedImpl>
      get copyWith =>
          __$$PlaylistPickSearchedImplCopyWithImpl<_$PlaylistPickSearchedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) {
    return searched(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) {
    return searched?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class PlaylistPickSearched implements PlaylistPickState {
  const factory PlaylistPickSearched(final List<PlaylistPick> result) =
      _$PlaylistPickSearchedImpl;

  List<PlaylistPick> get result;

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistPickSearchedImplCopyWith<_$PlaylistPickSearchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistPickFailureImplCopyWith<$Res> {
  factory _$$PlaylistPickFailureImplCopyWith(_$PlaylistPickFailureImpl value,
          $Res Function(_$PlaylistPickFailureImpl) then) =
      __$$PlaylistPickFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlaylistPickFailureImplCopyWithImpl<$Res>
    extends _$PlaylistPickStateCopyWithImpl<$Res, _$PlaylistPickFailureImpl>
    implements _$$PlaylistPickFailureImplCopyWith<$Res> {
  __$$PlaylistPickFailureImplCopyWithImpl(_$PlaylistPickFailureImpl _value,
      $Res Function(_$PlaylistPickFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PlaylistPickFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaylistPickFailureImpl implements PlaylistPickFailure {
  const _$PlaylistPickFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlaylistPickState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPickFailureImplCopyWith<_$PlaylistPickFailureImpl> get copyWith =>
      __$$PlaylistPickFailureImplCopyWithImpl<_$PlaylistPickFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaylistPick> data) loaded,
    required TResult Function(List<PlaylistPick> result) searched,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaylistPick> data)? loaded,
    TResult? Function(List<PlaylistPick> result)? searched,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaylistPick> data)? loaded,
    TResult Function(List<PlaylistPick> result)? searched,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistPickInitial value) initial,
    required TResult Function(PlaylistPickLoading value) loading,
    required TResult Function(PlaylistPickLoaded value) loaded,
    required TResult Function(PlaylistPickSearched value) searched,
    required TResult Function(PlaylistPickFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistPickInitial value)? initial,
    TResult? Function(PlaylistPickLoading value)? loading,
    TResult? Function(PlaylistPickLoaded value)? loaded,
    TResult? Function(PlaylistPickSearched value)? searched,
    TResult? Function(PlaylistPickFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistPickInitial value)? initial,
    TResult Function(PlaylistPickLoading value)? loading,
    TResult Function(PlaylistPickLoaded value)? loaded,
    TResult Function(PlaylistPickSearched value)? searched,
    TResult Function(PlaylistPickFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PlaylistPickFailure implements PlaylistPickState {
  const factory PlaylistPickFailure(final String message) =
      _$PlaylistPickFailureImpl;

  String get message;

  /// Create a copy of PlaylistPickState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistPickFailureImplCopyWith<_$PlaylistPickFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
