import 'package:flutter/material.dart';

import 'customs/custom-details-card.dart';
import 'customs/custom-news-card.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = 'Home Screen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('NY Times Most Popular'),
     ),
     body: ListView(
    children: [
      NewsCard(
        title: "The Children",
        author: "Nicholas Kristof",
        imageUrl: "",
        date: "2026-12-04",
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DetailsCard(
                title: "The Children" ,
                author: "Nicholas Kristof",
                imageUrl: "",
                date: "2026-12-04",
                abstract: 'rfeghjgkhhnbgifvcdxzxcvbhnjmk,lmkjnbhvcxxcvbnjmnobhigvucfydxtcvbhnbivuc',
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                source: 'nykkk' ,

              ) ));
        },
      ),    ],
    ),
   );
  }

}