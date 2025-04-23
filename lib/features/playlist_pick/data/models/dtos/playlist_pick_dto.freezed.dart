// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_pick_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistPickDto _$PlaylistPickDtoFromJson(Map<String, dynamic> json) {
  return _PlaylistPickDto.fromJson(json);
}

/// @nodoc
mixin _$PlaylistPickDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this PlaylistPickDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistPickDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistPickDtoCopyWith<PlaylistPickDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPickDtoCopyWith<$Res> {
  factory $PlaylistPickDtoCopyWith(
          PlaylistPickDto value, $Res Function(PlaylistPickDto) then) =
      _$PlaylistPickDtoCopyWithImpl<$Res, PlaylistPickDto>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class _$PlaylistPickDtoCopyWithImpl<$Res, $Val extends PlaylistPickDto>
    implements $PlaylistPickDtoCopyWith<$Res> {
  _$PlaylistPickDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistPickDto
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
abstract class _$$PlaylistPickDtoImplCopyWith<$Res>
    implements $PlaylistPickDtoCopyWith<$Res> {
  factory _$$PlaylistPickDtoImplCopyWith(_$PlaylistPickDtoImpl value,
          $Res Function(_$PlaylistPickDtoImpl) then) =
      __$$PlaylistPickDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class __$$PlaylistPickDtoImplCopyWithImpl<$Res>
    extends _$PlaylistPickDtoCopyWithImpl<$Res, _$PlaylistPickDtoImpl>
    implements _$$PlaylistPickDtoImplCopyWith<$Res> {
  __$$PlaylistPickDtoImplCopyWithImpl(
      _$PlaylistPickDtoImpl _value, $Res Function(_$PlaylistPickDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistPickDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$PlaylistPickDtoImpl(
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
class _$PlaylistPickDtoImpl extends _PlaylistPickDto {
  const _$PlaylistPickDtoImpl(
      {this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'imageUrl') this.imageUrl})
      : super._();

  factory _$PlaylistPickDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistPickDtoImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @override
  String toString() {
    return 'PlaylistPickDto(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPickDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  /// Create a copy of PlaylistPickDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPickDtoImplCopyWith<_$PlaylistPickDtoImpl> get copyWith =>
      __$$PlaylistPickDtoImplCopyWithImpl<_$PlaylistPickDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistPickDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaylistPickDto extends PlaylistPickDto {
  const factory _PlaylistPickDto(
          {final String? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'imageUrl') final String? imageUrl}) =
      _$PlaylistPickDtoImpl;
  const _PlaylistPickDto._() : super._();

  factory _PlaylistPickDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistPickDtoImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;

  /// Create a copy of PlaylistPickDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistPickDtoImplCopyWith<_$PlaylistPickDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
