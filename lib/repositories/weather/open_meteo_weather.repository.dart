import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/open_meteo.api.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/repositories/weather/weather.repository.dart';

class OpenMeteoWeatherRepository implements WeatherRepository {
  OpenMeteoWeatherRepository({
    required this.logger,
    required this.api,
  });

  final XLogger logger;
  final OpenMeteoApi api;

  @override
  Future<WeatherModel> retrieve({
    required double lat,
    required double lon,
  }) async {
    final weather = await callApiOrThrow(
      () => api.get(
        latitude: lat,
        longitude: lon,
        forecastDays: 14,
        timezone: "Europe/London", // TODO(RGU)
        hourly:
            "temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,precipitation_probability,precipitation,rain,snowfall,weathercode,windspeed_10m,uv_index,is_day",
        daily: "weathercode,temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,rain_sum,snowfall_sum",
      ),
    );

    return weather;
  }
}
