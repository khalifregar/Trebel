// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthRequest request) loginRequested,
    required TResult Function(UserAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthRequest request)? loginRequested,
    TResult? Function(UserAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthRequest request)? loginRequested,
    TResult Function(UserAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginRequested value) loginRequested,
    required TResult Function(UserRegisterRequested value) registerRequested,
    required TResult Function(UserGetMeRequested value) getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginRequested value)? loginRequested,
    TResult? Function(UserRegisterRequested value)? registerRequested,
    TResult? Function(UserGetMeRequested value)? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginRequested value)? loginRequested,
    TResult Function(UserRegisterRequested value)? registerRequested,
    TResult Function(UserGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthEventCopyWith<$Res> {
  factory $UserAuthEventCopyWith(
          UserAuthEvent value, $Res Function(UserAuthEvent) then) =
      _$UserAuthEventCopyWithImpl<$Res, UserAuthEvent>;
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res, $Val extends UserAuthEvent>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserLoginRequestedImplCopyWith<$Res> {
  factory _$$UserLoginRequestedImplCopyWith(_$UserLoginRequestedImpl value,
          $Res Function(_$UserLoginRequestedImpl) then) =
      __$$UserLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthRequest request});

  $UserAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UserLoginRequestedImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserLoginRequestedImpl>
    implements _$$UserLoginRequestedImplCopyWith<$Res> {
  __$$UserLoginRequestedImplCopyWithImpl(_$UserLoginRequestedImpl _value,
      $Res Function(_$UserLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UserLoginRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserAuthRequest,
    ));
  }

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAuthRequestCopyWith<$Res> get request {
    return $UserAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UserLoginRequestedImpl implements UserLoginRequested {
  const _$UserLoginRequestedImpl(this.request);

  @override
  final UserAuthRequest request;

  @override
  String toString() {
    return 'UserAuthEvent.loginRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginRequestedImplCopyWith<_$UserLoginRequestedImpl> get copyWith =>
      __$$UserLoginRequestedImplCopyWithImpl<_$UserLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthRequest request) loginRequested,
    required TResult Function(UserAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return loginRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthRequest request)? loginRequested,
    TResult? Function(UserAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return loginRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthRequest request)? loginRequested,
    TResult Function(UserAuthRequest request)? registerRequested,
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
    required TResult Function(UserLoginRequested value) loginRequested,
    required TResult Function(UserRegisterRequested value) registerRequested,
    required TResult Function(UserGetMeRequested value) getMeRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginRequested value)? loginRequested,
    TResult? Function(UserRegisterRequested value)? registerRequested,
    TResult? Function(UserGetMeRequested value)? getMeRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginRequested value)? loginRequested,
    TResult Function(UserRegisterRequested value)? registerRequested,
    TResult Function(UserGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class UserLoginRequested implements UserAuthEvent {
  const factory UserLoginRequested(final UserAuthRequest request) =
      _$UserLoginRequestedImpl;

  UserAuthRequest get request;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginRequestedImplCopyWith<_$UserLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterRequestedImplCopyWith<$Res> {
  factory _$$UserRegisterRequestedImplCopyWith(
          _$UserRegisterRequestedImpl value,
          $Res Function(_$UserRegisterRequestedImpl) then) =
      __$$UserRegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAuthRequest request});

  $UserAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UserRegisterRequestedImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserRegisterRequestedImpl>
    implements _$$UserRegisterRequestedImplCopyWith<$Res> {
  __$$UserRegisterRequestedImplCopyWithImpl(_$UserRegisterRequestedImpl _value,
      $Res Function(_$UserRegisterRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UserRegisterRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserAuthRequest,
    ));
  }

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAuthRequestCopyWith<$Res> get request {
    return $UserAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UserRegisterRequestedImpl implements UserRegisterRequested {
  const _$UserRegisterRequestedImpl(this.request);

  @override
  final UserAuthRequest request;

  @override
  String toString() {
    return 'UserAuthEvent.registerRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterRequestedImplCopyWith<_$UserRegisterRequestedImpl>
      get copyWith => __$$UserRegisterRequestedImplCopyWithImpl<
          _$UserRegisterRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthRequest request) loginRequested,
    required TResult Function(UserAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return registerRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthRequest request)? loginRequested,
    TResult? Function(UserAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return registerRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthRequest request)? loginRequested,
    TResult Function(UserAuthRequest request)? registerRequested,
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
    required TResult Function(UserLoginRequested value) loginRequested,
    required TResult Function(UserRegisterRequested value) registerRequested,
    required TResult Function(UserGetMeRequested value) getMeRequested,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginRequested value)? loginRequested,
    TResult? Function(UserRegisterRequested value)? registerRequested,
    TResult? Function(UserGetMeRequested value)? getMeRequested,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginRequested value)? loginRequested,
    TResult Function(UserRegisterRequested value)? registerRequested,
    TResult Function(UserGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class UserRegisterRequested implements UserAuthEvent {
  const factory UserRegisterRequested(final UserAuthRequest request) =
      _$UserRegisterRequestedImpl;

  UserAuthRequest get request;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisterRequestedImplCopyWith<_$UserRegisterRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserGetMeRequestedImplCopyWith<$Res> {
  factory _$$UserGetMeRequestedImplCopyWith(_$UserGetMeRequestedImpl value,
          $Res Function(_$UserGetMeRequestedImpl) then) =
      __$$UserGetMeRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserGetMeRequestedImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserGetMeRequestedImpl>
    implements _$$UserGetMeRequestedImplCopyWith<$Res> {
  __$$UserGetMeRequestedImplCopyWithImpl(_$UserGetMeRequestedImpl _value,
      $Res Function(_$UserGetMeRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserGetMeRequestedImpl implements UserGetMeRequested {
  const _$UserGetMeRequestedImpl();

  @override
  String toString() {
    return 'UserAuthEvent.getMeRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserGetMeRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAuthRequest request) loginRequested,
    required TResult Function(UserAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return getMeRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAuthRequest request)? loginRequested,
    TResult? Function(UserAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return getMeRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAuthRequest request)? loginRequested,
    TResult Function(UserAuthRequest request)? registerRequested,
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
    required TResult Function(UserLoginRequested value) loginRequested,
    required TResult Function(UserRegisterRequested value) registerRequested,
    required TResult Function(UserGetMeRequested value) getMeRequested,
  }) {
    return getMeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginRequested value)? loginRequested,
    TResult? Function(UserRegisterRequested value)? registerRequested,
    TResult? Function(UserGetMeRequested value)? getMeRequested,
  }) {
    return getMeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginRequested value)? loginRequested,
    TResult Function(UserRegisterRequested value)? registerRequested,
    TResult Function(UserGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (getMeRequested != null) {
      return getMeRequested(this);
    }
    return orElse();
  }
}

abstract class UserGetMeRequested implements UserAuthEvent {
  const factory UserGetMeRequested() = _$UserGetMeRequestedImpl;
}

/// @nodoc
mixin _$UserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthInitial value) initial,
    required TResult Function(UserAuthLoading value) loading,
    required TResult Function(UserAuthSuccess value) success,
    required TResult Function(UserAuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthInitial value)? initial,
    TResult? Function(UserAuthLoading value)? loading,
    TResult? Function(UserAuthSuccess value)? success,
    TResult? Function(UserAuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthInitial value)? initial,
    TResult Function(UserAuthLoading value)? loading,
    TResult Function(UserAuthSuccess value)? success,
    TResult Function(UserAuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserAuthInitialImplCopyWith<$Res> {
  factory _$$UserAuthInitialImplCopyWith(_$UserAuthInitialImpl value,
          $Res Function(_$UserAuthInitialImpl) then) =
      __$$UserAuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthInitialImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthInitialImpl>
    implements _$$UserAuthInitialImplCopyWith<$Res> {
  __$$UserAuthInitialImplCopyWithImpl(
      _$UserAuthInitialImpl _value, $Res Function(_$UserAuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthInitialImpl implements UserAuthInitial {
  const _$UserAuthInitialImpl();

  @override
  String toString() {
    return 'UserAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
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
    required TResult Function(UserAuthInitial value) initial,
    required TResult Function(UserAuthLoading value) loading,
    required TResult Function(UserAuthSuccess value) success,
    required TResult Function(UserAuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthInitial value)? initial,
    TResult? Function(UserAuthLoading value)? loading,
    TResult? Function(UserAuthSuccess value)? success,
    TResult? Function(UserAuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthInitial value)? initial,
    TResult Function(UserAuthLoading value)? loading,
    TResult Function(UserAuthSuccess value)? success,
    TResult Function(UserAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserAuthInitial implements UserAuthState {
  const factory UserAuthInitial() = _$UserAuthInitialImpl;
}

/// @nodoc
abstract class _$$UserAuthLoadingImplCopyWith<$Res> {
  factory _$$UserAuthLoadingImplCopyWith(_$UserAuthLoadingImpl value,
          $Res Function(_$UserAuthLoadingImpl) then) =
      __$$UserAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthLoadingImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthLoadingImpl>
    implements _$$UserAuthLoadingImplCopyWith<$Res> {
  __$$UserAuthLoadingImplCopyWithImpl(
      _$UserAuthLoadingImpl _value, $Res Function(_$UserAuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthLoadingImpl implements UserAuthLoading {
  const _$UserAuthLoadingImpl();

  @override
  String toString() {
    return 'UserAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
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
    required TResult Function(UserAuthInitial value) initial,
    required TResult Function(UserAuthLoading value) loading,
    required TResult Function(UserAuthSuccess value) success,
    required TResult Function(UserAuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthInitial value)? initial,
    TResult? Function(UserAuthLoading value)? loading,
    TResult? Function(UserAuthSuccess value)? success,
    TResult? Function(UserAuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthInitial value)? initial,
    TResult Function(UserAuthLoading value)? loading,
    TResult Function(UserAuthSuccess value)? success,
    TResult Function(UserAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserAuthLoading implements UserAuthState {
  const factory UserAuthLoading() = _$UserAuthLoadingImpl;
}

/// @nodoc
abstract class _$$UserAuthSuccessImplCopyWith<$Res> {
  factory _$$UserAuthSuccessImplCopyWith(_$UserAuthSuccessImpl value,
          $Res Function(_$UserAuthSuccessImpl) then) =
      __$$UserAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserAuthSuccessImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthSuccessImpl>
    implements _$$UserAuthSuccessImplCopyWith<$Res> {
  __$$UserAuthSuccessImplCopyWithImpl(
      _$UserAuthSuccessImpl _value, $Res Function(_$UserAuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserAuthSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserAuthSuccessImpl implements UserAuthSuccess {
  const _$UserAuthSuccessImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserAuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthSuccessImplCopyWith<_$UserAuthSuccessImpl> get copyWith =>
      __$$UserAuthSuccessImplCopyWithImpl<_$UserAuthSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthInitial value) initial,
    required TResult Function(UserAuthLoading value) loading,
    required TResult Function(UserAuthSuccess value) success,
    required TResult Function(UserAuthFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthInitial value)? initial,
    TResult? Function(UserAuthLoading value)? loading,
    TResult? Function(UserAuthSuccess value)? success,
    TResult? Function(UserAuthFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthInitial value)? initial,
    TResult Function(UserAuthLoading value)? loading,
    TResult Function(UserAuthSuccess value)? success,
    TResult Function(UserAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserAuthSuccess implements UserAuthState {
  const factory UserAuthSuccess(final User user) = _$UserAuthSuccessImpl;

  User get user;

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthSuccessImplCopyWith<_$UserAuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAuthFailureImplCopyWith<$Res> {
  factory _$$UserAuthFailureImplCopyWith(_$UserAuthFailureImpl value,
          $Res Function(_$UserAuthFailureImpl) then) =
      __$$UserAuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserAuthFailureImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthFailureImpl>
    implements _$$UserAuthFailureImplCopyWith<$Res> {
  __$$UserAuthFailureImplCopyWithImpl(
      _$UserAuthFailureImpl _value, $Res Function(_$UserAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserAuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAuthFailureImpl implements UserAuthFailure {
  const _$UserAuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserAuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthFailureImplCopyWith<_$UserAuthFailureImpl> get copyWith =>
      __$$UserAuthFailureImplCopyWithImpl<_$UserAuthFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
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
    required TResult Function(UserAuthInitial value) initial,
    required TResult Function(UserAuthLoading value) loading,
    required TResult Function(UserAuthSuccess value) success,
    required TResult Function(UserAuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthInitial value)? initial,
    TResult? Function(UserAuthLoading value)? loading,
    TResult? Function(UserAuthSuccess value)? success,
    TResult? Function(UserAuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthInitial value)? initial,
    TResult Function(UserAuthLoading value)? loading,
    TResult Function(UserAuthSuccess value)? success,
    TResult Function(UserAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserAuthFailure implements UserAuthState {
  const factory UserAuthFailure(final String message) = _$UserAuthFailureImpl;

  String get message;

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthFailureImplCopyWith<_$UserAuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
