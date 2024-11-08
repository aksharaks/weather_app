import 'package:flutter/material.dart';
import 'package:weather/utilis/colors.dart';
import 'package:weather/views/home_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [lightBlue, DarkBlue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: whiteprimary,
                      ),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: whiteprimary),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "UNIT",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Temperature unit",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white)),
                        ],
                      ),
                      Text("C",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white)),
                    ],
                  )),
              const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Wind speed unit",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white)),
                        ],
                      ),
                      Text("km/h",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white)),
                    ],
                  )),
              const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Atmospheric pressure unit",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white)),
                        ],
                      ),
                      Text("mbar",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Divider(
                  thickness: 1,
                  color: whiteprimary,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "EXTRA",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "About",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Privacy policy",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}