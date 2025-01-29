import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_news/network/cubit/cubit.dart';
import 'Home/HomeScreen.dart';
import 'MyTheme.dart';

void main(){
  runApp(
    BlocProvider(
      create: (context) => NewsCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }

}