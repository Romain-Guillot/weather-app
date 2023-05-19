// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_hourly.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoHourlyDto _$$_OpenMeteoHourlyDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoHourlyDto(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      relativehumidity2m: (json['relativehumidity_2m'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      apparentTemperature: (json['apparent_temperature'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num?)?.toDouble())
              .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      rain: (json['rain'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      snowfall: (json['snowfall'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      weathercode:
          (json['weathercode'] as List<dynamic>).map((e) => e as int?).toList(),
      windspeed10m: (json['windspeed_10m'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      uvIndex: (json['uv_index'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toList(),
      isDay: (json['is_day'] as List<dynamic>)
          .map((e) => _$JsonConverterFromJson<int, bool>(
              e, const BoolIntConverter().fromJson))
          .toList(),
    );

Map<String, dynamic> _$$_OpenMeteoHourlyDtoToJson(
        _$_OpenMeteoHourlyDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'relativehumidity_2m': instance.relativehumidity2m,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'snowfall': instance.snowfall,
      'weathercode': instance.weathercode,
      'windspeed_10m': instance.windspeed10m,
      'uv_index': instance.uvIndex,
      'is_day': instance.isDay
          .map((e) => _$JsonConverterToJson<int, bool>(
              e, const BoolIntConverter().toJson))
          .toList(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
