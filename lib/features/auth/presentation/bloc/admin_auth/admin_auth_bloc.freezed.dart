// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminAuthRequest request) loginRequested,
    required TResult Function(AdminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthRequest request)? loginRequested,
    TResult? Function(AdminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminAuthRequest request)? loginRequested,
    TResult Function(AdminAuthRequest request)? registerRequested,
    TResult Function()? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminLoginRequested value) loginRequested,
    required TResult Function(AdminRegisterRequested value) registerRequested,
    required TResult Function(AdminGetMeRequested value) getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminLoginRequested value)? loginRequested,
    TResult? Function(AdminRegisterRequested value)? registerRequested,
    TResult? Function(AdminGetMeRequested value)? getMeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminLoginRequested value)? loginRequested,
    TResult Function(AdminRegisterRequested value)? registerRequested,
    TResult Function(AdminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthEventCopyWith<$Res> {
  factory $AdminAuthEventCopyWith(
          AdminAuthEvent value, $Res Function(AdminAuthEvent) then) =
      _$AdminAuthEventCopyWithImpl<$Res, AdminAuthEvent>;
}

/// @nodoc
class _$AdminAuthEventCopyWithImpl<$Res, $Val extends AdminAuthEvent>
    implements $AdminAuthEventCopyWith<$Res> {
  _$AdminAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdminLoginRequestedImplCopyWith<$Res> {
  factory _$$AdminLoginRequestedImplCopyWith(_$AdminLoginRequestedImpl value,
          $Res Function(_$AdminLoginRequestedImpl) then) =
      __$$AdminLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdminAuthRequest request});

  $AdminAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AdminLoginRequestedImplCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$AdminLoginRequestedImpl>
    implements _$$AdminLoginRequestedImplCopyWith<$Res> {
  __$$AdminLoginRequestedImplCopyWithImpl(_$AdminLoginRequestedImpl _value,
      $Res Function(_$AdminLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AdminLoginRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AdminAuthRequest,
    ));
  }

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminAuthRequestCopyWith<$Res> get request {
    return $AdminAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AdminLoginRequestedImpl implements AdminLoginRequested {
  const _$AdminLoginRequestedImpl(this.request);

  @override
  final AdminAuthRequest request;

  @override
  String toString() {
    return 'AdminAuthEvent.loginRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLoginRequestedImplCopyWith<_$AdminLoginRequestedImpl> get copyWith =>
      __$$AdminLoginRequestedImplCopyWithImpl<_$AdminLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminAuthRequest request) loginRequested,
    required TResult Function(AdminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return loginRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthRequest request)? loginRequested,
    TResult? Function(AdminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return loginRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminAuthRequest request)? loginRequested,
    TResult Function(AdminAuthRequest request)? registerRequested,
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
    required TResult Function(AdminLoginRequested value) loginRequested,
    required TResult Function(AdminRegisterRequested value) registerRequested,
    required TResult Function(AdminGetMeRequested value) getMeRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminLoginRequested value)? loginRequested,
    TResult? Function(AdminRegisterRequested value)? registerRequested,
    TResult? Function(AdminGetMeRequested value)? getMeRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminLoginRequested value)? loginRequested,
    TResult Function(AdminRegisterRequested value)? registerRequested,
    TResult Function(AdminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class AdminLoginRequested implements AdminAuthEvent {
  const factory AdminLoginRequested(final AdminAuthRequest request) =
      _$AdminLoginRequestedImpl;

  AdminAuthRequest get request;

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminLoginRequestedImplCopyWith<_$AdminLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdminRegisterRequestedImplCopyWith<$Res> {
  factory _$$AdminRegisterRequestedImplCopyWith(
          _$AdminRegisterRequestedImpl value,
          $Res Function(_$AdminRegisterRequestedImpl) then) =
      __$$AdminRegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdminAuthRequest request});

  $AdminAuthRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AdminRegisterRequestedImplCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$AdminRegisterRequestedImpl>
    implements _$$AdminRegisterRequestedImplCopyWith<$Res> {
  __$$AdminRegisterRequestedImplCopyWithImpl(
      _$AdminRegisterRequestedImpl _value,
      $Res Function(_$AdminRegisterRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AdminRegisterRequestedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AdminAuthRequest,
    ));
  }

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminAuthRequestCopyWith<$Res> get request {
    return $AdminAuthRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AdminRegisterRequestedImpl implements AdminRegisterRequested {
  const _$AdminRegisterRequestedImpl(this.request);

  @override
  final AdminAuthRequest request;

  @override
  String toString() {
    return 'AdminAuthEvent.registerRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminRegisterRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminRegisterRequestedImplCopyWith<_$AdminRegisterRequestedImpl>
      get copyWith => __$$AdminRegisterRequestedImplCopyWithImpl<
          _$AdminRegisterRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminAuthRequest request) loginRequested,
    required TResult Function(AdminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return registerRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthRequest request)? loginRequested,
    TResult? Function(AdminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return registerRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminAuthRequest request)? loginRequested,
    TResult Function(AdminAuthRequest request)? registerRequested,
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
    required TResult Function(AdminLoginRequested value) loginRequested,
    required TResult Function(AdminRegisterRequested value) registerRequested,
    required TResult Function(AdminGetMeRequested value) getMeRequested,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminLoginRequested value)? loginRequested,
    TResult? Function(AdminRegisterRequested value)? registerRequested,
    TResult? Function(AdminGetMeRequested value)? getMeRequested,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminLoginRequested value)? loginRequested,
    TResult Function(AdminRegisterRequested value)? registerRequested,
    TResult Function(AdminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class AdminRegisterRequested implements AdminAuthEvent {
  const factory AdminRegisterRequested(final AdminAuthRequest request) =
      _$AdminRegisterRequestedImpl;

  AdminAuthRequest get request;

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminRegisterRequestedImplCopyWith<_$AdminRegisterRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdminGetMeRequestedImplCopyWith<$Res> {
  factory _$$AdminGetMeRequestedImplCopyWith(_$AdminGetMeRequestedImpl value,
          $Res Function(_$AdminGetMeRequestedImpl) then) =
      __$$AdminGetMeRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminGetMeRequestedImplCopyWithImpl<$Res>
    extends _$AdminAuthEventCopyWithImpl<$Res, _$AdminGetMeRequestedImpl>
    implements _$$AdminGetMeRequestedImplCopyWith<$Res> {
  __$$AdminGetMeRequestedImplCopyWithImpl(_$AdminGetMeRequestedImpl _value,
      $Res Function(_$AdminGetMeRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminGetMeRequestedImpl implements AdminGetMeRequested {
  const _$AdminGetMeRequestedImpl();

  @override
  String toString() {
    return 'AdminAuthEvent.getMeRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGetMeRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminAuthRequest request) loginRequested,
    required TResult Function(AdminAuthRequest request) registerRequested,
    required TResult Function() getMeRequested,
  }) {
    return getMeRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthRequest request)? loginRequested,
    TResult? Function(AdminAuthRequest request)? registerRequested,
    TResult? Function()? getMeRequested,
  }) {
    return getMeRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminAuthRequest request)? loginRequested,
    TResult Function(AdminAuthRequest request)? registerRequested,
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
    required TResult Function(AdminLoginRequested value) loginRequested,
    required TResult Function(AdminRegisterRequested value) registerRequested,
    required TResult Function(AdminGetMeRequested value) getMeRequested,
  }) {
    return getMeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminLoginRequested value)? loginRequested,
    TResult? Function(AdminRegisterRequested value)? registerRequested,
    TResult? Function(AdminGetMeRequested value)? getMeRequested,
  }) {
    return getMeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminLoginRequested value)? loginRequested,
    TResult Function(AdminRegisterRequested value)? registerRequested,
    TResult Function(AdminGetMeRequested value)? getMeRequested,
    required TResult orElse(),
  }) {
    if (getMeRequested != null) {
      return getMeRequested(this);
    }
    return orElse();
  }
}

abstract class AdminGetMeRequested implements AdminAuthEvent {
  const factory AdminGetMeRequested() = _$AdminGetMeRequestedImpl;
}

/// @nodoc
mixin _$AdminAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Admin admin) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Admin admin)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Admin admin)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminAuthInitial value) initial,
    required TResult Function(AdminAuthLoading value) loading,
    required TResult Function(AdminAuthSuccess value) success,
    required TResult Function(AdminAuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthInitial value)? initial,
    TResult? Function(AdminAuthLoading value)? loading,
    TResult? Function(AdminAuthSuccess value)? success,
    TResult? Function(AdminAuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminAuthInitial value)? initial,
    TResult Function(AdminAuthLoading value)? loading,
    TResult Function(AdminAuthSuccess value)? success,
    TResult Function(AdminAuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthStateCopyWith<$Res> {
  factory $AdminAuthStateCopyWith(
          AdminAuthState value, $Res Function(AdminAuthState) then) =
      _$AdminAuthStateCopyWithImpl<$Res, AdminAuthState>;
}

/// @nodoc
class _$AdminAuthStateCopyWithImpl<$Res, $Val extends AdminAuthState>
    implements $AdminAuthStateCopyWith<$Res> {
  _$AdminAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdminAuthInitialImplCopyWith<$Res> {
  factory _$$AdminAuthInitialImplCopyWith(_$AdminAuthInitialImpl value,
          $Res Function(_$AdminAuthInitialImpl) then) =
      __$$AdminAuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminAuthInitialImplCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$AdminAuthInitialImpl>
    implements _$$AdminAuthInitialImplCopyWith<$Res> {
  __$$AdminAuthInitialImplCopyWithImpl(_$AdminAuthInitialImpl _value,
      $Res Function(_$AdminAuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminAuthInitialImpl implements AdminAuthInitial {
  const _$AdminAuthInitialImpl();

  @override
  String toString() {
    return 'AdminAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdminAuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Admin admin) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Admin admin)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Admin admin)? success,
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
    required TResult Function(AdminAuthInitial value) initial,
    required TResult Function(AdminAuthLoading value) loading,
    required TResult Function(AdminAuthSuccess value) success,
    required TResult Function(AdminAuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthInitial value)? initial,
    TResult? Function(AdminAuthLoading value)? loading,
    TResult? Function(AdminAuthSuccess value)? success,
    TResult? Function(AdminAuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminAuthInitial value)? initial,
    TResult Function(AdminAuthLoading value)? loading,
    TResult Function(AdminAuthSuccess value)? success,
    TResult Function(AdminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AdminAuthInitial implements AdminAuthState {
  const factory AdminAuthInitial() = _$AdminAuthInitialImpl;
}

/// @nodoc
abstract class _$$AdminAuthLoadingImplCopyWith<$Res> {
  factory _$$AdminAuthLoadingImplCopyWith(_$AdminAuthLoadingImpl value,
          $Res Function(_$AdminAuthLoadingImpl) then) =
      __$$AdminAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminAuthLoadingImplCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$AdminAuthLoadingImpl>
    implements _$$AdminAuthLoadingImplCopyWith<$Res> {
  __$$AdminAuthLoadingImplCopyWithImpl(_$AdminAuthLoadingImpl _value,
      $Res Function(_$AdminAuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminAuthLoadingImpl implements AdminAuthLoading {
  const _$AdminAuthLoadingImpl();

  @override
  String toString() {
    return 'AdminAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdminAuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Admin admin) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Admin admin)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Admin admin)? success,
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
    required TResult Function(AdminAuthInitial value) initial,
    required TResult Function(AdminAuthLoading value) loading,
    required TResult Function(AdminAuthSuccess value) success,
    required TResult Function(AdminAuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthInitial value)? initial,
    TResult? Function(AdminAuthLoading value)? loading,
    TResult? Function(AdminAuthSuccess value)? success,
    TResult? Function(AdminAuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminAuthInitial value)? initial,
    TResult Function(AdminAuthLoading value)? loading,
    TResult Function(AdminAuthSuccess value)? success,
    TResult Function(AdminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdminAuthLoading implements AdminAuthState {
  const factory AdminAuthLoading() = _$AdminAuthLoadingImpl;
}

/// @nodoc
abstract class _$$AdminAuthSuccessImplCopyWith<$Res> {
  factory _$$AdminAuthSuccessImplCopyWith(_$AdminAuthSuccessImpl value,
          $Res Function(_$AdminAuthSuccessImpl) then) =
      __$$AdminAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Admin admin});

  $AdminCopyWith<$Res> get admin;
}

/// @nodoc
class __$$AdminAuthSuccessImplCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$AdminAuthSuccessImpl>
    implements _$$AdminAuthSuccessImplCopyWith<$Res> {
  __$$AdminAuthSuccessImplCopyWithImpl(_$AdminAuthSuccessImpl _value,
      $Res Function(_$AdminAuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
  }) {
    return _then(_$AdminAuthSuccessImpl(
      null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as Admin,
    ));
  }

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminCopyWith<$Res> get admin {
    return $AdminCopyWith<$Res>(_value.admin, (value) {
      return _then(_value.copyWith(admin: value));
    });
  }
}

/// @nodoc

class _$AdminAuthSuccessImpl implements AdminAuthSuccess {
  const _$AdminAuthSuccessImpl(this.admin);

  @override
  final Admin admin;

  @override
  String toString() {
    return 'AdminAuthState.success(admin: $admin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAuthSuccessImpl &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, admin);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAuthSuccessImplCopyWith<_$AdminAuthSuccessImpl> get copyWith =>
      __$$AdminAuthSuccessImplCopyWithImpl<_$AdminAuthSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Admin admin) success,
    required TResult Function(String message) failure,
  }) {
    return success(admin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Admin admin)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(admin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Admin admin)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(admin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminAuthInitial value) initial,
    required TResult Function(AdminAuthLoading value) loading,
    required TResult Function(AdminAuthSuccess value) success,
    required TResult Function(AdminAuthFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthInitial value)? initial,
    TResult? Function(AdminAuthLoading value)? loading,
    TResult? Function(AdminAuthSuccess value)? success,
    TResult? Function(AdminAuthFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminAuthInitial value)? initial,
    TResult Function(AdminAuthLoading value)? loading,
    TResult Function(AdminAuthSuccess value)? success,
    TResult Function(AdminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AdminAuthSuccess implements AdminAuthState {
  const factory AdminAuthSuccess(final Admin admin) = _$AdminAuthSuccessImpl;

  Admin get admin;

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAuthSuccessImplCopyWith<_$AdminAuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdminAuthFailureImplCopyWith<$Res> {
  factory _$$AdminAuthFailureImplCopyWith(_$AdminAuthFailureImpl value,
          $Res Function(_$AdminAuthFailureImpl) then) =
      __$$AdminAuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AdminAuthFailureImplCopyWithImpl<$Res>
    extends _$AdminAuthStateCopyWithImpl<$Res, _$AdminAuthFailureImpl>
    implements _$$AdminAuthFailureImplCopyWith<$Res> {
  __$$AdminAuthFailureImplCopyWithImpl(_$AdminAuthFailureImpl _value,
      $Res Function(_$AdminAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AdminAuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdminAuthFailureImpl implements AdminAuthFailure {
  const _$AdminAuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminAuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAuthFailureImplCopyWith<_$AdminAuthFailureImpl> get copyWith =>
      __$$AdminAuthFailureImplCopyWithImpl<_$AdminAuthFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Admin admin) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Admin admin)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Admin admin)? success,
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
    required TResult Function(AdminAuthInitial value) initial,
    required TResult Function(AdminAuthLoading value) loading,
    required TResult Function(AdminAuthSuccess value) success,
    required TResult Function(AdminAuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminAuthInitial value)? initial,
    TResult? Function(AdminAuthLoading value)? loading,
    TResult? Function(AdminAuthSuccess value)? success,
    TResult? Function(AdminAuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminAuthInitial value)? initial,
    TResult Function(AdminAuthLoading value)? loading,
    TResult Function(AdminAuthSuccess value)? success,
    TResult Function(AdminAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AdminAuthFailure implements AdminAuthState {
  const factory AdminAuthFailure(final String message) = _$AdminAuthFailureImpl;

  String get message;

  /// Create a copy of AdminAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAuthFailureImplCopyWith<_$AdminAuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
