import 'dart:convert';

import 'package:clean_archetecture/core/utils/constans.dart';
import 'package:clean_archetecture/wather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountrtName(String countryName);
}

class RmoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountrtName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstans.baseURL}//weather?q=$countryName}&appid=$AppConstans.apiKey');
      // ignore: avoid_print
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    }
  }
}
