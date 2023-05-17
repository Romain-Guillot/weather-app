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
    required List<String> time,
    required List<double?> temperature_2m,
    required List<double?> relativehumidity_2m,
    required List<double?> apparent_temperature,
    required List<double?> precipitation_probability,
    required List<double?> precipitation,
    required List<double?> rain,
    required List<double?> snowfall,
    required List<int?> weathercode,
    required List<double?> windspeed_10m,
    required List<double?> uv_index,
    @BoolIntConverter() required List<bool?> is_day,
  }) = _OpenMeteoHourlyDto;

  factory OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyDtoFromJson(json);
}
