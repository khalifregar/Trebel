// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminAuthDto _$AdminAuthDtoFromJson(Map<String, dynamic> json) {
  return _AdminAuthDto.fromJson(json);
}

/// @nodoc
mixin _$AdminAuthDto {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  String? get adminId => throw _privateConstructorUsedError;

  /// Serializes this AdminAuthDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAuthDtoCopyWith<AdminAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthDtoCopyWith<$Res> {
  factory $AdminAuthDtoCopyWith(
          AdminAuthDto value, $Res Function(AdminAuthDto) then) =
      _$AdminAuthDtoCopyWithImpl<$Res, AdminAuthDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'admin_id') String? adminId});
}

/// @nodoc
class _$AdminAuthDtoCopyWithImpl<$Res, $Val extends AdminAuthDto>
    implements $AdminAuthDtoCopyWith<$Res> {
  _$AdminAuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? adminId = freezed,
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
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminAuthDtoImplCopyWith<$Res>
    implements $AdminAuthDtoCopyWith<$Res> {
  factory _$$AdminAuthDtoImplCopyWith(
          _$AdminAuthDtoImpl value, $Res Function(_$AdminAuthDtoImpl) then) =
      __$$AdminAuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role,
      @JsonKey(name: 'admin_id') String? adminId});
}

/// @nodoc
class __$$AdminAuthDtoImplCopyWithImpl<$Res>
    extends _$AdminAuthDtoCopyWithImpl<$Res, _$AdminAuthDtoImpl>
    implements _$$AdminAuthDtoImplCopyWith<$Res> {
  __$$AdminAuthDtoImplCopyWithImpl(
      _$AdminAuthDtoImpl _value, $Res Function(_$AdminAuthDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? adminId = freezed,
  }) {
    return _then(_$AdminAuthDtoImpl(
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
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminAuthDtoImpl extends _AdminAuthDto {
  const _$AdminAuthDtoImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      this.email,
      this.role,
      @JsonKey(name: 'admin_id') this.adminId})
      : super._();

  factory _$AdminAuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAuthDtoImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? email;
  @override
  final String? role;
  @override
  @JsonKey(name: 'admin_id')
  final String? adminId;

  @override
  String toString() {
    return 'AdminAuthDto(accessToken: $accessToken, email: $email, role: $role, adminId: $adminId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAuthDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, email, role, adminId);

  /// Create a copy of AdminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAuthDtoImplCopyWith<_$AdminAuthDtoImpl> get copyWith =>
      __$$AdminAuthDtoImplCopyWithImpl<_$AdminAuthDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAuthDtoImplToJson(
      this,
    );
  }
}

abstract class _AdminAuthDto extends AdminAuthDto {
  const factory _AdminAuthDto(
      {@JsonKey(name: 'access_token') final String? accessToken,
      final String? email,
      final String? role,
      @JsonKey(name: 'admin_id') final String? adminId}) = _$AdminAuthDtoImpl;
  const _AdminAuthDto._() : super._();

  factory _AdminAuthDto.fromJson(Map<String, dynamic> json) =
      _$AdminAuthDtoImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  String? get email;
  @override
  String? get role;
  @override
  @JsonKey(name: 'admin_id')
  String? get adminId;

  /// Create a copy of AdminAuthDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAuthDtoImplCopyWith<_$AdminAuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
