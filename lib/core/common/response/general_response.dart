class GeneralResponse<T> {
  final String status;
  final String message;
  final T? data;

  GeneralResponse({
    required this.status,
    required this.message,
    this.data,
  });

  /// Helper: true jika status "success"
  bool get isSuccess => status.toLowerCase() == 'success';

  /// Helper: true jika bukan "success"
  bool get isError => !isSuccess;

  /// Parsing dari JSON, dengan pengecekan aman pada data
  factory GeneralResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json)? fromJsonT,
  ) {
    final rawData = json['data'];

    T? parsedData;

    if (rawData is Map<String, dynamic> && fromJsonT != null) {
      parsedData = fromJsonT(rawData);
    }

    return GeneralResponse(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      data: parsedData,
    );
  }

  /// Convert ke JSON
  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value)? toJsonT) {
    return {
      'status': status,
      'message': message,
      'data': data != null && toJsonT != null ? toJsonT(data as T) : null,
    };
  }
}
