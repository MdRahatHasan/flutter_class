import 'package:flutter/cupertino.dart';

class FirstController extends ChangeNotifier {
  dynamic _values = 0;
  get values => _values;

  void getIncrement() async {
    _values++;
    notifyListeners();
  }

  void getDecrement() async {
    _values--;
    notifyListeners();
  }
}
