import 'package:clean_archetecture/wather/domain/entiteis/weather.dart';
import 'package:clean_archetecture/wather/domain/repository/base_weather_repository.dart';

import '../datasourse/remote_datasource.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
