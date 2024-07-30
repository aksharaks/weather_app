import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/utilis/colors.dart';
import 'package:weather/utilis/constants.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

body: SafeArea(
  child: Container(
    padding: EdgeInsets.all(10),
  
    margin: const EdgeInsets.all(20),
    // fix the to the screen correctly according to thge container
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
           
           gradient: LinearGradient(colors:[lightBlue,DarkBlue], 
              
              
         begin:Alignment.topCenter,
         end: Alignment.bottomCenter
         ),
  
            borderRadius: BorderRadius.circular(30),
  
  
  
  ),
  
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: Colors.white,
          ),),
          Text("Manage Location",style: TextStyle(
            color: whiteprimary,
            fontWeight: FontWeight.w600,
            fontSize: 16

          ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(),
          )
        ],
      ),
      kheight10,
      TextField(
        
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "Search your city",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            
            
            borderRadius: BorderRadius.circular(30)
          )
        ),
      ),
       kheight10,
Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(
    top: 10,
    bottom: 10
  ),
  width: double.infinity,
  height: 80,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    
    
  ),
  child:  Center(
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Malanng",style: TextStyle
            (color: Colors.black,fontSize: 16)
            ),
            Text("20/24",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        ),
         Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets\svgs\carbon_location-current.svg",color: Colors.black,),
            Text("Heavy rain",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        )
      ],
    ),
  ),
),
Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(
    top: 10,
    bottom: 10
  ),
  width: double.infinity,
  height: 80,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    
    
  ),
  child:  Center(
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Banyawayung",style: TextStyle
            (color: Colors.black,fontSize: 16)
            ),
            Text("20/24",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        ),
         Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets\svgs\carbon_location-current.svg",color: Colors.black,),
            Text("Heavy rain",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        )
      ],
    ),
  ),
),
Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(
    top: 10,
    bottom: 10
  ),
  width: double.infinity,
  height: 80,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    
    
  ),
  child:  Center(
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Jakarta",style: TextStyle
            (color: Colors.black,fontSize: 16)
            ),
            Text("27/28",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        ),
         Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets\svgs\carbon_location-current.svg",color: Colors.black,),
            Text("Heavy rain",style: TextStyle
            (color: Colors.black,fontSize: 16))
          ],
        )
      ],
    ),
  ),
),

    ],
  ),
      ),
),
    );
  }
}