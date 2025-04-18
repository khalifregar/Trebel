// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'superadmin_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperadminAuthRequest _$SuperadminAuthRequestFromJson(
    Map<String, dynamic> json) {
  return _SuperadminAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$SuperadminAuthRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'superadmin_id')
  String? get superadminId => throw _privateConstructorUsedError;

  /// Serializes this SuperadminAuthRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperadminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperadminAuthRequestCopyWith<SuperadminAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperadminAuthRequestCopyWith<$Res> {
  factory $SuperadminAuthRequestCopyWith(SuperadminAuthRequest value,
          $Res Function(SuperadminAuthRequest) then) =
      _$SuperadminAuthRequestCopyWithImpl<$Res, SuperadminAuthRequest>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'superadmin_id') String? superadminId});
}

/// @nodoc
class _$SuperadminAuthRequestCopyWithImpl<$Res,
        $Val extends SuperadminAuthRequest>
    implements $SuperadminAuthRequestCopyWith<$Res> {
  _$SuperadminAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperadminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? superadminId = freezed,
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
      superadminId: freezed == superadminId
          ? _value.superadminId
          : superadminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperadminAuthRequestImplCopyWith<$Res>
    implements $SuperadminAuthRequestCopyWith<$Res> {
  factory _$$SuperadminAuthRequestImplCopyWith(
          _$SuperadminAuthRequestImpl value,
          $Res Function(_$SuperadminAuthRequestImpl) then) =
      __$$SuperadminAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'superadmin_id') String? superadminId});
}

/// @nodoc
class __$$SuperadminAuthRequestImplCopyWithImpl<$Res>
    extends _$SuperadminAuthRequestCopyWithImpl<$Res,
        _$SuperadminAuthRequestImpl>
    implements _$$SuperadminAuthRequestImplCopyWith<$Res> {
  __$$SuperadminAuthRequestImplCopyWithImpl(_$SuperadminAuthRequestImpl _value,
      $Res Function(_$SuperadminAuthRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuperadminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? superadminId = freezed,
  }) {
    return _then(_$SuperadminAuthRequestImpl(
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
      superadminId: freezed == superadminId
          ? _value.superadminId
          : superadminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperadminAuthRequestImpl implements _SuperadminAuthRequest {
  _$SuperadminAuthRequestImpl(
      {this.email,
      this.password,
      this.name,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'superadmin_id') this.superadminId});

  factory _$SuperadminAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperadminAuthRequestImplFromJson(json);

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
  @JsonKey(name: 'superadmin_id')
  final String? superadminId;

  @override
  String toString() {
    return 'SuperadminAuthRequest(email: $email, password: $password, name: $name, accessToken: $accessToken, superadminId: $superadminId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminAuthRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.superadminId, superadminId) ||
                other.superadminId == superadminId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, name, accessToken, superadminId);

  /// Create a copy of SuperadminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminAuthRequestImplCopyWith<_$SuperadminAuthRequestImpl>
      get copyWith => __$$SuperadminAuthRequestImplCopyWithImpl<
          _$SuperadminAuthRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperadminAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _SuperadminAuthRequest implements SuperadminAuthRequest {
  factory _SuperadminAuthRequest(
          {final String? email,
          final String? password,
          final String? name,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'superadmin_id') final String? superadminId}) =
      _$SuperadminAuthRequestImpl;

  factory _SuperadminAuthRequest.fromJson(Map<String, dynamic> json) =
      _$SuperadminAuthRequestImpl.fromJson;

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
  @JsonKey(name: 'superadmin_id')
  String? get superadminId;

  /// Create a copy of SuperadminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminAuthRequestImplCopyWith<_$SuperadminAuthRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
