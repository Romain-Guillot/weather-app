import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_daily.dto.freezed.dart';
part 'open_meteo_daily.dto.g.dart';

// TODO(RGU): JsonKey
@freezed
class OpenMeteoDailyDto with _$OpenMeteoDailyDto {
  factory OpenMeteoDailyDto({
    required List<String> time,
    required List<int> weathercode,
    required List<double> temperature_2m_max,
    required List<double> temperature_2m_min,
    required List<double> uv_index_max,
    required List<double> precipitation_sum,
    required List<double> rain_sum,
    required List<double> snowfall_sum,
  }) = _OpenMeteoDailyDto;

  factory OpenMeteoDailyDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoDailyDtoFromJson(json);
}
