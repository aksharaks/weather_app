import 'package:flutter/material.dart';
import 'package:weather/utilis/colors.dart';
import 'package:weather/utilis/constants.dart';
import 'package:weather/views/location_screen.dart';
import 'package:weather/views/setting_screen.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: SafeArea(child: Column(
  children: [
    Row(),
    
    
    Column(
      children: [
        Row(),
        Container(
         padding: EdgeInsets.all(10),
          width: 358,
          height: 565,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[lightBlue,DarkBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.circular(30)
          ),
        //       child: Column(
        //         children: [
        //           Row(
        //              mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Icon(Icons.add,color: whiteprimary,
        //                     size: 32,),
                 
        //                     Text("Malang",style: TextStyle(fontWeight: FontWeight.w700,color: whiteprimary,fontSize: 16),
        //                     ),
                        
        //              //dropdown
        //             IconButton(onPressed: (){
        //               Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),
        //               ));
        //             },
                
        //              icon:  
        //            IconButton(onPressed: (){
        //            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),
        //            ));
        //            },
        //             icon:  Icon(Icons.settings,
        //              color: whiteprimary,
        //                     size: 32,),)
        //                     )
        //                   ],
        //           ),
        //            Image.asset("assets/images/Sun cloud angled rain.png"),
        //                 Text("Sunday  |  Nov 21",
        //                 style: TextStyle(color: whiteprimary,fontSize: 16),
        //                 ),
        //               Text("24",style: TextStyle(color: whiteprimary,
        //               fontSize: 72,fontWeight: FontWeight.bold),
                  
        //               ),
        //                 Text("Heavy rain",
        //                 style: TextStyle(color: whiteprimary,fontSize: 16),
        //                 ),
        // Divider(
        //   color: whiteprimary,
        
        // ),
        
           // ],
          ),
      ],
    ),
   // )
  ],
)),

    );
  }
}