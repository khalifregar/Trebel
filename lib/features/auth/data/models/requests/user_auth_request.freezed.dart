// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthRequest _$UserAuthRequestFromJson(Map<String, dynamic> json) {
  return _UserAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$UserAuthRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UserAuthRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthRequestCopyWith<UserAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthRequestCopyWith<$Res> {
  factory $UserAuthRequestCopyWith(
          UserAuthRequest value, $Res Function(UserAuthRequest) then) =
      _$UserAuthRequestCopyWithImpl<$Res, UserAuthRequest>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$UserAuthRequestCopyWithImpl<$Res, $Val extends UserAuthRequest>
    implements $UserAuthRequestCopyWith<$Res> {
  _$UserAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthRequestImplCopyWith<$Res>
    implements $UserAuthRequestCopyWith<$Res> {
  factory _$$UserAuthRequestImplCopyWith(_$UserAuthRequestImpl value,
          $Res Function(_$UserAuthRequestImpl) then) =
      __$$UserAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$$UserAuthRequestImplCopyWithImpl<$Res>
    extends _$UserAuthRequestCopyWithImpl<$Res, _$UserAuthRequestImpl>
    implements _$$UserAuthRequestImplCopyWith<$Res> {
  __$$UserAuthRequestImplCopyWithImpl(
      _$UserAuthRequestImpl _value, $Res Function(_$UserAuthRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UserAuthRequestImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
class _$UserAuthRequestImpl implements _UserAuthRequest {
  _$UserAuthRequestImpl(
      {this.email,
      this.password,
      this.name,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'user_id') this.userId});

  factory _$UserAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthRequestImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString() {
    return 'UserAuthRequest(email: $email, password: $password, name: $name, accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, accessToken, userId);

  /// Create a copy of UserAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthRequestImplCopyWith<_$UserAuthRequestImpl> get copyWith =>
      __$$UserAuthRequestImplCopyWithImpl<_$UserAuthRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _UserAuthRequest implements UserAuthRequest {
  factory _UserAuthRequest(
      {final String? email,
      final String? password,
      final String? name,
      @JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'user_id') final String? userId}) = _$UserAuthRequestImpl;

  factory _UserAuthRequest.fromJson(Map<String, dynamic> json) =
      _$UserAuthRequestImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get name;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;

  /// Create a copy of UserAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthRequestImplCopyWith<_$UserAuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
