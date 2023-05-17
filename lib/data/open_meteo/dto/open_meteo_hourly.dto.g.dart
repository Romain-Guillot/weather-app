// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_hourly.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoHourlyDto _$$_OpenMeteoHourlyDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoHourlyDto(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature_2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      relativehumidity_2m: (json['relativehumidity_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      apparent_temperature: (json['apparent_temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitation_probability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      rain: (json['rain'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      snowfall: (json['snowfall'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weathercode:
          (json['weathercode'] as List<dynamic>).map((e) => e as int).toList(),
      windspeed_10m: (json['windspeed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      uv_index: (json['uv_index'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      is_day: (json['is_day'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$_OpenMeteoHourlyDtoToJson(
        _$_OpenMeteoHourlyDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature_2m,
      'relativehumidity_2m': instance.relativehumidity_2m,
      'apparent_temperature': instance.apparent_temperature,
      'precipitation_probability': instance.precipitation_probability,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'snowfall': instance.snowfall,
      'weathercode': instance.weathercode,
      'windspeed_10m': instance.windspeed_10m,
      'uv_index': instance.uv_index,
      'is_day': instance.is_day,
    };
