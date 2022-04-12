import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  var _something = 'SomeSome';

  String get something => _something;

  void doSomething() {
    _something = 'DidSomething';
    notifyListeners();
  }
}
