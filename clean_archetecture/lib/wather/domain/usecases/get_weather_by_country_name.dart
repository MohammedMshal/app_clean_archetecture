import 'package:clean_archetecture/wather/domain/entiteis/weather.dart';
import 'package:clean_archetecture/wather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final WeatherRepository repository;
  GetWeatherByCountryName(this.repository);
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
