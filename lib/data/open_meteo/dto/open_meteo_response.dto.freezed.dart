// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_response.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoResponseDto _$OpenMeteoResponseDtoFromJson(Map<String, dynamic> json) {
  return _OpenMeteoResponseDto.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoResponseDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitute => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_units')
  OpenMeteoHourlyUnitsDto get hourlyUnits => throw _privateConstructorUsedError;
  OpenMeteoHourlyDto get hourly => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_units')
  OpenMeteoDailyUnitsDto get dailyUnits => throw _privateConstructorUsedError;
  OpenMeteoDailyDto get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoResponseDtoCopyWith<OpenMeteoResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoResponseDtoCopyWith<$Res> {
  factory $OpenMeteoResponseDtoCopyWith(OpenMeteoResponseDto value,
          $Res Function(OpenMeteoResponseDto) then) =
      _$OpenMeteoResponseDtoCopyWithImpl<$Res, OpenMeteoResponseDto>;
  @useResult
  $Res call(
      {double latitude,
      double longitute,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'hourly_units') OpenMeteoHourlyUnitsDto hourlyUnits,
      OpenMeteoHourlyDto hourly,
      @JsonKey(name: 'daily_units') OpenMeteoDailyUnitsDto dailyUnits,
      OpenMeteoDailyDto daily});

  $OpenMeteoHourlyUnitsDtoCopyWith<$Res> get hourlyUnits;
  $OpenMeteoHourlyDtoCopyWith<$Res> get hourly;
  $OpenMeteoDailyUnitsDtoCopyWith<$Res> get dailyUnits;
  $OpenMeteoDailyDtoCopyWith<$Res> get daily;
}

/// @nodoc
class _$OpenMeteoResponseDtoCopyWithImpl<$Res,
        $Val extends OpenMeteoResponseDto>
    implements $OpenMeteoResponseDtoCopyWith<$Res> {
  _$OpenMeteoResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitute = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitute: null == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourlyUnitsDto,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourlyDto,
      dailyUnits: null == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDailyUnitsDto,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDailyDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenMeteoHourlyUnitsDtoCopyWith<$Res> get hourlyUnits {
    return $OpenMeteoHourlyUnitsDtoCopyWith<$Res>(_value.hourlyUnits, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenMeteoHourlyDtoCopyWith<$Res> get hourly {
    return $OpenMeteoHourlyDtoCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenMeteoDailyUnitsDtoCopyWith<$Res> get dailyUnits {
    return $OpenMeteoDailyUnitsDtoCopyWith<$Res>(_value.dailyUnits, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenMeteoDailyDtoCopyWith<$Res> get daily {
    return $OpenMeteoDailyDtoCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OpenMeteoResponseDtoCopyWith<$Res>
    implements $OpenMeteoResponseDtoCopyWith<$Res> {
  factory _$$_OpenMeteoResponseDtoCopyWith(_$_OpenMeteoResponseDto value,
          $Res Function(_$_OpenMeteoResponseDto) then) =
      __$$_OpenMeteoResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitute,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'hourly_units') OpenMeteoHourlyUnitsDto hourlyUnits,
      OpenMeteoHourlyDto hourly,
      @JsonKey(name: 'daily_units') OpenMeteoDailyUnitsDto dailyUnits,
      OpenMeteoDailyDto daily});

  @override
  $OpenMeteoHourlyUnitsDtoCopyWith<$Res> get hourlyUnits;
  @override
  $OpenMeteoHourlyDtoCopyWith<$Res> get hourly;
  @override
  $OpenMeteoDailyUnitsDtoCopyWith<$Res> get dailyUnits;
  @override
  $OpenMeteoDailyDtoCopyWith<$Res> get daily;
}

/// @nodoc
class __$$_OpenMeteoResponseDtoCopyWithImpl<$Res>
    extends _$OpenMeteoResponseDtoCopyWithImpl<$Res, _$_OpenMeteoResponseDto>
    implements _$$_OpenMeteoResponseDtoCopyWith<$Res> {
  __$$_OpenMeteoResponseDtoCopyWithImpl(_$_OpenMeteoResponseDto _value,
      $Res Function(_$_OpenMeteoResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitute = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_$_OpenMeteoResponseDto(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitute: null == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourlyUnitsDto,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as OpenMeteoHourlyDto,
      dailyUnits: null == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDailyUnitsDto,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as OpenMeteoDailyDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoResponseDto implements _OpenMeteoResponseDto {
  _$_OpenMeteoResponseDto(
      {required this.latitude,
      required this.longitute,
      @JsonKey(name: 'generationtime_ms')
          required this.generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds')
          required this.utcOffsetSeconds,
      required this.timezone,
      @JsonKey(name: 'timezone_abbreviation')
          required this.timezoneAbbreviation,
      required this.elevation,
      @JsonKey(name: 'hourly_units')
          required this.hourlyUnits,
      required this.hourly,
      @JsonKey(name: 'daily_units')
          required this.dailyUnits,
      required this.daily});

  factory _$_OpenMeteoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoResponseDtoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitute;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  @override
  final double elevation;
  @override
  @JsonKey(name: 'hourly_units')
  final OpenMeteoHourlyUnitsDto hourlyUnits;
  @override
  final OpenMeteoHourlyDto hourly;
  @override
  @JsonKey(name: 'daily_units')
  final OpenMeteoDailyUnitsDto dailyUnits;
  @override
  final OpenMeteoDailyDto daily;

  @override
  String toString() {
    return 'OpenMeteoResponseDto(latitude: $latitude, longitute: $longitute, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, hourlyUnits: $hourlyUnits, hourly: $hourly, dailyUnits: $dailyUnits, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoResponseDto &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitute, longitute) ||
                other.longitute == longitute) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitute,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      hourlyUnits,
      hourly,
      dailyUnits,
      daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenMeteoResponseDtoCopyWith<_$_OpenMeteoResponseDto> get copyWith =>
      __$$_OpenMeteoResponseDtoCopyWithImpl<_$_OpenMeteoResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoResponseDtoToJson(
      this,
    );
  }
}

abstract class _OpenMeteoResponseDto implements OpenMeteoResponseDto {
  factory _OpenMeteoResponseDto(
      {required final double latitude,
      required final double longitute,
      @JsonKey(name: 'generationtime_ms')
          required final double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds')
          required final int utcOffsetSeconds,
      required final String timezone,
      @JsonKey(name: 'timezone_abbreviation')
          required final String timezoneAbbreviation,
      required final double elevation,
      @JsonKey(name: 'hourly_units')
          required final OpenMeteoHourlyUnitsDto hourlyUnits,
      required final OpenMeteoHourlyDto hourly,
      @JsonKey(name: 'daily_units')
          required final OpenMeteoDailyUnitsDto dailyUnits,
      required final OpenMeteoDailyDto daily}) = _$_OpenMeteoResponseDto;

  factory _OpenMeteoResponseDto.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoResponseDto.fromJson;

  @override
  double get latitude;
  @override
  double get longitute;
  @override
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  @override
  double get elevation;
  @override
  @JsonKey(name: 'hourly_units')
  OpenMeteoHourlyUnitsDto get hourlyUnits;
  @override
  OpenMeteoHourlyDto get hourly;
  @override
  @JsonKey(name: 'daily_units')
  OpenMeteoDailyUnitsDto get dailyUnits;
  @override
  OpenMeteoDailyDto get daily;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoResponseDtoCopyWith<_$_OpenMeteoResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
