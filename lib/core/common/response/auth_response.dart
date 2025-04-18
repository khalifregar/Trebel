class AuthResponse {
  final String accessToken;
  final String email;
  final String role;
  final String adminId;

  AuthResponse({
    required this.accessToken,
    required this.email,
    required this.role,
    required this.adminId,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      accessToken: json['access_token'] ?? '',
      email: json['email'] ?? '',
      role: json['role'] ?? '',
      adminId: json['admin_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'email': email,
        'role': role,
        'admin_id': adminId,
      };
}
