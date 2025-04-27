// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;

  /// Serializes this UserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
          UserRequest value, $Res Function(UserRequest) then) =
      _$UserRequestCopyWithImpl<$Res, UserRequest>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? email,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest>
    implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRequestImplCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$$UserRequestImplCopyWith(
          _$UserRequestImpl value, $Res Function(_$UserRequestImpl) then) =
      __$$UserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? email,
      @JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'access_token') String? accessToken});
}

/// @nodoc
class __$$UserRequestImplCopyWithImpl<$Res>
    extends _$UserRequestCopyWithImpl<$Res, _$UserRequestImpl>
    implements _$$UserRequestImplCopyWith<$Res> {
  __$$UserRequestImplCopyWithImpl(
      _$UserRequestImpl _value, $Res Function(_$UserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$UserRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequestImpl implements _UserRequest {
  _$UserRequestImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.email,
      @JsonKey(name: 'username') this.userName,
      @JsonKey(name: 'access_token') this.accessToken});

  factory _$UserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? email;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;

  @override
  String toString() {
    return 'UserRequest(id: $id, userId: $userId, email: $email, userName: $userName, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, email, userName, accessToken);

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      __$$UserRequestImplCopyWithImpl<_$UserRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRequest implements UserRequest {
  factory _UserRequest(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          final String? email,
          @JsonKey(name: 'username') final String? userName,
          @JsonKey(name: 'access_token') final String? accessToken}) =
      _$UserRequestImpl;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$UserRequestImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get email;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
