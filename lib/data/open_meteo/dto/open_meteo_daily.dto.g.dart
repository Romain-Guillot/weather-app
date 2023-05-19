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
      temperature2mMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      temperature2mMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      uvIndexMax: (json['uv_index_max'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      precipitationSum: (json['precipitation_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      rainSum: (json['rain_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      snowfallSum: (json['snowfall_sum'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      sunrise: (json['sunrise'] as List<dynamic>)
          .map((e) => e == null ? null : DateTime.parse(e as String))
          .toList(),
      sunset: (json['sunset'] as List<dynamic>)
          .map((e) => e == null ? null : DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$_OpenMeteoDailyDtoToJson(
        _$_OpenMeteoDailyDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weathercode': instance.weathercode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'uv_index_max': instance.uvIndexMax,
      'precipitation_sum': instance.precipitationSum,
      'rain_sum': instance.rainSum,
      'snowfall_sum': instance.snowfallSum,
      'sunrise': instance.sunrise.map((e) => e?.toIso8601String()).toList(),
      'sunset': instance.sunset.map((e) => e?.toIso8601String()).toList(),
    };
