import 'dart:convert';
import '../models/newsData.dart';
import 'Api_constants.dart';
import 'package:http/http.dart' as http;

class ApiManager{
  static Future<NewsData?> fetchNews() async {
    Uri url =Uri.https(
      ApiConstants.baseUrl,
      ApiConstants.newsApi,
      {'api-key': ApiConstants.apiKey});

        try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final newsData = NewsData.fromJson(jsonData);
        return newsData;
      } else {
        print('Error: ${response.statusCode}, ${response.body}');
        return null;
      }
    } catch (e) {
          print('Exception: $e');
          return null;
    }
  }
  // static Future<String?> fetchArticle(String url) async {
  //   try {
  //     final response = await http.get(Uri.parse(url));
  //
  //     if (response.statusCode == 200) {
  //       var document = parse(response.body);
  //       print('Outer HTML:');
  //       print(document.outerHtml);
  //       document.querySelectorAll('p').forEach((element) {
  //         print(element.text.trim());
  //       });
  //     } else {
  //       print('Failed to fetch HTML. Status code: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

}
