import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class FoodlyProvider extends ChangeNotifier {
  double _lat = 0.0;
  double _long = 0.0;
  String appId = '1e2c66dbb32db6e904786288b45ded3e';
  String locationName = '';

  double get lat => _lat;

  String get location => locationName;

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

  void getLocationName() async {
    final url = Uri.parse(
        'http://api.positionstack.com/v1/reverse?access_key=6a7674d0f66fec05fcb5dbc3d4f1af46&query=$lat,$long');
    final response = await http.get(url);
    final decodedData = jsonDecode(response.body);
    locationName = decodedData['data'][0]['label'];
    notifyListeners();
  }
}

class CredentialsSignInProvider extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  User get authenticatedUser => loggedInUser;

  Future login(String email, password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    notifyListeners();
  }

  void getCurrentLoggedInUser() async {
    loggedInUser = _auth.currentUser!;
    notifyListeners();
  }
}

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? user;

  GoogleSignInAccount get currentUser => user!;

  Future login() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    notifyListeners();
  }
}