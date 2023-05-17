import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_hourly.dto.freezed.dart';
part 'open_meteo_hourly.dto.g.dart';

@freezed
class OpenMeteoHourlyDto with _$OpenMeteoHourlyDto {
  factory OpenMeteoHourlyDto({
    required List<String> time,
    required List<double> temperature_2m,
    required List<double> relativehumidity_2m,
    required List<double> apparent_temperature,
    required List<double> precipitation_probability,
    required List<double> precipitation,
    required List<double> rain,
    required List<double> snowfall,
    required List<int> weathercode,
    required List<double> windspeed_10m,
    required List<double> uv_index,
    required List<bool> is_day,
  }) = _OpenMeteoHourlyDto;

  factory OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyDtoFromJson(json);
}
