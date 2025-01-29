import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_news/MyTheme.dart';
import 'package:ny_news/network/cubit/States.dart';
import 'package:ny_news/network/cubit/cubit.dart';
import '../customs/custom-details-card.dart';
import '../customs/custom-news-card.dart';
import '../network/models/newsData.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = 'Home Screen';
  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    cubit.fetchNews();
    // ApiManager.fetchArticle();
    return Scaffold(
     appBar: AppBar(
       title: Text('NY Times Most Popular'),
     ),
     body: BlocBuilder<NewsCubit,NewsState>(builder: (context , state){
      if (state is NewsLoading) {
        return Center(
            child: CircularProgressIndicator(color: MyTheme.brownColor,));
      } else if (state is NewsSuccess) {
        NewsData newsData = state.newsData;
        return ListView.builder(
          itemCount: newsData.results!.length,
          itemBuilder: (context,index){
            var result = newsData.results![index];
            return  NewsCard(
              title: result.title ?? 'Unknown Title',
              author: result.byline ?? 'Unknown Author',
               imageUrl: result.media![0].mediametadata![0].url!,
              date: result.publishedDate ?? 'UnKnown Date',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  DetailsCard(
                      title: result.title ?? 'Unknown Title' ,
                      author:  result.byline ?? 'Unknown Author',
                      imageUrl: result.media![0].mediametadata![2].url!,
                      date: result.publishedDate ?? 'UnKnown Date',
                      abstract: result.abstract ?? 'Unknown Abstract',
                      source: result.source ?? 'Unknown Source',
                      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",

                    ) ));
              },
            );
          },
        );
      }
      else if (state is NewsError) {
        return Center(
            child: Text(
                'Error: ${state.message}'));
      }
      return Container();
     })
   );
  }

}