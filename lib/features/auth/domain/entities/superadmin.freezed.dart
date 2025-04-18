// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'superadmin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Superadmin {
  @JsonKey(name: 'superadmin_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Create a copy of Superadmin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperadminCopyWith<Superadmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperadminCopyWith<$Res> {
  factory $SuperadminCopyWith(
          Superadmin value, $Res Function(Superadmin) then) =
      _$SuperadminCopyWithImpl<$Res, Superadmin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'superadmin_id') String? id,
      @JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role});
}

/// @nodoc
class _$SuperadminCopyWithImpl<$Res, $Val extends Superadmin>
    implements $SuperadminCopyWith<$Res> {
  _$SuperadminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Superadmin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperadminImplCopyWith<$Res>
    implements $SuperadminCopyWith<$Res> {
  factory _$$SuperadminImplCopyWith(
          _$SuperadminImpl value, $Res Function(_$SuperadminImpl) then) =
      __$$SuperadminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'superadmin_id') String? id,
      @JsonKey(name: 'access_token') String? accessToken,
      String? email,
      String? role});
}

/// @nodoc
class __$$SuperadminImplCopyWithImpl<$Res>
    extends _$SuperadminCopyWithImpl<$Res, _$SuperadminImpl>
    implements _$$SuperadminImplCopyWith<$Res> {
  __$$SuperadminImplCopyWithImpl(
      _$SuperadminImpl _value, $Res Function(_$SuperadminImpl) _then)
      : super(_value, _then);

  /// Create a copy of Superadmin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? role = freezed,
  }) {
    return _then(_$SuperadminImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc

class _$SuperadminImpl implements _Superadmin {
  const _$SuperadminImpl(
      {@JsonKey(name: 'superadmin_id') this.id,
      @JsonKey(name: 'access_token') this.accessToken,
      this.email,
      this.role});

  @override
  @JsonKey(name: 'superadmin_id')
  final String? id;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? email;
  @override
  final String? role;

  @override
  String toString() {
    return 'Superadmin(id: $id, accessToken: $accessToken, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperadminImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, accessToken, email, role);

  /// Create a copy of Superadmin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperadminImplCopyWith<_$SuperadminImpl> get copyWith =>
      __$$SuperadminImplCopyWithImpl<_$SuperadminImpl>(this, _$identity);
}

abstract class _Superadmin implements Superadmin {
  const factory _Superadmin(
      {@JsonKey(name: 'superadmin_id') final String? id,
      @JsonKey(name: 'access_token') final String? accessToken,
      final String? email,
      final String? role}) = _$SuperadminImpl;

  @override
  @JsonKey(name: 'superadmin_id')
  String? get id;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  String? get email;
  @override
  String? get role;

  /// Create a copy of Superadmin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperadminImplCopyWith<_$SuperadminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
