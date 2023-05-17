import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/open_meteo.api.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/repositories/weather/open_meteo_weather.repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return OpenMeteoWeatherRepository(
    logger: XLoggerImpl(context: OpenMeteoWeatherRepository),
    api: ref.watch(openMeteoApiProvider),
  );
});

abstract interface class WeatherRepository {
  Future<WeatherModel> retrieve({
    required double lat,
    required double lon,
  });
}
