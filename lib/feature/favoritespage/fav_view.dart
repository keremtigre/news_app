library fav_view.dart;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/core/helper/widgets/bottom_navigator.dart';
import 'package:news_project/feature/DetailPage/cubit/detailnews_cubit.dart';
import 'package:news_project/feature/DetailPage/detailsnews_page.dart';
import 'package:news_project/product/widgets/news_card.dart';
part 'fav_body.dart';
part 'parts/build_favTitle.dart';
class FavView extends StatelessWidget {
  const FavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: FavBody());
  }
}
