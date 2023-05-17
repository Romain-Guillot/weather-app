import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_daily.dto.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_daily_units.dto.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_hourly.dto.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_hourly_units.dto.dart';

part 'open_meteo_response.dto.freezed.dart';
part 'open_meteo_response.dto.g.dart';

@freezed
class OpenMeteoResponseDto with _$OpenMeteoResponseDto {
  factory OpenMeteoResponseDto({
    required double latitude,
    required double longitute,
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation') required String timezoneAbbreviation,
    required double elevation,
    @JsonKey(name: 'hourly_units') required OpenMeteoHourlyUnitsDto hourlyUnits,
    required OpenMeteoHourlyDto hourly,
    @JsonKey(name: 'daily_units') required OpenMeteoDailyUnitsDto dailyUnits,
    required OpenMeteoDailyDto daily,
  }) = _OpenMeteoResponseDto;

  factory OpenMeteoResponseDto.fromJson(Map<String, dynamic> json) => _$OpenMeteoResponseDtoFromJson(json);
}
