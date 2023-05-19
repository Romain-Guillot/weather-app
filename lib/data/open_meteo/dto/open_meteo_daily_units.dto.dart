import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_daily_units.dto.freezed.dart';
part 'open_meteo_daily_units.dto.g.dart';

@freezed
class OpenMeteoDailyUnitsDto with _$OpenMeteoDailyUnitsDto {
  factory OpenMeteoDailyUnitsDto({
    required String time,
    required String weathercode,
    @JsonKey(name: 'temperature_2m_max') required String temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required String temperature2mMin,
    @JsonKey(name: 'uv_index_max') required String uvIndexMax,
    @JsonKey(name: 'precipitation_sum') required String precipitationSum,
    @JsonKey(name: 'rain_sum') required String rainSum,
    @JsonKey(name: 'snowfall_sum') required String snowfallSum,
    @JsonKey(name: 'sunrise') required String sunrise,
    @JsonKey(name: 'sunset') required String sunset,
  }) = _OpenMeteoDailyUnitsDto;

  factory OpenMeteoDailyUnitsDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoDailyUnitsDtoFromJson(json);
}
