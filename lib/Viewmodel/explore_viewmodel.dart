import 'package:flutter/material.dart';

enum Options {
  buy,
  rent,
}

class ExploreViewModel with ChangeNotifier {
  Options _selectedOptions = Options.rent;

  Options get getSelectedOptions => _selectedOptions;

  void setSelectedOptions(Options value) {
    _selectedOptions = value;
    notifyListeners();
  }
}
