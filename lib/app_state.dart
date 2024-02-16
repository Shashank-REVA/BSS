import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _city = true;
  bool get city => _city;
  set city(bool value) {
    _city = value;
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }

  bool _evetyes = true;
  bool get evetyes => _evetyes;
  set evetyes(bool value) {
    _evetyes = value;
  }

  bool _eventno = true;
  bool get eventno => _eventno;
  set eventno(bool value) {
    _eventno = value;
  }
}
