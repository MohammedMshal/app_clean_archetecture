import 'package:clean_archetecture/wather/domain/entiteis/weather.dart';
import 'package:clean_archetecture/wather/domain/repository/base_weather_repository.dart';

import '../datasourse/remote_datasource.dart';

class WeatherRepository implements BaseWeatherRepository {
  final RmoteDataSource remoteDataSource;
  WeatherRepository(this.remoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await remoteDataSource.getWeatherByCountrtName(countryName))!;
  }
}
