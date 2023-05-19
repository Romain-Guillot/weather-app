import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_hourly.dto.freezed.dart';
part 'open_meteo_hourly.dto.g.dart';

class BoolIntConverter implements JsonConverter<bool, int> {
  const BoolIntConverter();

  @override
  bool fromJson(int json) {
    return json == 1;
  }

  @override
  int toJson(bool data) => data ? 1 : 0;
}

@freezed
class OpenMeteoHourlyDto with _$OpenMeteoHourlyDto {
  factory OpenMeteoHourlyDto({
    @JsonKey(name: 'time') required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double?> temperature2m,
    @JsonKey(name: 'relativehumidity_2m') required List<double?> relativehumidity2m,
    @JsonKey(name: 'apparent_temperature') required List<double?> apparentTemperature,
    @JsonKey(name: 'precipitation_probability') required List<double?> precipitationProbability,
    @JsonKey(name: 'precipitation') required List<double?> precipitation,
    @JsonKey(name: 'rain') required List<double?> rain,
    @JsonKey(name: 'snowfall') required List<double?> snowfall,
    @JsonKey(name: 'weathercode') required List<int?> weathercode,
    @JsonKey(name: 'windspeed_10m') required List<double?> windspeed10m,
    @JsonKey(name: 'uv_index') required List<double?> uvIndex,
    @BoolIntConverter() @JsonKey(name: 'is_day') required List<bool?> isDay,
  }) = _OpenMeteoHourlyDto;

  factory OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyDtoFromJson(json);
}
