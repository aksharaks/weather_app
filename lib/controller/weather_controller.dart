//import 'dart:developer';

import 'package:flutter/material.dart';
///import 'package:http/http.dart';
import 'package:weather/model/weather_response_model.dart';
import 'package:weather/service/weather_services.dart';

 class WeatherController extends ChangeNotifier {
  WeatherResponseModel? weatherResponseModel;
   bool isLoading =false;
// //notifyListners();
 Future<void> getcurrentWeather()async{
   isLoading =true;
   notifyListeners();
   WeatherServices services =WeatherServices();
//final Response
weatherResponseModel
 = await services.getcurrentWeatherservice("9.931233","76.267303");
 isLoading =false;
   notifyListeners();
  

//     weatherResponseModel;
//   await Service;
  }
  
}