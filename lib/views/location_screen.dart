import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/utilis/colors.dart';
import 'package:weather/utilis/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Position? _currentPosition;
  String _currentAddress = "Fetching location...";

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Handle the case when location services are not enabled
      setState(() {
        _currentAddress = "Location services are disabled.";
      });
      return;
    }

    // Check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
        setState(() {
          _currentAddress = "Location permissions are denied";
        });
        return;
      }
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = position;
      _currentAddress = "Lat: ${position.latitude}, Long: ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [lightBlue, DarkBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  Text(
                    "Manage Location",
                    style: TextStyle(
                      color: whiteprimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(),
                  ),
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
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              kheight10,
              const Text(
                "Current Location:",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                _currentAddress,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              kheight10,
              _buildLocationCard("Malanng", "20/24"),
              _buildLocationCard("Banyawayung", "20/24"),
              _buildLocationCard("Jakarta", "27/28"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationCard(String cityName, String temperature) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  temperature,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  "assets/svgs/fluent_weather-rain-showers-day-24-regular.svg",
                  color: Colors.black,
                ),
                Text(
                  "Heavy rain",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
