import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:meta/meta.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';
import 'package:news_project/feature/homepage/service/api_service.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageInitial());
  int selectedPage = 0;
  bool isLoading = false;
  TextEditingController searchTextController = TextEditingController();
  List<Articles> news = [];
  onTapPage(value) {
    selectedPage = value;
    emit(HomepageInitial());
  }

  changeLoading() {
    isLoading = !isLoading;
    emit(HomepageInitial());
  }

  onTapDelete() {
    news.clear();
    searchTextController.clear();
    emit(HomepageInitial());
  }

  onTapSearch(String text) async {
    changeLoading();
    await HomePageService().getRequest(text).then((value) {
      news = value;
      isLoading = false;
      emit(HomepageInitial());
    });
  }
}
