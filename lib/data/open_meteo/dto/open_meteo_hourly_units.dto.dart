import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_hourly_units.dto.freezed.dart';
part 'open_meteo_hourly_units.dto.g.dart';

@freezed
class OpenMeteoHourlyUnitsDto with _$OpenMeteoHourlyUnitsDto {
  factory OpenMeteoHourlyUnitsDto({
    @JsonKey(name: 'time') required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2m,
    @JsonKey(name: 'relativehumidity_2m') required String relativehumidity2m,
    @JsonKey(name: 'dewpoint_2m') required String dewpoint2m,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
    @JsonKey(name: 'precipitation_probability') required String precipitationProbability,
    @JsonKey(name: 'precipitation') required String precipitation,
    @JsonKey(name: 'rain') required String rain,
    @JsonKey(name: 'snowfall') required String snowfall,
    @JsonKey(name: 'weathercode') required String weathercode,
    @JsonKey(name: 'windspeed_10m') required String windspeed10m,
    @JsonKey(name: 'uv_index') required String uvIndex,
    @JsonKey(name: 'is_day') required String isDay,
  }) = _OpenMeteoHourlyUnitsDto;

  factory OpenMeteoHourlyUnitsDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyUnitsDtoFromJson(json);
}
