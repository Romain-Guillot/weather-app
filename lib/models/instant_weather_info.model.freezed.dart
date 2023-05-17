// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_weather_info.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InstantWeatherInfoModel {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  WeatherCode? get weatherCode => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstantWeatherInfoModelCopyWith<InstantWeatherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstantWeatherInfoModelCopyWith<$Res> {
  factory $InstantWeatherInfoModelCopyWith(InstantWeatherInfoModel value,
          $Res Function(InstantWeatherInfoModel) then) =
      _$InstantWeatherInfoModelCopyWithImpl<$Res, InstantWeatherInfoModel>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double? temperature,
      WeatherCode? weatherCode,
      double? humidity});
}

/// @nodoc
class _$InstantWeatherInfoModelCopyWithImpl<$Res,
        $Val extends InstantWeatherInfoModel>
    implements $InstantWeatherInfoModelCopyWith<$Res> {
  _$InstantWeatherInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as WeatherCode?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstantWeatherInfoModelCopyWith<$Res>
    implements $InstantWeatherInfoModelCopyWith<$Res> {
  factory _$$_InstantWeatherInfoModelCopyWith(_$_InstantWeatherInfoModel value,
          $Res Function(_$_InstantWeatherInfoModel) then) =
      __$$_InstantWeatherInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double? temperature,
      WeatherCode? weatherCode,
      double? humidity});
}

/// @nodoc
class __$$_InstantWeatherInfoModelCopyWithImpl<$Res>
    extends _$InstantWeatherInfoModelCopyWithImpl<$Res,
        _$_InstantWeatherInfoModel>
    implements _$$_InstantWeatherInfoModelCopyWith<$Res> {
  __$$_InstantWeatherInfoModelCopyWithImpl(_$_InstantWeatherInfoModel _value,
      $Res Function(_$_InstantWeatherInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$_InstantWeatherInfoModel(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as WeatherCode?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_InstantWeatherInfoModel implements _InstantWeatherInfoModel {
  _$_InstantWeatherInfoModel(
      {required this.timestamp,
      required this.temperature,
      required this.weatherCode,
      required this.humidity});

  @override
  final DateTime timestamp;
  @override
  final double? temperature;
  @override
  final WeatherCode? weatherCode;
  @override
  final double? humidity;

  @override
  String toString() {
    return 'InstantWeatherInfoModel(timestamp: $timestamp, temperature: $temperature, weatherCode: $weatherCode, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstantWeatherInfoModel &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, temperature, weatherCode, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstantWeatherInfoModelCopyWith<_$_InstantWeatherInfoModel>
      get copyWith =>
          __$$_InstantWeatherInfoModelCopyWithImpl<_$_InstantWeatherInfoModel>(
              this, _$identity);
}

abstract class _InstantWeatherInfoModel implements InstantWeatherInfoModel {
  factory _InstantWeatherInfoModel(
      {required final DateTime timestamp,
      required final double? temperature,
      required final WeatherCode? weatherCode,
      required final double? humidity}) = _$_InstantWeatherInfoModel;

  @override
  DateTime get timestamp;
  @override
  double? get temperature;
  @override
  WeatherCode? get weatherCode;
  @override
  double? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_InstantWeatherInfoModelCopyWith<_$_InstantWeatherInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
