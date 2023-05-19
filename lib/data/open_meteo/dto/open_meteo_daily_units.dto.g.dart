// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_daily_units.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoDailyUnitsDto _$$_OpenMeteoDailyUnitsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoDailyUnitsDto(
      time: json['time'] as String,
      weathercode: json['weathercode'] as String,
      temperature2mMax: json['temperature_2m_max'] as String,
      temperature2mMin: json['temperature_2m_min'] as String,
      uvIndexMax: json['uv_index_max'] as String,
      precipitationSum: json['precipitation_sum'] as String,
      rainSum: json['rain_sum'] as String,
      snowfallSum: json['snowfall_sum'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
    );

Map<String, dynamic> _$$_OpenMeteoDailyUnitsDtoToJson(
        _$_OpenMeteoDailyUnitsDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weathercode': instance.weathercode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'uv_index_max': instance.uvIndexMax,
      'precipitation_sum': instance.precipitationSum,
      'rain_sum': instance.rainSum,
      'snowfall_sum': instance.snowfallSum,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
