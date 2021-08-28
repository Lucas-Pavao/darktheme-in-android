import 'package:flutter/material.dart';

class appController extends ChangeNotifier{


  static appController instance = appController();

bool darktheme = false;
changetheme(){

darktheme = !darktheme;
notifyListeners();

}



}