// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_daily.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoDailyDto _$$_OpenMeteoDailyDtoFromJson(Map<String, dynamic> json) =>
    _$_OpenMeteoDailyDto(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weathercode:
          (json['weathercode'] as List<dynamic>).map((e) => e as int?).toList(),
      temperature_2m_max: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      temperature_2m_min: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      uv_index_max: (json['uv_index_max'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      precipitation_sum: (json['precipitation_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      rain_sum: (json['rain_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      snowfall_sum: (json['snowfall_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_OpenMeteoDailyDtoToJson(
        _$_OpenMeteoDailyDto instance) =>
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
