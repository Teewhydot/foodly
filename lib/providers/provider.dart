import 'package:flutter/cupertino.dart';

class FoodlyProvider extends ChangeNotifier {
  String _location = 'Lagos';

  String get location => _location;

  set location(String value) {
    _location = value;
    notifyListeners();
  }
}
