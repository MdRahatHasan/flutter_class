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

  void getIncrementTow() async {
    _values += 2;
    notifyListeners();
  }

  void getDecrementTow() async {
    _values -= 2;
    notifyListeners();
  }

  void getReset() async {
    _values = 0;
    notifyListeners();
  }
}
