import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/utilis/colors.dart';
import 'package:weather/utilis/constants.dart';
import 'package:weather/views/location_screen.dart';
import 'package:weather/views/setting_screen.dart';
//import 'package:flutter/widgets.dart';
//import 'package:weather/utilis/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   body:
   SafeArea(
     child: Column(
       children: [

        Row(),
        kheight25,
         Container(
          padding: EdgeInsets.all(10),
         
          width: 358,
          height: 564,
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
             
                    Text("Malang",style: TextStyle(fontWeight: FontWeight.w700,color: whiteprimary,fontSize: 16),
                    ),
                    
             
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
                    size: 32,),)
                    )
                  ],
                ),

                Image.asset("assets\images\Sun cloud angled rain.png"),
                Text("Sunday  |  Nov 21",
                style: TextStyle(color: whiteprimary,fontSize: 16),
                ),
              Text("24",style: TextStyle(color: whiteprimary,
              fontSize: 72,fontWeight: FontWeight.bold),
              
              ),
                Text("Heavy rain",
                style: TextStyle(color: whiteprimary,fontSize: 16),
                ),
Divider(
  color: whiteprimary,

),


//grid session starting



Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
  
        
        children: [
          SvgPicture.asset("assets\svgs\carbon_location-current.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("3.7km/hr",
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
          SvgPicture.asset("assets\svgs\Indicator.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("74%",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("Chance of rain",
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
          SvgPicture.asset("assets\svgs\Pressure.svg"),
          kwidth5,
          Column(
  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("1010 mba",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
                   Text("Pressure",
                  style: TextStyle(color: whiteprimary,fontSize: 12),
                  ),
  
  
            ],
          )
        ],
        
      ),
  
  
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Row(
          children: [
            SvgPicture.asset("assets\svgs\Humidity.svg"),
            kwidth5,
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("83%",
                    style: TextStyle(color: whiteprimary,fontSize: 12),
                    ),
                     Text("Humidity 83%",
                    style: TextStyle(color: whiteprimary,fontSize: 12),
                    ),
          
          
              ],
            )
          ],
          
        ),
      )
    ],
  ),
)


// GridView.count(
//   crossAxisCount: 2,
// crossAxisSpacing: 10.0,
// mainAxisSpacing: 10.0,
// shrinkWrap: true,
// children: List.generate(20,(Index){
//   return Row(
//     children: [],
//   );
// }
// ),

//   )
              ],



             ),
           ),
         ),
       ],
     ),
   )

    
    
    );
  }
}