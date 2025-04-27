import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? email,
    @JsonKey(name: 'username') String? userName,
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) => UserDto(
        id: user.id,
        userId: user.userId,
        email: user.email,
        userName: user.userName,
        accessToken: user.accessToken,
      );

  User toDomain() => User(
        id: id,
        userId: userId,
        email: email,
        userName: userName,
        accessToken: accessToken,
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  static List<User> fromJsonList(List<dynamic> list) =>
      list.map((e) => UserDto.fromJson(e).toDomain()).toList();
}
