// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpResponseDto _$OtpResponseDtoFromJson(Map<String, dynamic> json) {
  return _OtpResponseDto.fromJson(json);
}

/// @nodoc
mixin _$OtpResponseDto {
  String? get message => throw _privateConstructorUsedError;
  OtpDataDto? get data => throw _privateConstructorUsedError;

  /// Serializes this OtpResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpResponseDtoCopyWith<OtpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResponseDtoCopyWith<$Res> {
  factory $OtpResponseDtoCopyWith(
          OtpResponseDto value, $Res Function(OtpResponseDto) then) =
      _$OtpResponseDtoCopyWithImpl<$Res, OtpResponseDto>;
  @useResult
  $Res call({String? message, OtpDataDto? data});

  $OtpDataDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$OtpResponseDtoCopyWithImpl<$Res, $Val extends OtpResponseDto>
    implements $OtpResponseDtoCopyWith<$Res> {
  _$OtpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtpDataDto?,
    ) as $Val);
  }

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpDataDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OtpDataDtoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtpResponseDtoImplCopyWith<$Res>
    implements $OtpResponseDtoCopyWith<$Res> {
  factory _$$OtpResponseDtoImplCopyWith(_$OtpResponseDtoImpl value,
          $Res Function(_$OtpResponseDtoImpl) then) =
      __$$OtpResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, OtpDataDto? data});

  @override
  $OtpDataDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OtpResponseDtoImplCopyWithImpl<$Res>
    extends _$OtpResponseDtoCopyWithImpl<$Res, _$OtpResponseDtoImpl>
    implements _$$OtpResponseDtoImplCopyWith<$Res> {
  __$$OtpResponseDtoImplCopyWithImpl(
      _$OtpResponseDtoImpl _value, $Res Function(_$OtpResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$OtpResponseDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtpDataDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpResponseDtoImpl extends _OtpResponseDto {
  const _$OtpResponseDtoImpl({this.message, this.data}) : super._();

  factory _$OtpResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpResponseDtoImplFromJson(json);

  @override
  final String? message;
  @override
  final OtpDataDto? data;

  @override
  String toString() {
    return 'OtpResponseDto(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResponseDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResponseDtoImplCopyWith<_$OtpResponseDtoImpl> get copyWith =>
      __$$OtpResponseDtoImplCopyWithImpl<_$OtpResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _OtpResponseDto extends OtpResponseDto {
  const factory _OtpResponseDto(
      {final String? message, final OtpDataDto? data}) = _$OtpResponseDtoImpl;
  const _OtpResponseDto._() : super._();

  factory _OtpResponseDto.fromJson(Map<String, dynamic> json) =
      _$OtpResponseDtoImpl.fromJson;

  @override
  String? get message;
  @override
  OtpDataDto? get data;

  /// Create a copy of OtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResponseDtoImplCopyWith<_$OtpResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
