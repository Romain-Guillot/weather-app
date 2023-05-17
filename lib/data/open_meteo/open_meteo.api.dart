import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_response.dto.dart';
import 'package:weatherapp/env.dart';

part 'open_meteo.api.g.dart';

final openMeteoDioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.options.baseUrl = Env.openMeteoBaseURL;

  return dio;
});

final openMeteoApiProvider = Provider<OpenMeteoApi>((ref) {
  return OpenMeteoApi(ref.watch(openMeteoDioProvider));
});

@RestApi()
abstract class OpenMeteoApi {
  factory OpenMeteoApi(Dio dio, {String baseUrl}) = _OpenMeteoApi;

  @GET("/v1/forecast")
  Future<OpenMeteoResponseDto> get({
    @Query('latitude') required double latitude,
    @Query('longitude') required double longitude,
    @Query('hourly') required String hourly,
    @Query('daily') required String daily,
    @Query('forecast_days') required int forecastDays,
    @Query('timezone') required String timezone,
  });
}
