// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_hourly_units.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoHourlyUnitsDto _$$_OpenMeteoHourlyUnitsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoHourlyUnitsDto(
      time: json['time'] as String,
      temperature_2m: json['temperature_2m'] as String,
      relativehumidity_2m: json['relativehumidity_2m'] as String,
      dewpoint_2m: json['dewpoint_2m'] as String,
      apparent_temperature: json['apparent_temperature'] as String,
      precipitation_probability: json['precipitation_probability'] as String,
      precipitation: json['precipitation'] as String,
      rain: json['rain'] as String,
      snowfall: json['snowfall'] as String,
      weathercode: json['weathercode'] as String,
      windspeed_10m: json['windspeed_10m'] as String,
      uv_index: json['uv_index'] as String,
      is_day: json['is_day'] as String,
    );

Map<String, dynamic> _$$_OpenMeteoHourlyUnitsDtoToJson(
        _$_OpenMeteoHourlyUnitsDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature_2m,
      'relativehumidity_2m': instance.relativehumidity_2m,
      'dewpoint_2m': instance.dewpoint_2m,
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
