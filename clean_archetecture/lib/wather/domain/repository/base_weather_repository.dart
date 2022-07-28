import 'package:clean_archetecture/wather/domain/entiteis/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
