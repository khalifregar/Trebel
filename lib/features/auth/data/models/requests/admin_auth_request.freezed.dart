// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminAuthRequest _$AdminAuthRequestFromJson(Map<String, dynamic> json) {
  return _AdminAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$AdminAuthRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  String? get adminId => throw _privateConstructorUsedError;

  /// Serializes this AdminAuthRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAuthRequestCopyWith<AdminAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAuthRequestCopyWith<$Res> {
  factory $AdminAuthRequestCopyWith(
          AdminAuthRequest value, $Res Function(AdminAuthRequest) then) =
      _$AdminAuthRequestCopyWithImpl<$Res, AdminAuthRequest>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'admin_id') String? adminId});
}

/// @nodoc
class _$AdminAuthRequestCopyWithImpl<$Res, $Val extends AdminAuthRequest>
    implements $AdminAuthRequestCopyWith<$Res> {
  _$AdminAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? adminId = freezed,
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
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminAuthRequestImplCopyWith<$Res>
    implements $AdminAuthRequestCopyWith<$Res> {
  factory _$$AdminAuthRequestImplCopyWith(_$AdminAuthRequestImpl value,
          $Res Function(_$AdminAuthRequestImpl) then) =
      __$$AdminAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? name,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'admin_id') String? adminId});
}

/// @nodoc
class __$$AdminAuthRequestImplCopyWithImpl<$Res>
    extends _$AdminAuthRequestCopyWithImpl<$Res, _$AdminAuthRequestImpl>
    implements _$$AdminAuthRequestImplCopyWith<$Res> {
  __$$AdminAuthRequestImplCopyWithImpl(_$AdminAuthRequestImpl _value,
      $Res Function(_$AdminAuthRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? adminId = freezed,
  }) {
    return _then(_$AdminAuthRequestImpl(
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
      adminId: freezed == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminAuthRequestImpl implements _AdminAuthRequest {
  _$AdminAuthRequestImpl(
      {this.email,
      this.password,
      this.name,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'admin_id') this.adminId});

  factory _$AdminAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAuthRequestImplFromJson(json);

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
  @JsonKey(name: 'admin_id')
  final String? adminId;

  @override
  String toString() {
    return 'AdminAuthRequest(email: $email, password: $password, name: $name, accessToken: $accessToken, adminId: $adminId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAuthRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, accessToken, adminId);

  /// Create a copy of AdminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAuthRequestImplCopyWith<_$AdminAuthRequestImpl> get copyWith =>
      __$$AdminAuthRequestImplCopyWithImpl<_$AdminAuthRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _AdminAuthRequest implements AdminAuthRequest {
  factory _AdminAuthRequest(
          {final String? email,
          final String? password,
          final String? name,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'admin_id') final String? adminId}) =
      _$AdminAuthRequestImpl;

  factory _AdminAuthRequest.fromJson(Map<String, dynamic> json) =
      _$AdminAuthRequestImpl.fromJson;

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
  @JsonKey(name: 'admin_id')
  String? get adminId;

  /// Create a copy of AdminAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAuthRequestImplCopyWith<_$AdminAuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
