import 'package:flutter/material.dart';
import 'package:projetoflutter/appcontroller.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appController.instance,
      builder: ( context,  child) { 
       return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: appController.instance.darktheme ? Brightness.dark : 
        Brightness.light
      ),
      home: homePage(),
    );


     },);
  }

}