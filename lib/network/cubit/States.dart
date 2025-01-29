import '../models/newsData.dart';

abstract class NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  final NewsData newsData;

  NewsSuccess(this.newsData);
}

class NewsError extends NewsState {
  final String message;

  NewsError(this.message);
}