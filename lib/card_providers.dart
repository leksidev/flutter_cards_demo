import 'package:flutter/foundation.dart';

class RotationProvider with ChangeNotifier {
  double _rotation = 0.0;

  double get rotation => _rotation;

  void updateRotation(double newRotation) {
    _rotation = newRotation;
    notifyListeners();
  }
}

class DxProvider with ChangeNotifier {
  double _dx = 0.0;

  double get dx => _dx;

  void updateRotation(double newDx) {
    _dx = newDx;
    notifyListeners();
  }
}

class DyProvider with ChangeNotifier {
  double _dy = 0.0;

  double get dy => _dy;

  void updateRotation(double newDy) {
    _dy = newDy;
    notifyListeners();
  }
}
