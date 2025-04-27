// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpData {
  @JsonKey(name: 'otp_token')
  String? get otpToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  String? get expiredAt => throw _privateConstructorUsedError;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpDataCopyWith<OtpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDataCopyWith<$Res> {
  factory $OtpDataCopyWith(OtpData value, $Res Function(OtpData) then) =
      _$OtpDataCopyWithImpl<$Res, OtpData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'otp_token') String? otpToken,
      @JsonKey(name: 'expired_at') String? expiredAt});
}

/// @nodoc
class _$OtpDataCopyWithImpl<$Res, $Val extends OtpData>
    implements $OtpDataCopyWith<$Res> {
  _$OtpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpToken = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(_value.copyWith(
      otpToken: freezed == otpToken
          ? _value.otpToken
          : otpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpDataImplCopyWith<$Res> implements $OtpDataCopyWith<$Res> {
  factory _$$OtpDataImplCopyWith(
          _$OtpDataImpl value, $Res Function(_$OtpDataImpl) then) =
      __$$OtpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'otp_token') String? otpToken,
      @JsonKey(name: 'expired_at') String? expiredAt});
}

/// @nodoc
class __$$OtpDataImplCopyWithImpl<$Res>
    extends _$OtpDataCopyWithImpl<$Res, _$OtpDataImpl>
    implements _$$OtpDataImplCopyWith<$Res> {
  __$$OtpDataImplCopyWithImpl(
      _$OtpDataImpl _value, $Res Function(_$OtpDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpToken = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(_$OtpDataImpl(
      otpToken: freezed == otpToken
          ? _value.otpToken
          : otpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtpDataImpl implements _OtpData {
  const _$OtpDataImpl(
      {@JsonKey(name: 'otp_token') this.otpToken,
      @JsonKey(name: 'expired_at') this.expiredAt});

  @override
  @JsonKey(name: 'otp_token')
  final String? otpToken;
  @override
  @JsonKey(name: 'expired_at')
  final String? expiredAt;

  @override
  String toString() {
    return 'OtpData(otpToken: $otpToken, expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDataImpl &&
            (identical(other.otpToken, otpToken) ||
                other.otpToken == otpToken) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpToken, expiredAt);

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      __$$OtpDataImplCopyWithImpl<_$OtpDataImpl>(this, _$identity);
}

abstract class _OtpData implements OtpData {
  const factory _OtpData(
      {@JsonKey(name: 'otp_token') final String? otpToken,
      @JsonKey(name: 'expired_at') final String? expiredAt}) = _$OtpDataImpl;

  @override
  @JsonKey(name: 'otp_token')
  String? get otpToken;
  @override
  @JsonKey(name: 'expired_at')
  String? get expiredAt;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
