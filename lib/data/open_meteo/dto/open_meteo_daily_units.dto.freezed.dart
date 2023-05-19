// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_daily_units.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoDailyUnitsDto _$OpenMeteoDailyUnitsDtoFromJson(
    Map<String, dynamic> json) {
  return _OpenMeteoDailyUnitsDto.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoDailyUnitsDto {
  String get time => throw _privateConstructorUsedError;
  String get weathercode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2mMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2mMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index_max')
  String get uvIndexMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_sum')
  String get precipitationSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain_sum')
  String get rainSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'snowfall_sum')
  String get snowfallSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  String get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  String get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoDailyUnitsDtoCopyWith<OpenMeteoDailyUnitsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoDailyUnitsDtoCopyWith<$Res> {
  factory $OpenMeteoDailyUnitsDtoCopyWith(OpenMeteoDailyUnitsDto value,
          $Res Function(OpenMeteoDailyUnitsDto) then) =
      _$OpenMeteoDailyUnitsDtoCopyWithImpl<$Res, OpenMeteoDailyUnitsDto>;
  @useResult
  $Res call(
      {String time,
      String weathercode,
      @JsonKey(name: 'temperature_2m_max') String temperature2mMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2mMin,
      @JsonKey(name: 'uv_index_max') String uvIndexMax,
      @JsonKey(name: 'precipitation_sum') String precipitationSum,
      @JsonKey(name: 'rain_sum') String rainSum,
      @JsonKey(name: 'snowfall_sum') String snowfallSum,
      @JsonKey(name: 'sunrise') String sunrise,
      @JsonKey(name: 'sunset') String sunset});
}

/// @nodoc
class _$OpenMeteoDailyUnitsDtoCopyWithImpl<$Res,
        $Val extends OpenMeteoDailyUnitsDto>
    implements $OpenMeteoDailyUnitsDtoCopyWith<$Res> {
  _$OpenMeteoDailyUnitsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weathercode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? uvIndexMax = null,
    Object? precipitationSum = null,
    Object? rainSum = null,
    Object? snowfallSum = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2mMax: null == temperature2mMax
          ? _value.temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2mMin: null == temperature2mMin
          ? _value.temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndexMax: null == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationSum: null == precipitationSum
          ? _value.precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as String,
      rainSum: null == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as String,
      snowfallSum: null == snowfallSum
          ? _value.snowfallSum
          : snowfallSum // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenMeteoDailyUnitsDtoCopyWith<$Res>
    implements $OpenMeteoDailyUnitsDtoCopyWith<$Res> {
  factory _$$_OpenMeteoDailyUnitsDtoCopyWith(_$_OpenMeteoDailyUnitsDto value,
          $Res Function(_$_OpenMeteoDailyUnitsDto) then) =
      __$$_OpenMeteoDailyUnitsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      String weathercode,
      @JsonKey(name: 'temperature_2m_max') String temperature2mMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2mMin,
      @JsonKey(name: 'uv_index_max') String uvIndexMax,
      @JsonKey(name: 'precipitation_sum') String precipitationSum,
      @JsonKey(name: 'rain_sum') String rainSum,
      @JsonKey(name: 'snowfall_sum') String snowfallSum,
      @JsonKey(name: 'sunrise') String sunrise,
      @JsonKey(name: 'sunset') String sunset});
}

/// @nodoc
class __$$_OpenMeteoDailyUnitsDtoCopyWithImpl<$Res>
    extends _$OpenMeteoDailyUnitsDtoCopyWithImpl<$Res,
        _$_OpenMeteoDailyUnitsDto>
    implements _$$_OpenMeteoDailyUnitsDtoCopyWith<$Res> {
  __$$_OpenMeteoDailyUnitsDtoCopyWithImpl(_$_OpenMeteoDailyUnitsDto _value,
      $Res Function(_$_OpenMeteoDailyUnitsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weathercode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? uvIndexMax = null,
    Object? precipitationSum = null,
    Object? rainSum = null,
    Object? snowfallSum = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$_OpenMeteoDailyUnitsDto(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2mMax: null == temperature2mMax
          ? _value.temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2mMin: null == temperature2mMin
          ? _value.temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndexMax: null == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationSum: null == precipitationSum
          ? _value.precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as String,
      rainSum: null == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as String,
      snowfallSum: null == snowfallSum
          ? _value.snowfallSum
          : snowfallSum // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoDailyUnitsDto implements _OpenMeteoDailyUnitsDto {
  _$_OpenMeteoDailyUnitsDto(
      {required this.time,
      required this.weathercode,
      @JsonKey(name: 'temperature_2m_max') required this.temperature2mMax,
      @JsonKey(name: 'temperature_2m_min') required this.temperature2mMin,
      @JsonKey(name: 'uv_index_max') required this.uvIndexMax,
      @JsonKey(name: 'precipitation_sum') required this.precipitationSum,
      @JsonKey(name: 'rain_sum') required this.rainSum,
      @JsonKey(name: 'snowfall_sum') required this.snowfallSum,
      @JsonKey(name: 'sunrise') required this.sunrise,
      @JsonKey(name: 'sunset') required this.sunset});

  factory _$_OpenMeteoDailyUnitsDto.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoDailyUnitsDtoFromJson(json);

  @override
  final String time;
  @override
  final String weathercode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  final String temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  final String temperature2mMin;
  @override
  @JsonKey(name: 'uv_index_max')
  final String uvIndexMax;
  @override
  @JsonKey(name: 'precipitation_sum')
  final String precipitationSum;
  @override
  @JsonKey(name: 'rain_sum')
  final String rainSum;
  @override
  @JsonKey(name: 'snowfall_sum')
  final String snowfallSum;
  @override
  @JsonKey(name: 'sunrise')
  final String sunrise;
  @override
  @JsonKey(name: 'sunset')
  final String sunset;

  @override
  String toString() {
    return 'OpenMeteoDailyUnitsDto(time: $time, weathercode: $weathercode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, uvIndexMax: $uvIndexMax, precipitationSum: $precipitationSum, rainSum: $rainSum, snowfallSum: $snowfallSum, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoDailyUnitsDto &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weathercode, weathercode) ||
                other.weathercode == weathercode) &&
            (identical(other.temperature2mMax, temperature2mMax) ||
                other.temperature2mMax == temperature2mMax) &&
            (identical(other.temperature2mMin, temperature2mMin) ||
                other.temperature2mMin == temperature2mMin) &&
            (identical(other.uvIndexMax, uvIndexMax) ||
                other.uvIndexMax == uvIndexMax) &&
            (identical(other.precipitationSum, precipitationSum) ||
                other.precipitationSum == precipitationSum) &&
            (identical(other.rainSum, rainSum) || other.rainSum == rainSum) &&
            (identical(other.snowfallSum, snowfallSum) ||
                other.snowfallSum == snowfallSum) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      weathercode,
      temperature2mMax,
      temperature2mMin,
      uvIndexMax,
      precipitationSum,
      rainSum,
      snowfallSum,
      sunrise,
      sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenMeteoDailyUnitsDtoCopyWith<_$_OpenMeteoDailyUnitsDto> get copyWith =>
      __$$_OpenMeteoDailyUnitsDtoCopyWithImpl<_$_OpenMeteoDailyUnitsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoDailyUnitsDtoToJson(
      this,
    );
  }
}

abstract class _OpenMeteoDailyUnitsDto implements OpenMeteoDailyUnitsDto {
  factory _OpenMeteoDailyUnitsDto(
      {required final String time,
      required final String weathercode,
      @JsonKey(name: 'temperature_2m_max')
          required final String temperature2mMax,
      @JsonKey(name: 'temperature_2m_min')
          required final String temperature2mMin,
      @JsonKey(name: 'uv_index_max')
          required final String uvIndexMax,
      @JsonKey(name: 'precipitation_sum')
          required final String precipitationSum,
      @JsonKey(name: 'rain_sum')
          required final String rainSum,
      @JsonKey(name: 'snowfall_sum')
          required final String snowfallSum,
      @JsonKey(name: 'sunrise')
          required final String sunrise,
      @JsonKey(name: 'sunset')
          required final String sunset}) = _$_OpenMeteoDailyUnitsDto;

  factory _OpenMeteoDailyUnitsDto.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoDailyUnitsDto.fromJson;

  @override
  String get time;
  @override
  String get weathercode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2mMin;
  @override
  @JsonKey(name: 'uv_index_max')
  String get uvIndexMax;
  @override
  @JsonKey(name: 'precipitation_sum')
  String get precipitationSum;
  @override
  @JsonKey(name: 'rain_sum')
  String get rainSum;
  @override
  @JsonKey(name: 'snowfall_sum')
  String get snowfallSum;
  @override
  @JsonKey(name: 'sunrise')
  String get sunrise;
  @override
  @JsonKey(name: 'sunset')
  String get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoDailyUnitsDtoCopyWith<_$_OpenMeteoDailyUnitsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
