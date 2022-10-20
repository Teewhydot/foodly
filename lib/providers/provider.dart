import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class FoodlyProvider extends ChangeNotifier {
  double _lat = 0.0;
  double _long = 0.0;
  String appId = '1e2c66dbb32db6e904786288b45ded3e';

  double get lat => _lat;

  double get long => _long;

  Future<void> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
    _lat = position.latitude;
    _long = position.longitude;
    notifyListeners();
  }

  Future<String> getLocationName(double latitude, double longitude) async {
    final url = Uri.parse(
        'http://api.positionstack.com/v1/reverse?access_key=6a7674d0f66fec05fcb5dbc3d4f1af46&query=$latitude,$longitude');
    final response = await http.get(url);
    final decodedData = jsonDecode(response.body);
    final locationName = decodedData['data'][0]['label'];
    return locationName;
  }
}
