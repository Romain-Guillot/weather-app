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
      temperature_2m_max: json['temperature_2m_max'] as String,
      temperature_2m_min: json['temperature_2m_min'] as String,
      uv_index_max: json['uv_index_max'] as String,
      precipitation_sum: json['precipitation_sum'] as String,
      rain_sum: json['rain_sum'] as String,
      snowfall_sum: json['snowfall_sum'] as String,
    );

Map<String, dynamic> _$$_OpenMeteoDailyUnitsDtoToJson(
        _$_OpenMeteoDailyUnitsDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weathercode': instance.weathercode,
      'temperature_2m_max': instance.temperature_2m_max,
      'temperature_2m_min': instance.temperature_2m_min,
      'uv_index_max': instance.uv_index_max,
      'precipitation_sum': instance.precipitation_sum,
      'rain_sum': instance.rain_sum,
      'snowfall_sum': instance.snowfall_sum,
    };
