import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_daily_units.dto.freezed.dart';
part 'open_meteo_daily_units.dto.g.dart';

// TODO(RGU): JsonKey
@freezed
class OpenMeteoDailyUnitsDto with _$OpenMeteoDailyUnitsDto {
  factory OpenMeteoDailyUnitsDto({
    required String time,
    required String weathercode,
    required String temperature_2m_max,
    required String temperature_2m_min,
    required String uv_index_max,
    required String precipitation_sum,
    required String rain_sum,
    required String snowfall_sum,
  }) = _OpenMeteoDailyUnitsDto;

  factory OpenMeteoDailyUnitsDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoDailyUnitsDtoFromJson(json);
}
