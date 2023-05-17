// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoResponseDto _$$_OpenMeteoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoResponseDto(
      latitude: (json['latitude'] as num).toDouble(),
      longitute: (json['longitute'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int,
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      hourlyUnits: OpenMeteoHourlyUnitsDto.fromJson(
          json['hourly_units'] as Map<String, dynamic>),
      hourly:
          OpenMeteoHourlyDto.fromJson(json['hourly'] as Map<String, dynamic>),
      dailyUnits: OpenMeteoDailyUnitsDto.fromJson(
          json['daily_units'] as Map<String, dynamic>),
      daily: OpenMeteoDailyDto.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenMeteoResponseDtoToJson(
        _$_OpenMeteoResponseDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitute': instance.longitute,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
    };
