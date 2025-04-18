// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'superadmin_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuperadminAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperadminAuthRequest request) loginRequested,
    required TResult Function(SuperadminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthRequest request)? loginRequested,
    TResult? Function(SuperadminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperadminAuthRequest request)? loginRequested,
    TResult Function(SuperadminAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminLoginRequested value) loginRequested,
    required TResult Function(SuperadminRegisterRequested value)
        registerRequested,
    required TResult Function(SuperadminGetMeRequested value) getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminLoginRequested value)? loginRequested,
    TResult? Function(SuperadminRegisterRequested value)? registerRequested,
    TResult? Function(SuperadminGetMeRequested value)? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminLoginRequested value)? loginRequested,
    TResult Function(SuperadminRegisterRequested value)? registerRequested,
    TResult Function(SuperadminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperadminAuthEventCopyWith<$Res> {
  factory $SuperadminAuthEventCopyWith(
          SuperadminAuthEvent value, $Res Function(SuperadminAuthEvent) then) =
      _$SuperadminAuthEventCopyWithImpl<$Res, SuperadminAuthEvent>;
}

/// @nodoc
class _$SuperadminAuthEventCopyWithImpl<$Res, $Val extends SuperadminAuthEvent>
    implements $SuperadminAuthEventCopyWith<$Res> {
  _$SuperadminAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuperadminLoginRequestedImplCopyWith<$Res> {
  factory _$$SuperadminLoginRequestedImplCopyWith(
          _$SuperadminLoginRequestedImpl value,
          $Res Function(_$SuperadminLoginRequestedImpl) then) =
      __$$SuperadminLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SuperadminAuthRequest request});

  $SuperadminAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$SuperadminLoginRequestedImplCopyWithImpl<$Res>
    extends _$SuperadminAuthEventCopyWithImpl<$Res,
        _$SuperadminLoginRequestedImpl>
    implements _$$SuperadminLoginRequestedImplCopyWith<$Res> {
  __$$SuperadminLoginRequestedImplCopyWithImpl(
      _$SuperadminLoginRequestedImpl _value,
      $Res Function(_$SuperadminLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SuperadminLoginRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SuperadminAuthRequest,
    ));
  }

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperadminAuthRequestCopyWith<$Res> get request {
    return $SuperadminAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$SuperadminLoginRequestedImpl implements SuperadminLoginRequested {
  const _$SuperadminLoginRequestedImpl(this.request);

  @override
  final SuperadminAuthRequest request;

  @override
  String toString() {
    return 'SuperadminAuthEvent.loginRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminLoginRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminLoginRequestedImplCopyWith<_$SuperadminLoginRequestedImpl>
      get copyWith => __$$SuperadminLoginRequestedImplCopyWithImpl<
          _$SuperadminLoginRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperadminAuthRequest request) loginRequested,
    required TResult Function(SuperadminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return loginRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthRequest request)? loginRequested,
    TResult? Function(SuperadminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return loginRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperadminAuthRequest request)? loginRequested,
    TResult Function(SuperadminAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminLoginRequested value) loginRequested,
    required TResult Function(SuperadminRegisterRequested value)
        registerRequested,
    required TResult Function(SuperadminGetMeRequested value) getMeRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminLoginRequested value)? loginRequested,
    TResult? Function(SuperadminRegisterRequested value)? registerRequested,
    TResult? Function(SuperadminGetMeRequested value)? getMeRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminLoginRequested value)? loginRequested,
    TResult Function(SuperadminRegisterRequested value)? registerRequested,
    TResult Function(SuperadminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class SuperadminLoginRequested implements SuperadminAuthEvent {
  const factory SuperadminLoginRequested(final SuperadminAuthRequest request) =
      _$SuperadminLoginRequestedImpl;

  SuperadminAuthRequest get request;

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminLoginRequestedImplCopyWith<_$SuperadminLoginRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuperadminRegisterRequestedImplCopyWith<$Res> {
  factory _$$SuperadminRegisterRequestedImplCopyWith(
          _$SuperadminRegisterRequestedImpl value,
          $Res Function(_$SuperadminRegisterRequestedImpl) then) =
      __$$SuperadminRegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SuperadminAuthRequest request});

  $SuperadminAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$SuperadminRegisterRequestedImplCopyWithImpl<$Res>
    extends _$SuperadminAuthEventCopyWithImpl<$Res,
        _$SuperadminRegisterRequestedImpl>
    implements _$$SuperadminRegisterRequestedImplCopyWith<$Res> {
  __$$SuperadminRegisterRequestedImplCopyWithImpl(
      _$SuperadminRegisterRequestedImpl _value,
      $Res Function(_$SuperadminRegisterRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SuperadminRegisterRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SuperadminAuthRequest,
    ));
  }

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperadminAuthRequestCopyWith<$Res> get request {
    return $SuperadminAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$SuperadminRegisterRequestedImpl implements SuperadminRegisterRequested {
  const _$SuperadminRegisterRequestedImpl(this.request);

  @override
  final SuperadminAuthRequest request;

  @override
  String toString() {
    return 'SuperadminAuthEvent.registerRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminRegisterRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminRegisterRequestedImplCopyWith<_$SuperadminRegisterRequestedImpl>
      get copyWith => __$$SuperadminRegisterRequestedImplCopyWithImpl<
          _$SuperadminRegisterRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperadminAuthRequest request) loginRequested,
    required TResult Function(SuperadminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return registerRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthRequest request)? loginRequested,
    TResult? Function(SuperadminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return registerRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperadminAuthRequest request)? loginRequested,
    TResult Function(SuperadminAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminLoginRequested value) loginRequested,
    required TResult Function(SuperadminRegisterRequested value)
        registerRequested,
    required TResult Function(SuperadminGetMeRequested value) getMeRequested,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminLoginRequested value)? loginRequested,
    TResult? Function(SuperadminRegisterRequested value)? registerRequested,
    TResult? Function(SuperadminGetMeRequested value)? getMeRequested,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminLoginRequested value)? loginRequested,
    TResult Function(SuperadminRegisterRequested value)? registerRequested,
    TResult Function(SuperadminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class SuperadminRegisterRequested implements SuperadminAuthEvent {
  const factory SuperadminRegisterRequested(
      final SuperadminAuthRequest request) = _$SuperadminRegisterRequestedImpl;

  SuperadminAuthRequest get request;

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminRegisterRequestedImplCopyWith<_$SuperadminRegisterRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuperadminGetMeRequestedImplCopyWith<$Res> {
  factory _$$SuperadminGetMeRequestedImplCopyWith(
          _$SuperadminGetMeRequestedImpl value,
          $Res Function(_$SuperadminGetMeRequestedImpl) then) =
      __$$SuperadminGetMeRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuperadminGetMeRequestedImplCopyWithImpl<$Res>
    extends _$SuperadminAuthEventCopyWithImpl<$Res,
        _$SuperadminGetMeRequestedImpl>
    implements _$$SuperadminGetMeRequestedImplCopyWith<$Res> {
  __$$SuperadminGetMeRequestedImplCopyWithImpl(
      _$SuperadminGetMeRequestedImpl _value,
      $Res Function(_$SuperadminGetMeRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuperadminGetMeRequestedImpl implements SuperadminGetMeRequested {
  const _$SuperadminGetMeRequestedImpl();

  @override
  String toString() {
    return 'SuperadminAuthEvent.getMeRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminGetMeRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperadminAuthRequest request) loginRequested,
    required TResult Function(SuperadminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return getMeRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthRequest request)? loginRequested,
    TResult? Function(SuperadminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return getMeRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperadminAuthRequest request)? loginRequested,
    TResult Function(SuperadminAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) {
    if (getMeRequested != null) {
      return getMeRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminLoginRequested value) loginRequested,
    required TResult Function(SuperadminRegisterRequested value)
        registerRequested,
    required TResult Function(SuperadminGetMeRequested value) getMeRequested,
  }) {
    return getMeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminLoginRequested value)? loginRequested,
    TResult? Function(SuperadminRegisterRequested value)? registerRequested,
    TResult? Function(SuperadminGetMeRequested value)? getMeRequested,
  }) {
    return getMeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminLoginRequested value)? loginRequested,
    TResult Function(SuperadminRegisterRequested value)? registerRequested,
    TResult Function(SuperadminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (getMeRequested != null) {
      return getMeRequested(this);
    }
    return orElse();
  }
}

abstract class SuperadminGetMeRequested implements SuperadminAuthEvent {
  const factory SuperadminGetMeRequested() = _$SuperadminGetMeRequestedImpl;
}

/// @nodoc
mixin _$SuperadminAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Superadmin superadmin) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Superadmin superadmin)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Superadmin superadmin)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminAuthInitial value) initial,
    required TResult Function(SuperadminAuthLoading value) loading,
    required TResult Function(SuperadminAuthSuccess value) success,
    required TResult Function(SuperadminAuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthInitial value)? initial,
    TResult? Function(SuperadminAuthLoading value)? loading,
    TResult? Function(SuperadminAuthSuccess value)? success,
    TResult? Function(SuperadminAuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminAuthInitial value)? initial,
    TResult Function(SuperadminAuthLoading value)? loading,
    TResult Function(SuperadminAuthSuccess value)? success,
    TResult Function(SuperadminAuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperadminAuthStateCopyWith<$Res> {
  factory $SuperadminAuthStateCopyWith(
          SuperadminAuthState value, $Res Function(SuperadminAuthState) then) =
      _$SuperadminAuthStateCopyWithImpl<$Res, SuperadminAuthState>;
}

/// @nodoc
class _$SuperadminAuthStateCopyWithImpl<$Res, $Val extends SuperadminAuthState>
    implements $SuperadminAuthStateCopyWith<$Res> {
  _$SuperadminAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuperadminAuthInitialImplCopyWith<$Res> {
  factory _$$SuperadminAuthInitialImplCopyWith(
          _$SuperadminAuthInitialImpl value,
          $Res Function(_$SuperadminAuthInitialImpl) then) =
      __$$SuperadminAuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuperadminAuthInitialImplCopyWithImpl<$Res>
    extends _$SuperadminAuthStateCopyWithImpl<$Res, _$SuperadminAuthInitialImpl>
    implements _$$SuperadminAuthInitialImplCopyWith<$Res> {
  __$$SuperadminAuthInitialImplCopyWithImpl(_$SuperadminAuthInitialImpl _value,
      $Res Function(_$SuperadminAuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuperadminAuthInitialImpl implements SuperadminAuthInitial {
  const _$SuperadminAuthInitialImpl();

  @override
  String toString() {
    return 'SuperadminAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Superadmin superadmin) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Superadmin superadmin)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Superadmin superadmin)? success,
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
    required TResult Function(SuperadminAuthInitial value) initial,
    required TResult Function(SuperadminAuthLoading value) loading,
    required TResult Function(SuperadminAuthSuccess value) success,
    required TResult Function(SuperadminAuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthInitial value)? initial,
    TResult? Function(SuperadminAuthLoading value)? loading,
    TResult? Function(SuperadminAuthSuccess value)? success,
    TResult? Function(SuperadminAuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminAuthInitial value)? initial,
    TResult Function(SuperadminAuthLoading value)? loading,
    TResult Function(SuperadminAuthSuccess value)? success,
    TResult Function(SuperadminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SuperadminAuthInitial implements SuperadminAuthState {
  const factory SuperadminAuthInitial() = _$SuperadminAuthInitialImpl;
}

/// @nodoc
abstract class _$$SuperadminAuthLoadingImplCopyWith<$Res> {
  factory _$$SuperadminAuthLoadingImplCopyWith(
          _$SuperadminAuthLoadingImpl value,
          $Res Function(_$SuperadminAuthLoadingImpl) then) =
      __$$SuperadminAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuperadminAuthLoadingImplCopyWithImpl<$Res>
    extends _$SuperadminAuthStateCopyWithImpl<$Res, _$SuperadminAuthLoadingImpl>
    implements _$$SuperadminAuthLoadingImplCopyWith<$Res> {
  __$$SuperadminAuthLoadingImplCopyWithImpl(_$SuperadminAuthLoadingImpl _value,
      $Res Function(_$SuperadminAuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuperadminAuthLoadingImpl implements SuperadminAuthLoading {
  const _$SuperadminAuthLoadingImpl();

  @override
  String toString() {
    return 'SuperadminAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Superadmin superadmin) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Superadmin superadmin)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Superadmin superadmin)? success,
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
    required TResult Function(SuperadminAuthInitial value) initial,
    required TResult Function(SuperadminAuthLoading value) loading,
    required TResult Function(SuperadminAuthSuccess value) success,
    required TResult Function(SuperadminAuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthInitial value)? initial,
    TResult? Function(SuperadminAuthLoading value)? loading,
    TResult? Function(SuperadminAuthSuccess value)? success,
    TResult? Function(SuperadminAuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminAuthInitial value)? initial,
    TResult Function(SuperadminAuthLoading value)? loading,
    TResult Function(SuperadminAuthSuccess value)? success,
    TResult Function(SuperadminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SuperadminAuthLoading implements SuperadminAuthState {
  const factory SuperadminAuthLoading() = _$SuperadminAuthLoadingImpl;
}

/// @nodoc
abstract class _$$SuperadminAuthSuccessImplCopyWith<$Res> {
  factory _$$SuperadminAuthSuccessImplCopyWith(
          _$SuperadminAuthSuccessImpl value,
          $Res Function(_$SuperadminAuthSuccessImpl) then) =
      __$$SuperadminAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Superadmin superadmin});

  $SuperadminCopyWith<$Res> get superadmin;
}

/// @nodoc
class __$$SuperadminAuthSuccessImplCopyWithImpl<$Res>
    extends _$SuperadminAuthStateCopyWithImpl<$Res, _$SuperadminAuthSuccessImpl>
    implements _$$SuperadminAuthSuccessImplCopyWith<$Res> {
  __$$SuperadminAuthSuccessImplCopyWithImpl(_$SuperadminAuthSuccessImpl _value,
      $Res Function(_$SuperadminAuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? superadmin = null,
  }) {
    return _then(_$SuperadminAuthSuccessImpl(
      null == superadmin
          ? _value.superadmin
          : superadmin // ignore: cast_nullable_to_non_nullable
              as Superadmin,
    ));
  }

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperadminCopyWith<$Res> get superadmin {
    return $SuperadminCopyWith<$Res>(_value.superadmin, (value) {
      return _then(_value.copyWith(superadmin: value));
    });
  }
}

/// @nodoc

class _$SuperadminAuthSuccessImpl implements SuperadminAuthSuccess {
  const _$SuperadminAuthSuccessImpl(this.superadmin);

  @override
  final Superadmin superadmin;

  @override
  String toString() {
    return 'SuperadminAuthState.success(superadmin: $superadmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthSuccessImpl &&
            (identical(other.superadmin, superadmin) ||
                other.superadmin == superadmin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, superadmin);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminAuthSuccessImplCopyWith<_$SuperadminAuthSuccessImpl>
      get copyWith => __$$SuperadminAuthSuccessImplCopyWithImpl<
          _$SuperadminAuthSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Superadmin superadmin) success,
    required TResult Function(String message) failure,
  }) {
    return success(superadmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Superadmin superadmin)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(superadmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Superadmin superadmin)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(superadmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuperadminAuthInitial value) initial,
    required TResult Function(SuperadminAuthLoading value) loading,
    required TResult Function(SuperadminAuthSuccess value) success,
    required TResult Function(SuperadminAuthFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthInitial value)? initial,
    TResult? Function(SuperadminAuthLoading value)? loading,
    TResult? Function(SuperadminAuthSuccess value)? success,
    TResult? Function(SuperadminAuthFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminAuthInitial value)? initial,
    TResult Function(SuperadminAuthLoading value)? loading,
    TResult Function(SuperadminAuthSuccess value)? success,
    TResult Function(SuperadminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuperadminAuthSuccess implements SuperadminAuthState {
  const factory SuperadminAuthSuccess(final Superadmin superadmin) =
      _$SuperadminAuthSuccessImpl;

  Superadmin get superadmin;

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminAuthSuccessImplCopyWith<_$SuperadminAuthSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuperadminAuthFailureImplCopyWith<$Res> {
  factory _$$SuperadminAuthFailureImplCopyWith(
          _$SuperadminAuthFailureImpl value,
          $Res Function(_$SuperadminAuthFailureImpl) then) =
      __$$SuperadminAuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuperadminAuthFailureImplCopyWithImpl<$Res>
    extends _$SuperadminAuthStateCopyWithImpl<$Res, _$SuperadminAuthFailureImpl>
    implements _$$SuperadminAuthFailureImplCopyWith<$Res> {
  __$$SuperadminAuthFailureImplCopyWithImpl(_$SuperadminAuthFailureImpl _value,
      $Res Function(_$SuperadminAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuperadminAuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuperadminAuthFailureImpl implements SuperadminAuthFailure {
  const _$SuperadminAuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SuperadminAuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminAuthFailureImplCopyWith<_$SuperadminAuthFailureImpl>
      get copyWith => __$$SuperadminAuthFailureImplCopyWithImpl<
          _$SuperadminAuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Superadmin superadmin) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Superadmin superadmin)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Superadmin superadmin)? success,
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
    required TResult Function(SuperadminAuthInitial value) initial,
    required TResult Function(SuperadminAuthLoading value) loading,
    required TResult Function(SuperadminAuthSuccess value) success,
    required TResult Function(SuperadminAuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuperadminAuthInitial value)? initial,
    TResult? Function(SuperadminAuthLoading value)? loading,
    TResult? Function(SuperadminAuthSuccess value)? success,
    TResult? Function(SuperadminAuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuperadminAuthInitial value)? initial,
    TResult Function(SuperadminAuthLoading value)? loading,
    TResult Function(SuperadminAuthSuccess value)? success,
    TResult Function(SuperadminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SuperadminAuthFailure implements SuperadminAuthState {
  const factory SuperadminAuthFailure(final String message) =
      _$SuperadminAuthFailureImpl;

  String get message;

  /// Create a copy of SuperadminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminAuthFailureImplCopyWith<_$SuperadminAuthFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
