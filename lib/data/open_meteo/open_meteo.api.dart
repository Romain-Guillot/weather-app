import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/data/open_meteo/dto/open_meteo_response.dto.dart';

part 'open_meteo.api.g.dart';

final openMeteoDioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.options.baseUrl = Env.awsBaseURL;

  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      final token = (session as CognitoAuthSession).userPoolTokensResult.value.idToken;
      options.headers['Authorization'] = 'Bearer ${token.raw}';
    } catch (e) {
      // cannot retrieve user token
    }
    handler.next(options);
  }));

  return dio;
});

final dreamemoryApiProvider = Provider<AwsDreamemoryApi>((ref) {
  return AwsDreamemoryApi(ref.watch(awsDioProvider));
});

@RestApi()
abstract class OpenMeteoApi {
  factory OpenMeteoApi(Dio dio, {String baseUrl}) = _OpenMeteoApi;

  @GET("/v1/forecast")
  Future<OpenMeteoResponseDto> get({
    @Query('latitude') latitude,
    @Query('latitude') longitude,
    @Query('hourly') hourly,
    @Query('daily') daily,
    @Query('forecast_days') forecast_days,
    @Query('timezone') timezone,
  });
}

// latitude=45.77
// longitude=4.88
// hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,precipitation_probability,precipitation,rain,snowfall,weathercode,windspeed_10m,uv_index,is_day
// daily=weathercode,temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,rain_sum,snowfall_sum&
// forecast_days=14
// timezone=Europe%2FLondon