import 'package:flutter/material.dart';

import '../MyTheme.dart';

class NewsCard extends StatelessWidget{

  final String title;
  final String author;
   final String imageUrl;
  final String date;
  final VoidCallback onTap;

  const NewsCard({
    required this.title,
    required this.author,
     required this.imageUrl,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: MyTheme.whiteColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author,
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(
                height: 4),
            Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Icon(
                    Icons.calendar_today, size: 16, color: MyTheme.greyColor),
                const SizedBox(
                    width: 4),
                Text(date, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ],
        ),
        trailing: Icon(
            Icons.arrow_forward_ios, size: 18, color: MyTheme.greyColor),
        onTap: onTap,
      ),
    );
  }

}