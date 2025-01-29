import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ny_news/MyTheme.dart';

class DetailsCard extends StatelessWidget{
  final String title;
  final String abstract;
  final String author;
  final String description;
  final String source;
  final String imageUrl;
  final String date;


  DetailsCard({
    required this.title,
    required this.abstract,
    required this.description,
    required this.source,
    required this.author,
    required this.imageUrl,
    required this.date,

  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("NY Times Most Popular"),
        leading: const BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                  height: 8),
               Text(
                 abstract,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Flexible(
                     child: Text(author,
                         style: Theme.of(context).textTheme.titleSmall!.copyWith(
                             color: MyTheme.blackColor
                         )),
                   ),
                  Text(date, style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: MyTheme.blackColor
                  )),
                ],
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 293,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>  Center(child: CircularProgressIndicator(color: MyTheme.brownColor,)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 4),
              Center(
                child: Text(
                  "Source: $source",
                  style:  Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: MyTheme.blackColor
                  ),
                ),
              ),
              const SizedBox(height: 12),
               Text(
                description,
                 style: Theme.of(context).textTheme.titleMedium!.copyWith(
                   color: MyTheme.blackColor
                 ),
              ),
            ],
          ),
      ),
    );
  }

}