import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';

part 'detailnews_state.dart';

class DetailnewsCubit extends Cubit<DetailnewsState> {
  DetailnewsCubit() : super(DetailnewsInitial());
  List<Articles> favoriNews = [];

//Favoriye ekleme fonk.
  onTapFavoriteIcon(Articles news) async {
    if (!news.url!.isEmpty && !favoriNews.contains(news)) {
      favoriNews.add(news);

      emit(DetailnewsInitial());
    } else {
      if (!news.url!.isEmpty && favoriNews.contains(news)) {
        favoriNews.remove(news);
        // await deleteData(news);

        emit(DetailnewsInitial());
      }
    }
  }
}
