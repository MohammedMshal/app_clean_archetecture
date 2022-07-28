import 'package:clean_archetecture/wather/domain/entiteis/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName(String name);
}
