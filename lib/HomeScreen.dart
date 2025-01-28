import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = 'Home Screen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('NY Times Most Popular'),
     ),
     body: SingleChildScrollView(
       child: Column(
       ),
     ),
   );
  }

}