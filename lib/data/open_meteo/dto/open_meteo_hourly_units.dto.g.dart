// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_hourly_units.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoHourlyUnitsDto _$$_OpenMeteoHourlyUnitsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoHourlyUnitsDto(
      time: json['time'] as String,
      temperature2m: json['temperature_2m'] as String,
      relativehumidity2m: json['relativehumidity_2m'] as String,
      dewpoint2m: json['dewpoint_2m'] as String,
      apparentTemperature: json['apparent_temperature'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      precipitation: json['precipitation'] as String,
      rain: json['rain'] as String,
      snowfall: json['snowfall'] as String,
      weathercode: json['weathercode'] as String,
      windspeed10m: json['windspeed_10m'] as String,
      uvIndex: json['uv_index'] as String,
      isDay: json['is_day'] as String,
    );

Map<String, dynamic> _$$_OpenMeteoHourlyUnitsDtoToJson(
        _$_OpenMeteoHourlyUnitsDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'relativehumidity_2m': instance.relativehumidity2m,
      'dewpoint_2m': instance.dewpoint2m,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'snowfall': instance.snowfall,
      'weathercode': instance.weathercode,
      'windspeed_10m': instance.windspeed10m,
      'uv_index': instance.uvIndex,
      'is_day': instance.isDay,
    };
