// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_pick_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistPickRequest _$PlaylistPickRequestFromJson(Map<String, dynamic> json) {
  return _PlaylistPickRequest.fromJson(json);
}

/// @nodoc
mixin _$PlaylistPickRequest {
  String? get id =>
      throw _privateConstructorUsedError; // ✅ Tambahkan id jika API membutuhkan referensi
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this PlaylistPickRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistPickRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistPickRequestCopyWith<PlaylistPickRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPickRequestCopyWith<$Res> {
  factory $PlaylistPickRequestCopyWith(
          PlaylistPickRequest value, $Res Function(PlaylistPickRequest) then) =
      _$PlaylistPickRequestCopyWithImpl<$Res, PlaylistPickRequest>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class _$PlaylistPickRequestCopyWithImpl<$Res, $Val extends PlaylistPickRequest>
    implements $PlaylistPickRequestCopyWith<$Res> {
  _$PlaylistPickRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistPickRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistPickRequestImplCopyWith<$Res>
    implements $PlaylistPickRequestCopyWith<$Res> {
  factory _$$PlaylistPickRequestImplCopyWith(_$PlaylistPickRequestImpl value,
          $Res Function(_$PlaylistPickRequestImpl) then) =
      __$$PlaylistPickRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class __$$PlaylistPickRequestImplCopyWithImpl<$Res>
    extends _$PlaylistPickRequestCopyWithImpl<$Res, _$PlaylistPickRequestImpl>
    implements _$$PlaylistPickRequestImplCopyWith<$Res> {
  __$$PlaylistPickRequestImplCopyWithImpl(_$PlaylistPickRequestImpl _value,
      $Res Function(_$PlaylistPickRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$PlaylistPickRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistPickRequestImpl implements _PlaylistPickRequest {
  _$PlaylistPickRequestImpl(
      {this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'imageUrl') this.imageUrl});

  factory _$PlaylistPickRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistPickRequestImplFromJson(json);

  @override
  final String? id;
// ✅ Tambahkan id jika API membutuhkan referensi
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @override
  String toString() {
    return 'PlaylistPickRequest(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  /// Create a copy of PlaylistPickRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPickRequestImplCopyWith<_$PlaylistPickRequestImpl> get copyWith =>
      __$$PlaylistPickRequestImplCopyWithImpl<_$PlaylistPickRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistPickRequestImplToJson(
      this,
    );
  }
}

abstract class _PlaylistPickRequest implements PlaylistPickRequest {
  factory _PlaylistPickRequest(
          {final String? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'imageUrl') final String? imageUrl}) =
      _$PlaylistPickRequestImpl;

  factory _PlaylistPickRequest.fromJson(Map<String, dynamic> json) =
      _$PlaylistPickRequestImpl.fromJson;

  @override
  String? get id; // ✅ Tambahkan id jika API membutuhkan referensi
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;

  /// Create a copy of PlaylistPickRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistPickRequestImplCopyWith<_$PlaylistPickRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
