import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LocationApp(),
    );
  }
}

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  var locationMessage = "";
  Position _position;
  StreamSubscription<Position> _streamSubscription;
  Address _address;
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();

    setState(() {
      locationMessage = " ${position.latitude} , ${position.longitude}";
      final coordinates = Coordinates(position.latitude, position.longitude);
      convertCoordinatesToAddress(coordinates)
          .then((value) => _address = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on),
            SizedBox(height: 20),
            Text("Get user location"),
            SizedBox(height: 20),
            Text(locationMessage),
            SizedBox(height: 20),
            Text("${_address?.addressLine ?? '-'}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                getCurrentLocation();
              },
              child: Text("Get location"),
            )
          ],
        ),
      ),
    );
  }
}

Future<Address> convertCoordinatesToAddress(Coordinates coordinates) async {
  var addresses =
      await Geocoder.local.findAddressesFromCoordinates(coordinates);
  return addresses.first;
}
