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
  List<String> get time => throw _privateConstructorUsedError;
  List<double?> get temperature_2m => throw _privateConstructorUsedError;
  List<double?> get relativehumidity_2m => throw _privateConstructorUsedError;
  List<double?> get apparent_temperature => throw _privateConstructorUsedError;
  List<double?> get precipitation_probability =>
      throw _privateConstructorUsedError;
  List<double?> get precipitation => throw _privateConstructorUsedError;
  List<double?> get rain => throw _privateConstructorUsedError;
  List<double?> get snowfall => throw _privateConstructorUsedError;
  List<int?> get weathercode => throw _privateConstructorUsedError;
  List<double?> get windspeed_10m => throw _privateConstructorUsedError;
  List<double?> get uv_index => throw _privateConstructorUsedError;
  @BoolIntConverter()
  List<bool?> get is_day => throw _privateConstructorUsedError;

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
      {List<String> time,
      List<double?> temperature_2m,
      List<double?> relativehumidity_2m,
      List<double?> apparent_temperature,
      List<double?> precipitation_probability,
      List<double?> precipitation,
      List<double?> rain,
      List<double?> snowfall,
      List<int?> weathercode,
      List<double?> windspeed_10m,
      List<double?> uv_index,
      @BoolIntConverter() List<bool?> is_day});
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
    Object? temperature_2m = null,
    Object? relativehumidity_2m = null,
    Object? apparent_temperature = null,
    Object? precipitation_probability = null,
    Object? precipitation = null,
    Object? rain = null,
    Object? snowfall = null,
    Object? weathercode = null,
    Object? windspeed_10m = null,
    Object? uv_index = null,
    Object? is_day = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      relativehumidity_2m: null == relativehumidity_2m
          ? _value.relativehumidity_2m
          : relativehumidity_2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      apparent_temperature: null == apparent_temperature
          ? _value.apparent_temperature
          : apparent_temperature // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitation_probability: null == precipitation_probability
          ? _value.precipitation_probability
          : precipitation_probability // ignore: cast_nullable_to_non_nullable
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
      windspeed_10m: null == windspeed_10m
          ? _value.windspeed_10m
          : windspeed_10m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uv_index: null == uv_index
          ? _value.uv_index
          : uv_index // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
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
      {List<String> time,
      List<double?> temperature_2m,
      List<double?> relativehumidity_2m,
      List<double?> apparent_temperature,
      List<double?> precipitation_probability,
      List<double?> precipitation,
      List<double?> rain,
      List<double?> snowfall,
      List<int?> weathercode,
      List<double?> windspeed_10m,
      List<double?> uv_index,
      @BoolIntConverter() List<bool?> is_day});
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
    Object? temperature_2m = null,
    Object? relativehumidity_2m = null,
    Object? apparent_temperature = null,
    Object? precipitation_probability = null,
    Object? precipitation = null,
    Object? rain = null,
    Object? snowfall = null,
    Object? weathercode = null,
    Object? windspeed_10m = null,
    Object? uv_index = null,
    Object? is_day = null,
  }) {
    return _then(_$_OpenMeteoHourlyDto(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value._temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      relativehumidity_2m: null == relativehumidity_2m
          ? _value._relativehumidity_2m
          : relativehumidity_2m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      apparent_temperature: null == apparent_temperature
          ? _value._apparent_temperature
          : apparent_temperature // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitation_probability: null == precipitation_probability
          ? _value._precipitation_probability
          : precipitation_probability // ignore: cast_nullable_to_non_nullable
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
      windspeed_10m: null == windspeed_10m
          ? _value._windspeed_10m
          : windspeed_10m // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uv_index: null == uv_index
          ? _value._uv_index
          : uv_index // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      is_day: null == is_day
          ? _value._is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as List<bool?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoHourlyDto implements _OpenMeteoHourlyDto {
  _$_OpenMeteoHourlyDto(
      {required final List<String> time,
      required final List<double?> temperature_2m,
      required final List<double?> relativehumidity_2m,
      required final List<double?> apparent_temperature,
      required final List<double?> precipitation_probability,
      required final List<double?> precipitation,
      required final List<double?> rain,
      required final List<double?> snowfall,
      required final List<int?> weathercode,
      required final List<double?> windspeed_10m,
      required final List<double?> uv_index,
      @BoolIntConverter() required final List<bool?> is_day})
      : _time = time,
        _temperature_2m = temperature_2m,
        _relativehumidity_2m = relativehumidity_2m,
        _apparent_temperature = apparent_temperature,
        _precipitation_probability = precipitation_probability,
        _precipitation = precipitation,
        _rain = rain,
        _snowfall = snowfall,
        _weathercode = weathercode,
        _windspeed_10m = windspeed_10m,
        _uv_index = uv_index,
        _is_day = is_day;

  factory _$_OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoHourlyDtoFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double?> _temperature_2m;
  @override
  List<double?> get temperature_2m {
    if (_temperature_2m is EqualUnmodifiableListView) return _temperature_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature_2m);
  }

  final List<double?> _relativehumidity_2m;
  @override
  List<double?> get relativehumidity_2m {
    if (_relativehumidity_2m is EqualUnmodifiableListView)
      return _relativehumidity_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativehumidity_2m);
  }

  final List<double?> _apparent_temperature;
  @override
  List<double?> get apparent_temperature {
    if (_apparent_temperature is EqualUnmodifiableListView)
      return _apparent_temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparent_temperature);
  }

  final List<double?> _precipitation_probability;
  @override
  List<double?> get precipitation_probability {
    if (_precipitation_probability is EqualUnmodifiableListView)
      return _precipitation_probability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation_probability);
  }

  final List<double?> _precipitation;
  @override
  List<double?> get precipitation {
    if (_precipitation is EqualUnmodifiableListView) return _precipitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation);
  }

  final List<double?> _rain;
  @override
  List<double?> get rain {
    if (_rain is EqualUnmodifiableListView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rain);
  }

  final List<double?> _snowfall;
  @override
  List<double?> get snowfall {
    if (_snowfall is EqualUnmodifiableListView) return _snowfall;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snowfall);
  }

  final List<int?> _weathercode;
  @override
  List<int?> get weathercode {
    if (_weathercode is EqualUnmodifiableListView) return _weathercode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathercode);
  }

  final List<double?> _windspeed_10m;
  @override
  List<double?> get windspeed_10m {
    if (_windspeed_10m is EqualUnmodifiableListView) return _windspeed_10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windspeed_10m);
  }

  final List<double?> _uv_index;
  @override
  List<double?> get uv_index {
    if (_uv_index is EqualUnmodifiableListView) return _uv_index;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uv_index);
  }

  final List<bool?> _is_day;
  @override
  @BoolIntConverter()
  List<bool?> get is_day {
    if (_is_day is EqualUnmodifiableListView) return _is_day;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_is_day);
  }

  @override
  String toString() {
    return 'OpenMeteoHourlyDto(time: $time, temperature_2m: $temperature_2m, relativehumidity_2m: $relativehumidity_2m, apparent_temperature: $apparent_temperature, precipitation_probability: $precipitation_probability, precipitation: $precipitation, rain: $rain, snowfall: $snowfall, weathercode: $weathercode, windspeed_10m: $windspeed_10m, uv_index: $uv_index, is_day: $is_day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoHourlyDto &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m, _temperature_2m) &&
            const DeepCollectionEquality()
                .equals(other._relativehumidity_2m, _relativehumidity_2m) &&
            const DeepCollectionEquality()
                .equals(other._apparent_temperature, _apparent_temperature) &&
            const DeepCollectionEquality().equals(
                other._precipitation_probability, _precipitation_probability) &&
            const DeepCollectionEquality()
                .equals(other._precipitation, _precipitation) &&
            const DeepCollectionEquality().equals(other._rain, _rain) &&
            const DeepCollectionEquality().equals(other._snowfall, _snowfall) &&
            const DeepCollectionEquality()
                .equals(other._weathercode, _weathercode) &&
            const DeepCollectionEquality()
                .equals(other._windspeed_10m, _windspeed_10m) &&
            const DeepCollectionEquality().equals(other._uv_index, _uv_index) &&
            const DeepCollectionEquality().equals(other._is_day, _is_day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m),
      const DeepCollectionEquality().hash(_relativehumidity_2m),
      const DeepCollectionEquality().hash(_apparent_temperature),
      const DeepCollectionEquality().hash(_precipitation_probability),
      const DeepCollectionEquality().hash(_precipitation),
      const DeepCollectionEquality().hash(_rain),
      const DeepCollectionEquality().hash(_snowfall),
      const DeepCollectionEquality().hash(_weathercode),
      const DeepCollectionEquality().hash(_windspeed_10m),
      const DeepCollectionEquality().hash(_uv_index),
      const DeepCollectionEquality().hash(_is_day));

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
          {required final List<String> time,
          required final List<double?> temperature_2m,
          required final List<double?> relativehumidity_2m,
          required final List<double?> apparent_temperature,
          required final List<double?> precipitation_probability,
          required final List<double?> precipitation,
          required final List<double?> rain,
          required final List<double?> snowfall,
          required final List<int?> weathercode,
          required final List<double?> windspeed_10m,
          required final List<double?> uv_index,
          @BoolIntConverter() required final List<bool?> is_day}) =
      _$_OpenMeteoHourlyDto;

  factory _OpenMeteoHourlyDto.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoHourlyDto.fromJson;

  @override
  List<String> get time;
  @override
  List<double?> get temperature_2m;
  @override
  List<double?> get relativehumidity_2m;
  @override
  List<double?> get apparent_temperature;
  @override
  List<double?> get precipitation_probability;
  @override
  List<double?> get precipitation;
  @override
  List<double?> get rain;
  @override
  List<double?> get snowfall;
  @override
  List<int?> get weathercode;
  @override
  List<double?> get windspeed_10m;
  @override
  List<double?> get uv_index;
  @override
  @BoolIntConverter()
  List<bool?> get is_day;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoHourlyDtoCopyWith<_$_OpenMeteoHourlyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
