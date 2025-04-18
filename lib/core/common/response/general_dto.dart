class GeneralDto {
  final Map<String, dynamic> rawData;

  GeneralDto(this.rawData);

  factory GeneralDto.fromJson(Map<String, dynamic> json) {
    return GeneralDto(json);
  }

  dynamic operator [](String key) => rawData[key];

  Map<String, dynamic> toJson() => rawData;
}
