// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_hourly.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoHourlyDto _$OpenMeteoHourlyDtoFromJson(Map<String, dynamic> json) {
  return _OpenMeteoHourlyDto.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoHourlyDto {
  @JsonKey(name: 'time')
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double?> get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relativehumidity_2m')
  List<double?> get relativehumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  List<double?> get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  List<double?> get precipitationProbability =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation')
  List<double?> get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  List<double?> get rain => throw _privateConstructorUsedError;
  @JsonKey(name: 'snowfall')
  List<double?> get snowfall => throw _privateConstructorUsedError;
  @JsonKey(name: 'weathercode')
  List<int?> get weathercode => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed_10m')
  List<double?> get windspeed10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  List<double?> get uvIndex => throw _privateConstructorUsedError;
  @BoolIntConverter()
  @JsonKey(name: 'is_day')
  List<bool?> get isDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoHourlyDtoCopyWith<OpenMeteoHourlyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoHourlyDtoCopyWith<$Res> {
  factory $OpenMeteoHourlyDtoCopyWith(
          OpenMeteoHourlyDto value, $Res Function(OpenMeteoHourlyDto) then) =
      _$OpenMeteoHourlyDtoCopyWithImpl<$Res, OpenMeteoHourlyDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time')
          List<String> time,
      @JsonKey(name: 'temperature_2m')
          List<double?> temperature2m,
      @JsonKey(name: 'relativehumidity_2m')
          List<double?> relativehumidity2m,
      @JsonKey(name: 'apparent_temperature')
          List<double?> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
          List<double?> precipitationProbability,
      @JsonKey(name: 'precipitation')
          List<double?> precipitation,
      @JsonKey(name: 'rain')
          List<double?> rain,
      @JsonKey(name: 'snowfall')
          List<double?> snowfall,
      @JsonKey(name: 'weathercode')
          List<int?> weathercode,
      @JsonKey(name: 'windspeed_10m')
          List<double?> windspeed10m,
      @JsonKey(name: 'uv_index')
          List<double?> uvIndex,
      @BoolIntConverter()
      @JsonKey(name: 'is_day')
          List<bool?> isDay});
}

/// @nodoc
class _$OpenMeteoHourlyDtoCopyWithImpl<$Res, $Val extends OpenMeteoHourlyDto>
    implements $OpenMeteoHourlyDtoCopyWith<$Res> {
  _$OpenMeteoHourlyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativehumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? rain = null,
    Object? snowfall = null,
    Object? weathercode = null,
    Object? windspeed10m = null,
    Object? uvIndex = null,
    Object? isDay = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      relativehumidity2m: null == relativehumidity2m
          ? _value.relativehumidity2m
          : relativehumidity2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitationProbability: null == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      snowfall: null == snowfall
          ? _value.snowfall
          : snowfall // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      windspeed10m: null == windspeed10m
          ? _value.windspeed10m
          : windspeed10m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<bool?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenMeteoHourlyDtoCopyWith<$Res>
    implements $OpenMeteoHourlyDtoCopyWith<$Res> {
  factory _$$_OpenMeteoHourlyDtoCopyWith(_$_OpenMeteoHourlyDto value,
          $Res Function(_$_OpenMeteoHourlyDto) then) =
      __$$_OpenMeteoHourlyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time')
          List<String> time,
      @JsonKey(name: 'temperature_2m')
          List<double?> temperature2m,
      @JsonKey(name: 'relativehumidity_2m')
          List<double?> relativehumidity2m,
      @JsonKey(name: 'apparent_temperature')
          List<double?> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
          List<double?> precipitationProbability,
      @JsonKey(name: 'precipitation')
          List<double?> precipitation,
      @JsonKey(name: 'rain')
          List<double?> rain,
      @JsonKey(name: 'snowfall')
          List<double?> snowfall,
      @JsonKey(name: 'weathercode')
          List<int?> weathercode,
      @JsonKey(name: 'windspeed_10m')
          List<double?> windspeed10m,
      @JsonKey(name: 'uv_index')
          List<double?> uvIndex,
      @BoolIntConverter()
      @JsonKey(name: 'is_day')
          List<bool?> isDay});
}

/// @nodoc
class __$$_OpenMeteoHourlyDtoCopyWithImpl<$Res>
    extends _$OpenMeteoHourlyDtoCopyWithImpl<$Res, _$_OpenMeteoHourlyDto>
    implements _$$_OpenMeteoHourlyDtoCopyWith<$Res> {
  __$$_OpenMeteoHourlyDtoCopyWithImpl(
      _$_OpenMeteoHourlyDto _value, $Res Function(_$_OpenMeteoHourlyDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativehumidity2m = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? rain = null,
    Object? snowfall = null,
    Object? weathercode = null,
    Object? windspeed10m = null,
    Object? uvIndex = null,
    Object? isDay = null,
  }) {
    return _then(_$_OpenMeteoHourlyDto(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2m: null == temperature2m
          ? _value._temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      relativehumidity2m: null == relativehumidity2m
          ? _value._relativehumidity2m
          : relativehumidity2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      apparentTemperature: null == apparentTemperature
          ? _value._apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitationProbability: null == precipitationProbability
          ? _value._precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitation: null == precipitation
          ? _value._precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      rain: null == rain
          ? _value._rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      snowfall: null == snowfall
          ? _value._snowfall
          : snowfall // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      weathercode: null == weathercode
          ? _value._weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      windspeed10m: null == windspeed10m
          ? _value._windspeed10m
          : windspeed10m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uvIndex: null == uvIndex
          ? _value._uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      isDay: null == isDay
          ? _value._isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<bool?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoHourlyDto implements _OpenMeteoHourlyDto {
  _$_OpenMeteoHourlyDto(
      {@JsonKey(name: 'time')
          required final List<String> time,
      @JsonKey(name: 'temperature_2m')
          required final List<double?> temperature2m,
      @JsonKey(name: 'relativehumidity_2m')
          required final List<double?> relativehumidity2m,
      @JsonKey(name: 'apparent_temperature')
          required final List<double?> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
          required final List<double?> precipitationProbability,
      @JsonKey(name: 'precipitation')
          required final List<double?> precipitation,
      @JsonKey(name: 'rain')
          required final List<double?> rain,
      @JsonKey(name: 'snowfall')
          required final List<double?> snowfall,
      @JsonKey(name: 'weathercode')
          required final List<int?> weathercode,
      @JsonKey(name: 'windspeed_10m')
          required final List<double?> windspeed10m,
      @JsonKey(name: 'uv_index')
          required final List<double?> uvIndex,
      @BoolIntConverter()
      @JsonKey(name: 'is_day')
          required final List<bool?> isDay})
      : _time = time,
        _temperature2m = temperature2m,
        _relativehumidity2m = relativehumidity2m,
        _apparentTemperature = apparentTemperature,
        _precipitationProbability = precipitationProbability,
        _precipitation = precipitation,
        _rain = rain,
        _snowfall = snowfall,
        _weathercode = weathercode,
        _windspeed10m = windspeed10m,
        _uvIndex = uvIndex,
        _isDay = isDay;

  factory _$_OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoHourlyDtoFromJson(json);

  final List<String> _time;
  @override
  @JsonKey(name: 'time')
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double?> _temperature2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double?> get temperature2m {
    if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2m);
  }

  final List<double?> _relativehumidity2m;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  List<double?> get relativehumidity2m {
    if (_relativehumidity2m is EqualUnmodifiableListView)
      return _relativehumidity2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativehumidity2m);
  }

  final List<double?> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double?> get apparentTemperature {
    if (_apparentTemperature is EqualUnmodifiableListView)
      return _apparentTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  final List<double?> _precipitationProbability;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<double?> get precipitationProbability {
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbability);
  }

  final List<double?> _precipitation;
  @override
  @JsonKey(name: 'precipitation')
  List<double?> get precipitation {
    if (_precipitation is EqualUnmodifiableListView) return _precipitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation);
  }

  final List<double?> _rain;
  @override
  @JsonKey(name: 'rain')
  List<double?> get rain {
    if (_rain is EqualUnmodifiableListView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rain);
  }

  final List<double?> _snowfall;
  @override
  @JsonKey(name: 'snowfall')
  List<double?> get snowfall {
    if (_snowfall is EqualUnmodifiableListView) return _snowfall;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snowfall);
  }

  final List<int?> _weathercode;
  @override
  @JsonKey(name: 'weathercode')
  List<int?> get weathercode {
    if (_weathercode is EqualUnmodifiableListView) return _weathercode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathercode);
  }

  final List<double?> _windspeed10m;
  @override
  @JsonKey(name: 'windspeed_10m')
  List<double?> get windspeed10m {
    if (_windspeed10m is EqualUnmodifiableListView) return _windspeed10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windspeed10m);
  }

  final List<double?> _uvIndex;
  @override
  @JsonKey(name: 'uv_index')
  List<double?> get uvIndex {
    if (_uvIndex is EqualUnmodifiableListView) return _uvIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uvIndex);
  }

  final List<bool?> _isDay;
  @override
  @BoolIntConverter()
  @JsonKey(name: 'is_day')
  List<bool?> get isDay {
    if (_isDay is EqualUnmodifiableListView) return _isDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isDay);
  }

  @override
  String toString() {
    return 'OpenMeteoHourlyDto(time: $time, temperature2m: $temperature2m, relativehumidity2m: $relativehumidity2m, apparentTemperature: $apparentTemperature, precipitationProbability: $precipitationProbability, precipitation: $precipitation, rain: $rain, snowfall: $snowfall, weathercode: $weathercode, windspeed10m: $windspeed10m, uvIndex: $uvIndex, isDay: $isDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoHourlyDto &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2m, _temperature2m) &&
            const DeepCollectionEquality()
                .equals(other._relativehumidity2m, _relativehumidity2m) &&
            const DeepCollectionEquality()
                .equals(other._apparentTemperature, _apparentTemperature) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbability, _precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other._precipitation, _precipitation) &&
            const DeepCollectionEquality().equals(other._rain, _rain) &&
            const DeepCollectionEquality().equals(other._snowfall, _snowfall) &&
            const DeepCollectionEquality()
                .equals(other._weathercode, _weathercode) &&
            const DeepCollectionEquality()
                .equals(other._windspeed10m, _windspeed10m) &&
            const DeepCollectionEquality().equals(other._uvIndex, _uvIndex) &&
            const DeepCollectionEquality().equals(other._isDay, _isDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2m),
      const DeepCollectionEquality().hash(_relativehumidity2m),
      const DeepCollectionEquality().hash(_apparentTemperature),
      const DeepCollectionEquality().hash(_precipitationProbability),
      const DeepCollectionEquality().hash(_precipitation),
      const DeepCollectionEquality().hash(_rain),
      const DeepCollectionEquality().hash(_snowfall),
      const DeepCollectionEquality().hash(_weathercode),
      const DeepCollectionEquality().hash(_windspeed10m),
      const DeepCollectionEquality().hash(_uvIndex),
      const DeepCollectionEquality().hash(_isDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenMeteoHourlyDtoCopyWith<_$_OpenMeteoHourlyDto> get copyWith =>
      __$$_OpenMeteoHourlyDtoCopyWithImpl<_$_OpenMeteoHourlyDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoHourlyDtoToJson(
      this,
    );
  }
}

abstract class _OpenMeteoHourlyDto implements OpenMeteoHourlyDto {
  factory _OpenMeteoHourlyDto(
      {@JsonKey(name: 'time')
          required final List<String> time,
      @JsonKey(name: 'temperature_2m')
          required final List<double?> temperature2m,
      @JsonKey(name: 'relativehumidity_2m')
          required final List<double?> relativehumidity2m,
      @JsonKey(name: 'apparent_temperature')
          required final List<double?> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
          required final List<double?> precipitationProbability,
      @JsonKey(name: 'precipitation')
          required final List<double?> precipitation,
      @JsonKey(name: 'rain')
          required final List<double?> rain,
      @JsonKey(name: 'snowfall')
          required final List<double?> snowfall,
      @JsonKey(name: 'weathercode')
          required final List<int?> weathercode,
      @JsonKey(name: 'windspeed_10m')
          required final List<double?> windspeed10m,
      @JsonKey(name: 'uv_index')
          required final List<double?> uvIndex,
      @BoolIntConverter()
      @JsonKey(name: 'is_day')
          required final List<bool?> isDay}) = _$_OpenMeteoHourlyDto;

  factory _OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoHourlyDto.fromJson;

  @override
  @JsonKey(name: 'time')
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double?> get temperature2m;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  List<double?> get relativehumidity2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double?> get apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<double?> get precipitationProbability;
  @override
  @JsonKey(name: 'precipitation')
  List<double?> get precipitation;
  @override
  @JsonKey(name: 'rain')
  List<double?> get rain;
  @override
  @JsonKey(name: 'snowfall')
  List<double?> get snowfall;
  @override
  @JsonKey(name: 'weathercode')
  List<int?> get weathercode;
  @override
  @JsonKey(name: 'windspeed_10m')
  List<double?> get windspeed10m;
  @override
  @JsonKey(name: 'uv_index')
  List<double?> get uvIndex;
  @override
  @BoolIntConverter()
  @JsonKey(name: 'is_day')
  List<bool?> get isDay;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoHourlyDtoCopyWith<_$_OpenMeteoHourlyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
