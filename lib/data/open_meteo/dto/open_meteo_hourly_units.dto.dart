import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_hourly_units.dto.freezed.dart';
part 'open_meteo_hourly_units.dto.g.dart';

// TODO(RGU): JsonKey
@freezed
class OpenMeteoHourlyUnitsDto with _$OpenMeteoHourlyUnitsDto {
  factory OpenMeteoHourlyUnitsDto({
    required String time,
    required String temperature_2m,
    required String relativehumidity_2m,
    required String dewpoint_2m,
    required String apparent_temperature,
    required String precipitation_probability,
    required String precipitation,
    required String rain,
    required String snowfall,
    required String weathercode,
    required String windspeed_10m,
    required String uv_index,
    required String is_day,
  }) = _OpenMeteoHourlyUnitsDto;

  factory OpenMeteoHourlyUnitsDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyUnitsDtoFromJson(json);
}
