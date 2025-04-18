// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthDto _$UserAuthDtoFromJson(Map<String, dynamic> json) {
  return _UserAuthDto.fromJson(json);
}

/// @nodoc
mixin _$UserAuthDto {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UserAuthDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthDtoCopyWith<UserAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthDtoCopyWith<$Res> {
  factory $UserAuthDtoCopyWith(
          UserAuthDto value, $Res Function(UserAuthDto) then) =
      _$UserAuthDtoCopyWithImpl<$Res, UserAuthDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$UserAuthDtoCopyWithImpl<$Res, $Val extends UserAuthDto>
    implements $UserAuthDtoCopyWith<$Res> {
  _$UserAuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? userId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthDtoImplCopyWith<$Res>
    implements $UserAuthDtoCopyWith<$Res> {
  factory _$$UserAuthDtoImplCopyWith(
          _$UserAuthDtoImpl value, $Res Function(_$UserAuthDtoImpl) then) =
      __$$UserAuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$$UserAuthDtoImplCopyWithImpl<$Res>
    extends _$UserAuthDtoCopyWithImpl<$Res, _$UserAuthDtoImpl>
    implements _$$UserAuthDtoImplCopyWith<$Res> {
  __$$UserAuthDtoImplCopyWithImpl(
      _$UserAuthDtoImpl _value, $Res Function(_$UserAuthDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UserAuthDtoImpl(
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthDtoImpl extends _UserAuthDto {
  const _$UserAuthDtoImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      this.email,
      this.role,
      @JsonKey(name: 'user_id') this.userId})
      : super._();

  factory _$UserAuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthDtoImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? email;
  @override
  final String? role;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString() {
    return 'UserAuthDto(accessToken: $accessToken, email: $email, role: $role, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, email, role, userId);

  /// Create a copy of UserAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthDtoImplCopyWith<_$UserAuthDtoImpl> get copyWith =>
      __$$UserAuthDtoImplCopyWithImpl<_$UserAuthDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAuthDto extends UserAuthDto {
  const factory _UserAuthDto(
      {@JsonKey(name: 'access_token') final String? accessToken,
      final String? email,
      final String? role,
      @JsonKey(name: 'user_id') final String? userId}) = _$UserAuthDtoImpl;
  const _UserAuthDto._() : super._();

  factory _UserAuthDto.fromJson(Map<String, dynamic> json) =
      _$UserAuthDtoImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  String? get email;
  @override
  String? get role;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;

  /// Create a copy of UserAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthDtoImplCopyWith<_$UserAuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
