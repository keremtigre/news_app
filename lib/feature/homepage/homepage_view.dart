library homepage_view.dart;

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/core/helper/widgets/bottom_navigator.dart';
import 'package:news_project/feature/DetailPage/detailsnews_page.dart';
import 'package:news_project/product/widgets/news_card.dart';
import 'package:news_project/feature/favoritespage/fav_view.dart';
import 'package:news_project/feature/homepage/cubit/homepage_cubit.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';
part 'homepage_body.dart';
part 'parts/build_titleText.dart';
part 'parts/build_searchtext.dart';
part 'parts/build_newsList.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: HomePageBody(),
    );
  }
}
