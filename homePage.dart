import 'package:flutter/material.dart';
import 'package:projetoflutter/appcontroller.dart';

class homePage extends StatefulWidget{
  @override
  State<homePage> createState() {
    return homePagestate();
  }
} 
class homePagestate extends State<homePage>{

int counter = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior
      appBar: AppBar(
        // nome centralizado na barra
        title: Center(child: Text ('Lucas programing')),
      ),
       
      body: Center(
        child: Switch(value: appController.instance.darktheme ,onChanged: (value){

           appController.instance.changetheme();

        },),
      ),
      
  //
  // botao do contador
  // 
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         
       setState(() {

       counter++;

       });
        },),
    );
  }


}