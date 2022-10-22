import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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
    try {
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
    } catch (e) {
      rethrow;
    }
  }

  Future getLocationName() async {
    final url = Uri.parse(
        'http://api.positionstack.com/v1/reverse?access_key=6a7674d0f66fec05fcb5dbc3d4f1af46&query=$lat,$long');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      locationName = decodedData['data'][0]['label'];
    } else {}
    notifyListeners();
  }
}

class CredentialsSignInProvider extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential?> signUp(String email, password) async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return newUser;
    } catch (e) {
      return null;
    }
  }

  Future<UserCredential?> login(String email, password) async {
    try {
      final loggedInUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return loggedInUser;
    } catch (e) {
      return null;
    }
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

  Future logOut() async {
    FirebaseAuth.instance.signOut();
  }
}

class FacebookSignInProvider extends ChangeNotifier {
  String email = '';
  String name = '';

  String get getEmail => email;

  String get getName => name;

  Future<AccessToken> facebookLogin() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;

      return accessToken;
    } else {
      throw Exception('Facebook login failed');
    }
  }

  Future<void> getUserFacebookData() async {
    final userData = await FacebookAuth.i.getUserData();
    email = userData['email'];
    name = userData['name'];
    notifyListeners();
  }

  Future logOut() async {
    await FacebookAuth.instance.logOut();
  }
}
