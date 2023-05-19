import 'package:ox_sdk/ox_sdk.dart';

part 'open_meteo_daily.dto.freezed.dart';
part 'open_meteo_daily.dto.g.dart';

@freezed
class OpenMeteoDailyDto with _$OpenMeteoDailyDto {
  factory OpenMeteoDailyDto({
    required List<String> time,
    required List<int?> weathercode,
    @JsonKey(name: 'temperature_2m_max') required List<double?> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required List<double?> temperature2mMin,
    @JsonKey(name: 'uv_index_max') required List<double?> uvIndexMax,
    @JsonKey(name: 'precipitation_sum') required List<double?> precipitationSum,
    @JsonKey(name: 'rain_sum') required List<double?> rainSum,
    @JsonKey(name: 'snowfall_sum') required List<double?> snowfallSum,
    @JsonKey(name: 'sunrise') required List<DateTime?> sunrise,
    @JsonKey(name: 'sunset') required List<DateTime?> sunset,
  }) = _OpenMeteoDailyDto;

  factory OpenMeteoDailyDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoDailyDtoFromJson(json);
}
