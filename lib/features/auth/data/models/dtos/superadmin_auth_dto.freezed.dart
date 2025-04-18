// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'superadmin_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperadminAuthDto _$SuperadminAuthDtoFromJson(Map<String, dynamic> json) {
  return _SuperadminAuthDto.fromJson(json);
}

/// @nodoc
mixin _$SuperadminAuthDto {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'superadmin_id')
  String? get superadminId => throw _privateConstructorUsedError;

  /// Serializes this SuperadminAuthDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperadminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperadminAuthDtoCopyWith<SuperadminAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperadminAuthDtoCopyWith<$Res> {
  factory $SuperadminAuthDtoCopyWith(
          SuperadminAuthDto value, $Res Function(SuperadminAuthDto) then) =
      _$SuperadminAuthDtoCopyWithImpl<$Res, SuperadminAuthDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'superadmin_id') String? superadminId});
}

/// @nodoc
class _$SuperadminAuthDtoCopyWithImpl<$Res, $Val extends SuperadminAuthDto>
    implements $SuperadminAuthDtoCopyWith<$Res> {
  _$SuperadminAuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperadminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? superadminId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      superadminId: freezed == superadminId
          ? _value.superadminId
          : superadminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperadminAuthDtoImplCopyWith<$Res>
    implements $SuperadminAuthDtoCopyWith<$Res> {
  factory _$$SuperadminAuthDtoImplCopyWith(_$SuperadminAuthDtoImpl value,
          $Res Function(_$SuperadminAuthDtoImpl) then) =
      __$$SuperadminAuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'superadmin_id') String? superadminId});
}

/// @nodoc
class __$$SuperadminAuthDtoImplCopyWithImpl<$Res>
    extends _$SuperadminAuthDtoCopyWithImpl<$Res, _$SuperadminAuthDtoImpl>
    implements _$$SuperadminAuthDtoImplCopyWith<$Res> {
  __$$SuperadminAuthDtoImplCopyWithImpl(_$SuperadminAuthDtoImpl _value,
      $Res Function(_$SuperadminAuthDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? superadminId = freezed,
  }) {
    return _then(_$SuperadminAuthDtoImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      superadminId: freezed == superadminId
          ? _value.superadminId
          : superadminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperadminAuthDtoImpl extends _SuperadminAuthDto {
  const _$SuperadminAuthDtoImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      this.email,
      this.role,
      @JsonKey(name: 'superadmin_id') this.superadminId})
      : super._();

  factory _$SuperadminAuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperadminAuthDtoImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? email;
  @override
  final String? role;
  @override
  @JsonKey(name: 'superadmin_id')
  final String? superadminId;

  @override
  String toString() {
    return 'SuperadminAuthDto(accessToken: $accessToken, email: $email, role: $role, superadminId: $superadminId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.superadminId, superadminId) ||
                other.superadminId == superadminId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, email, role, superadminId);

  /// Create a copy of SuperadminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminAuthDtoImplCopyWith<_$SuperadminAuthDtoImpl> get copyWith =>
      __$$SuperadminAuthDtoImplCopyWithImpl<_$SuperadminAuthDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperadminAuthDtoImplToJson(
      this,
    );
  }
}

abstract class _SuperadminAuthDto extends SuperadminAuthDto {
  const factory _SuperadminAuthDto(
          {@JsonKey(name: 'access_token') final String? accessToken,
          final String? email,
          final String? role,
          @JsonKey(name: 'superadmin_id') final String? superadminId}) =
      _$SuperadminAuthDtoImpl;
  const _SuperadminAuthDto._() : super._();

  factory _SuperadminAuthDto.fromJson(Map<String, dynamic> json) =
      _$SuperadminAuthDtoImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  String? get email;
  @override
  String? get role;
  @override
  @JsonKey(name: 'superadmin_id')
  String? get superadminId;

  /// Create a copy of SuperadminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminAuthDtoImplCopyWith<_$SuperadminAuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
