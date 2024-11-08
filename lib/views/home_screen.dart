import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather/controller/weather_controller.dart';


import 'package:weather/utilis/colors.dart';
import 'package:weather/utilis/constants.dart';
import 'package:weather/views/location_screen.dart';
import 'package:weather/views/setting_screen.dart';

//import '../controller/weather_controller.dart';
//import 'package:flutter/widgets.dart';
//import 'package:weather/utilis/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
//late WeatherController weatherController;
  void initState() {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      // context.read().of<WeatherController>(context, listen: false);
      context.read<WeatherController>().getcurrentWeather();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // final weatherController=
    // Provider.of<WeatherController>(context, listen: false);
    return Scaffold(

   body:
   SafeArea(
     child: Column(
       children: [

        const Row(),
        kheight25,
        
        WeatherController().isLoading?
        const Center(
          child:CircularProgressIndicator(),
        ):
        WeatherController().weatherResponseModel == null?
        const Center(

          child: Text("No data found!!"),
        ):
        //  WeatherController.isLoading?
        //  const Center(
        //   child: CircularProgressIndicator,
        //  ):
        
         Container(
          padding: EdgeInsets.all(10),
         
          width: 358,
          height: 600,
           decoration: BoxDecoration(
         
         gradient: LinearGradient(colors:[lightBlue,DarkBlue], 
            
            
       begin:Alignment.topCenter,
       end: Alignment.bottomCenter
       ),

          borderRadius: BorderRadius.circular(30),
           ),

           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add,color: whiteprimary,
                    size: 32,),
             
                    Text(
                       WeatherController().weatherResponseModel!.name ,
                      // "Malang",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,color: whiteprimary,fontSize: 16),
                    ),
                    
             //dropdown
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),
              ));
            },
            
             icon:  
           IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),
           ));
           },
            icon:  Icon(Icons.settings,
             color: whiteprimary,
                    size: 28,),)
                    )
                  ],
                ),

                Image.asset("assets/images/Sun cloud angled rain.png"),
                Text(
                  "Sunday  |  Nov 21",
                style: TextStyle(color: whiteprimary,fontSize: 16),
                ),
              Text(
                 WeatherController().weatherResponseModel!.main.temp.toString() ,
                //"24",
                style: TextStyle(color: whiteprimary,
              fontSize: 72,fontWeight: FontWeight.bold),
              
              ),
                Text(
                   WeatherController().weatherResponseModel!.weather[0].main,
                  //"Heavy rain",
                style: TextStyle(color: whiteprimary,fontSize: 16),
                ),
Divider(
  color: whiteprimary,


),



//grid session starting


// Row(
//   children: [
//      SvgPicture.asset("assets/svgs/carbon_location-current.svg"),
//      kwidth5,
//      Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//        children: [
//                Text("3.7km/hr",
//                   style: TextStyle(color: whiteprimary,fontSize: 12),
//                   ),
//                    Text("wind",
//                   style: TextStyle(color: whiteprimary,fontSize: 12),
//                   ),]
  
//      )
//   ],
// ),



Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
  
        
        children: [
          SvgPicture.asset("assets/svgs/carbon_location-current.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                 " ${WeatherController().weatherResponseModel!.wind.speed.toString()}km/hr",
                
                //"3.7km/hr",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("wind",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
  
  
            ],
          )
        ],
        
      ),
  
  
      Row(
        children: [
          SvgPicture.asset("assets/svgs/Indicator.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                 
                 
                 "${ WeatherController().weatherResponseModel!.clouds.all}",
                //"74%",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("clouds                 ",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
  
  
            ],
          )
        ],
        
      )
    ],
  ),
),




Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          SvgPicture.asset("assets/svgs/Pressure.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                 "${WeatherController().weatherResponseModel!.main.pressure.toString()}mbar",
                //"1010 mba",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("Pressure",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
  
  
            ],
          )
        ],
        
      ),
  
      Row(
        children: [
          SvgPicture.asset("assets/svgs/sHumidity.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "${WeatherController().weatherResponseModel!.main.humidity}",
                
                //"83%",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("Humidity 83%",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
  
  
            ],
          )
        ],
        
      )
  

              ],



             ),
           ),
         
       ],
     ),
   )

    
         )
       ]
     
    )
   )
    );
   
  }
}