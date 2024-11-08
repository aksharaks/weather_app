
//import 'package:provider/provider.dart' as http;
import 'dart:convert';
//import 'dart:math';
import 'dart:developer';
//import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_response_model.dart';
import 'package:weather/utilis/constants.dart';


//a
class WeatherServices {

  Future<WeatherResponseModel?> getcurrentWeatherservice(String lat,String long)async{
    final baseurl = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apikey ");
    try {
      final response = await http.get(baseurl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        log("200 works");
        log(response.body.toString());
       // log(x);
        final json = jsonDecode(response.body);
        final data = WeatherResponseModel.fromJson(json);
        log("After the parcing of data");
            log(data.toString());
            //debugPrint();
       return data;

        
      }else{
        log("status code: ${response.statusCode} Body ${response.body}");
        return null;
      }
    } catch (e) {
      log("error exicuted");
    log(e.toString());
    }
    return null;
  }
}