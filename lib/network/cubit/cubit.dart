import 'package:flutter_bloc/flutter_bloc.dart';
import '../api/Api_manager.dart';
import '../models/newsData.dart';
import 'States.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit() : super(NewsLoading());
  static NewsCubit get(context) => BlocProvider.of(context);

  Future<NewsData?> fetchNews() async {
    emit(NewsLoading());

    try {
      final newsData = await ApiManager.fetchNews();
      if (newsData != null) {
        emit(NewsSuccess(newsData));
      } else {
        emit(
            NewsError('Failed to load news'));
      }
    } catch (e) {
      emit(
          NewsError('An error occurred: $e'));
    }



}

}
