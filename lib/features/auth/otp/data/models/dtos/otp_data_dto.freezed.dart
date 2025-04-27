// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpDataDto _$OtpDataDtoFromJson(Map<String, dynamic> json) {
  return _OtpDataDto.fromJson(json);
}

/// @nodoc
mixin _$OtpDataDto {
  @JsonKey(name: 'otp_token')
  String? get otpToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  String? get expiredAt => throw _privateConstructorUsedError;

  /// Serializes this OtpDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpDataDtoCopyWith<OtpDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDataDtoCopyWith<$Res> {
  factory $OtpDataDtoCopyWith(
          OtpDataDto value, $Res Function(OtpDataDto) then) =
      _$OtpDataDtoCopyWithImpl<$Res, OtpDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'otp_token') String? otpToken,
      @JsonKey(name: 'expired_at') String? expiredAt});
}

/// @nodoc
class _$OtpDataDtoCopyWithImpl<$Res, $Val extends OtpDataDto>
    implements $OtpDataDtoCopyWith<$Res> {
  _$OtpDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpDataDto
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
abstract class _$$OtpDataDtoImplCopyWith<$Res>
    implements $OtpDataDtoCopyWith<$Res> {
  factory _$$OtpDataDtoImplCopyWith(
          _$OtpDataDtoImpl value, $Res Function(_$OtpDataDtoImpl) then) =
      __$$OtpDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'otp_token') String? otpToken,
      @JsonKey(name: 'expired_at') String? expiredAt});
}

/// @nodoc
class __$$OtpDataDtoImplCopyWithImpl<$Res>
    extends _$OtpDataDtoCopyWithImpl<$Res, _$OtpDataDtoImpl>
    implements _$$OtpDataDtoImplCopyWith<$Res> {
  __$$OtpDataDtoImplCopyWithImpl(
      _$OtpDataDtoImpl _value, $Res Function(_$OtpDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpToken = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(_$OtpDataDtoImpl(
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
@JsonSerializable()
class _$OtpDataDtoImpl extends _OtpDataDto {
  const _$OtpDataDtoImpl(
      {@JsonKey(name: 'otp_token') this.otpToken,
      @JsonKey(name: 'expired_at') this.expiredAt})
      : super._();

  factory _$OtpDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpDataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'otp_token')
  final String? otpToken;
  @override
  @JsonKey(name: 'expired_at')
  final String? expiredAt;

  @override
  String toString() {
    return 'OtpDataDto(otpToken: $otpToken, expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDataDtoImpl &&
            (identical(other.otpToken, otpToken) ||
                other.otpToken == otpToken) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otpToken, expiredAt);

  /// Create a copy of OtpDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDataDtoImplCopyWith<_$OtpDataDtoImpl> get copyWith =>
      __$$OtpDataDtoImplCopyWithImpl<_$OtpDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpDataDtoImplToJson(
      this,
    );
  }
}

abstract class _OtpDataDto extends OtpDataDto {
  const factory _OtpDataDto(
      {@JsonKey(name: 'otp_token') final String? otpToken,
      @JsonKey(name: 'expired_at') final String? expiredAt}) = _$OtpDataDtoImpl;
  const _OtpDataDto._() : super._();

  factory _OtpDataDto.fromJson(Map<String, dynamic> json) =
      _$OtpDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'otp_token')
  String? get otpToken;
  @override
  @JsonKey(name: 'expired_at')
  String? get expiredAt;

  /// Create a copy of OtpDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpDataDtoImplCopyWith<_$OtpDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
