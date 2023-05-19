// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_daily.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoDailyDto _$OpenMeteoDailyDtoFromJson(Map<String, dynamic> json) {
  return _OpenMeteoDailyDto.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoDailyDto {
  List<String> get time => throw _privateConstructorUsedError;
  List<int?> get weathercode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double?> get temperature2mMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double?> get temperature2mMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index_max')
  List<double?> get uvIndexMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_sum')
  List<double?> get precipitationSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain_sum')
  List<double?> get rainSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'snowfall_sum')
  List<double?> get snowfallSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  List<DateTime?> get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  List<DateTime?> get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoDailyDtoCopyWith<OpenMeteoDailyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoDailyDtoCopyWith<$Res> {
  factory $OpenMeteoDailyDtoCopyWith(
          OpenMeteoDailyDto value, $Res Function(OpenMeteoDailyDto) then) =
      _$OpenMeteoDailyDtoCopyWithImpl<$Res, OpenMeteoDailyDto>;
  @useResult
  $Res call(
      {List<String> time,
      List<int?> weathercode,
      @JsonKey(name: 'temperature_2m_max') List<double?> temperature2mMax,
      @JsonKey(name: 'temperature_2m_min') List<double?> temperature2mMin,
      @JsonKey(name: 'uv_index_max') List<double?> uvIndexMax,
      @JsonKey(name: 'precipitation_sum') List<double?> precipitationSum,
      @JsonKey(name: 'rain_sum') List<double?> rainSum,
      @JsonKey(name: 'snowfall_sum') List<double?> snowfallSum,
      @JsonKey(name: 'sunrise') List<DateTime?> sunrise,
      @JsonKey(name: 'sunset') List<DateTime?> sunset});
}

/// @nodoc
class _$OpenMeteoDailyDtoCopyWithImpl<$Res, $Val extends OpenMeteoDailyDto>
    implements $OpenMeteoDailyDtoCopyWith<$Res> {
  _$OpenMeteoDailyDtoCopyWithImpl(this._value, this._then);

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
              as List<String>,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      temperature2mMax: null == temperature2mMax
          ? _value.temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      temperature2mMin: null == temperature2mMin
          ? _value.temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uvIndexMax: null == uvIndexMax
          ? _value.uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitationSum: null == precipitationSum
          ? _value.precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      rainSum: null == rainSum
          ? _value.rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      snowfallSum: null == snowfallSum
          ? _value.snowfallSum
          : snowfallSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime?>,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenMeteoDailyDtoCopyWith<$Res>
    implements $OpenMeteoDailyDtoCopyWith<$Res> {
  factory _$$_OpenMeteoDailyDtoCopyWith(_$_OpenMeteoDailyDto value,
          $Res Function(_$_OpenMeteoDailyDto) then) =
      __$$_OpenMeteoDailyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      List<int?> weathercode,
      @JsonKey(name: 'temperature_2m_max') List<double?> temperature2mMax,
      @JsonKey(name: 'temperature_2m_min') List<double?> temperature2mMin,
      @JsonKey(name: 'uv_index_max') List<double?> uvIndexMax,
      @JsonKey(name: 'precipitation_sum') List<double?> precipitationSum,
      @JsonKey(name: 'rain_sum') List<double?> rainSum,
      @JsonKey(name: 'snowfall_sum') List<double?> snowfallSum,
      @JsonKey(name: 'sunrise') List<DateTime?> sunrise,
      @JsonKey(name: 'sunset') List<DateTime?> sunset});
}

/// @nodoc
class __$$_OpenMeteoDailyDtoCopyWithImpl<$Res>
    extends _$OpenMeteoDailyDtoCopyWithImpl<$Res, _$_OpenMeteoDailyDto>
    implements _$$_OpenMeteoDailyDtoCopyWith<$Res> {
  __$$_OpenMeteoDailyDtoCopyWithImpl(
      _$_OpenMeteoDailyDto _value, $Res Function(_$_OpenMeteoDailyDto) _then)
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
    return _then(_$_OpenMeteoDailyDto(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weathercode: null == weathercode
          ? _value._weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      temperature2mMax: null == temperature2mMax
          ? _value._temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      temperature2mMin: null == temperature2mMin
          ? _value._temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      uvIndexMax: null == uvIndexMax
          ? _value._uvIndexMax
          : uvIndexMax // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      precipitationSum: null == precipitationSum
          ? _value._precipitationSum
          : precipitationSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      rainSum: null == rainSum
          ? _value._rainSum
          : rainSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      snowfallSum: null == snowfallSum
          ? _value._snowfallSum
          : snowfallSum // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      sunrise: null == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime?>,
      sunset: null == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoDailyDto implements _OpenMeteoDailyDto {
  _$_OpenMeteoDailyDto(
      {required final List<String> time,
      required final List<int?> weathercode,
      @JsonKey(name: 'temperature_2m_max')
          required final List<double?> temperature2mMax,
      @JsonKey(name: 'temperature_2m_min')
          required final List<double?> temperature2mMin,
      @JsonKey(name: 'uv_index_max')
          required final List<double?> uvIndexMax,
      @JsonKey(name: 'precipitation_sum')
          required final List<double?> precipitationSum,
      @JsonKey(name: 'rain_sum')
          required final List<double?> rainSum,
      @JsonKey(name: 'snowfall_sum')
          required final List<double?> snowfallSum,
      @JsonKey(name: 'sunrise')
          required final List<DateTime?> sunrise,
      @JsonKey(name: 'sunset')
          required final List<DateTime?> sunset})
      : _time = time,
        _weathercode = weathercode,
        _temperature2mMax = temperature2mMax,
        _temperature2mMin = temperature2mMin,
        _uvIndexMax = uvIndexMax,
        _precipitationSum = precipitationSum,
        _rainSum = rainSum,
        _snowfallSum = snowfallSum,
        _sunrise = sunrise,
        _sunset = sunset;

  factory _$_OpenMeteoDailyDto.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoDailyDtoFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<int?> _weathercode;
  @override
  List<int?> get weathercode {
    if (_weathercode is EqualUnmodifiableListView) return _weathercode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathercode);
  }

  final List<double?> _temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double?> get temperature2mMax {
    if (_temperature2mMax is EqualUnmodifiableListView)
      return _temperature2mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMax);
  }

  final List<double?> _temperature2mMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double?> get temperature2mMin {
    if (_temperature2mMin is EqualUnmodifiableListView)
      return _temperature2mMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMin);
  }

  final List<double?> _uvIndexMax;
  @override
  @JsonKey(name: 'uv_index_max')
  List<double?> get uvIndexMax {
    if (_uvIndexMax is EqualUnmodifiableListView) return _uvIndexMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uvIndexMax);
  }

  final List<double?> _precipitationSum;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double?> get precipitationSum {
    if (_precipitationSum is EqualUnmodifiableListView)
      return _precipitationSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationSum);
  }

  final List<double?> _rainSum;
  @override
  @JsonKey(name: 'rain_sum')
  List<double?> get rainSum {
    if (_rainSum is EqualUnmodifiableListView) return _rainSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rainSum);
  }

  final List<double?> _snowfallSum;
  @override
  @JsonKey(name: 'snowfall_sum')
  List<double?> get snowfallSum {
    if (_snowfallSum is EqualUnmodifiableListView) return _snowfallSum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snowfallSum);
  }

  final List<DateTime?> _sunrise;
  @override
  @JsonKey(name: 'sunrise')
  List<DateTime?> get sunrise {
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunrise);
  }

  final List<DateTime?> _sunset;
  @override
  @JsonKey(name: 'sunset')
  List<DateTime?> get sunset {
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunset);
  }

  @override
  String toString() {
    return 'OpenMeteoDailyDto(time: $time, weathercode: $weathercode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, uvIndexMax: $uvIndexMax, precipitationSum: $precipitationSum, rainSum: $rainSum, snowfallSum: $snowfallSum, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoDailyDto &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weathercode, _weathercode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2mMax, _temperature2mMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2mMin, _temperature2mMin) &&
            const DeepCollectionEquality()
                .equals(other._uvIndexMax, _uvIndexMax) &&
            const DeepCollectionEquality()
                .equals(other._precipitationSum, _precipitationSum) &&
            const DeepCollectionEquality().equals(other._rainSum, _rainSum) &&
            const DeepCollectionEquality()
                .equals(other._snowfallSum, _snowfallSum) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weathercode),
      const DeepCollectionEquality().hash(_temperature2mMax),
      const DeepCollectionEquality().hash(_temperature2mMin),
      const DeepCollectionEquality().hash(_uvIndexMax),
      const DeepCollectionEquality().hash(_precipitationSum),
      const DeepCollectionEquality().hash(_rainSum),
      const DeepCollectionEquality().hash(_snowfallSum),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenMeteoDailyDtoCopyWith<_$_OpenMeteoDailyDto> get copyWith =>
      __$$_OpenMeteoDailyDtoCopyWithImpl<_$_OpenMeteoDailyDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoDailyDtoToJson(
      this,
    );
  }
}

abstract class _OpenMeteoDailyDto implements OpenMeteoDailyDto {
  factory _OpenMeteoDailyDto(
      {required final List<String> time,
      required final List<int?> weathercode,
      @JsonKey(name: 'temperature_2m_max')
          required final List<double?> temperature2mMax,
      @JsonKey(name: 'temperature_2m_min')
          required final List<double?> temperature2mMin,
      @JsonKey(name: 'uv_index_max')
          required final List<double?> uvIndexMax,
      @JsonKey(name: 'precipitation_sum')
          required final List<double?> precipitationSum,
      @JsonKey(name: 'rain_sum')
          required final List<double?> rainSum,
      @JsonKey(name: 'snowfall_sum')
          required final List<double?> snowfallSum,
      @JsonKey(name: 'sunrise')
          required final List<DateTime?> sunrise,
      @JsonKey(name: 'sunset')
          required final List<DateTime?> sunset}) = _$_OpenMeteoDailyDto;

  factory _OpenMeteoDailyDto.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoDailyDto.fromJson;

  @override
  List<String> get time;
  @override
  List<int?> get weathercode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double?> get temperature2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double?> get temperature2mMin;
  @override
  @JsonKey(name: 'uv_index_max')
  List<double?> get uvIndexMax;
  @override
  @JsonKey(name: 'precipitation_sum')
  List<double?> get precipitationSum;
  @override
  @JsonKey(name: 'rain_sum')
  List<double?> get rainSum;
  @override
  @JsonKey(name: 'snowfall_sum')
  List<double?> get snowfallSum;
  @override
  @JsonKey(name: 'sunrise')
  List<DateTime?> get sunrise;
  @override
  @JsonKey(name: 'sunset')
  List<DateTime?> get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoDailyDtoCopyWith<_$_OpenMeteoDailyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
