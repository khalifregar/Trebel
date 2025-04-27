// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OtpState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'OtpState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements OtpState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OtpState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OtpState {
  const factory _LoadFailure(final Failure failure) = _$LoadFailureImpl;

  Failure get failure;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpSuccessImplCopyWith<$Res> {
  factory _$$SendOtpSuccessImplCopyWith(_$SendOtpSuccessImpl value,
          $Res Function(_$SendOtpSuccessImpl) then) =
      __$$SendOtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpResponse response});

  $OtpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$SendOtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$SendOtpSuccessImpl>
    implements _$$SendOtpSuccessImplCopyWith<$Res> {
  __$$SendOtpSuccessImplCopyWithImpl(
      _$SendOtpSuccessImpl _value, $Res Function(_$SendOtpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SendOtpSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OtpResponse,
    ));
  }

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpResponseCopyWith<$Res> get response {
    return $OtpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SendOtpSuccessImpl implements _SendOtpSuccess {
  const _$SendOtpSuccessImpl(this.response);

  @override
  final OtpResponse response;

  @override
  String toString() {
    return 'OtpState.sendOtpSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpSuccessImplCopyWith<_$SendOtpSuccessImpl> get copyWith =>
      __$$SendOtpSuccessImplCopyWithImpl<_$SendOtpSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return sendOtpSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return sendOtpSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return sendOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return sendOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (sendOtpSuccess != null) {
      return sendOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendOtpSuccess implements OtpState {
  const factory _SendOtpSuccess(final OtpResponse response) =
      _$SendOtpSuccessImpl;

  OtpResponse get response;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpSuccessImplCopyWith<_$SendOtpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpSuccessImplCopyWith<$Res> {
  factory _$$ResendOtpSuccessImplCopyWith(_$ResendOtpSuccessImpl value,
          $Res Function(_$ResendOtpSuccessImpl) then) =
      __$$ResendOtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpResponse response});

  $OtpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$ResendOtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$ResendOtpSuccessImpl>
    implements _$$ResendOtpSuccessImplCopyWith<$Res> {
  __$$ResendOtpSuccessImplCopyWithImpl(_$ResendOtpSuccessImpl _value,
      $Res Function(_$ResendOtpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ResendOtpSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OtpResponse,
    ));
  }

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpResponseCopyWith<$Res> get response {
    return $OtpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$ResendOtpSuccessImpl implements _ResendOtpSuccess {
  const _$ResendOtpSuccessImpl(this.response);

  @override
  final OtpResponse response;

  @override
  String toString() {
    return 'OtpState.resendOtpSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpSuccessImplCopyWith<_$ResendOtpSuccessImpl> get copyWith =>
      __$$ResendOtpSuccessImplCopyWithImpl<_$ResendOtpSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return resendOtpSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return resendOtpSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (resendOtpSuccess != null) {
      return resendOtpSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return resendOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return resendOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (resendOtpSuccess != null) {
      return resendOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResendOtpSuccess implements OtpState {
  const factory _ResendOtpSuccess(final OtpResponse response) =
      _$ResendOtpSuccessImpl;

  OtpResponse get response;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendOtpSuccessImplCopyWith<_$ResendOtpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpSuccessImplCopyWith<$Res> {
  factory _$$VerifyOtpSuccessImplCopyWith(_$VerifyOtpSuccessImpl value,
          $Res Function(_$VerifyOtpSuccessImpl) then) =
      __$$VerifyOtpSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$VerifyOtpSuccessImpl>
    implements _$$VerifyOtpSuccessImplCopyWith<$Res> {
  __$$VerifyOtpSuccessImplCopyWithImpl(_$VerifyOtpSuccessImpl _value,
      $Res Function(_$VerifyOtpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyOtpSuccessImpl implements _VerifyOtpSuccess {
  const _$VerifyOtpSuccessImpl();

  @override
  String toString() {
    return 'OtpState.verifyOtpSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOtpSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(OtpResponse response) sendOtpSuccess,
    required TResult Function(OtpResponse response) resendOtpSuccess,
    required TResult Function() verifyOtpSuccess,
  }) {
    return verifyOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(OtpResponse response)? sendOtpSuccess,
    TResult? Function(OtpResponse response)? resendOtpSuccess,
    TResult? Function()? verifyOtpSuccess,
  }) {
    return verifyOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(OtpResponse response)? sendOtpSuccess,
    TResult Function(OtpResponse response)? resendOtpSuccess,
    TResult Function()? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccess != null) {
      return verifyOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SendOtpSuccess value) sendOtpSuccess,
    required TResult Function(_ResendOtpSuccess value) resendOtpSuccess,
    required TResult Function(_VerifyOtpSuccess value) verifyOtpSuccess,
  }) {
    return verifyOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult? Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult? Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
  }) {
    return verifyOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SendOtpSuccess value)? sendOtpSuccess,
    TResult Function(_ResendOtpSuccess value)? resendOtpSuccess,
    TResult Function(_VerifyOtpSuccess value)? verifyOtpSuccess,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccess != null) {
      return verifyOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtpSuccess implements OtpState {
  const factory _VerifyOtpSuccess() = _$VerifyOtpSuccessImpl;
}
