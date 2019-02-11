import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ), //AppBar
      body: Center(
        child: FlatButton(
         child: Text('back to first Screen'), 
         onPressed: () {
           Navigator.pop(context);
         },

      )
      ),//Center
    );//Scaffold
  }
}