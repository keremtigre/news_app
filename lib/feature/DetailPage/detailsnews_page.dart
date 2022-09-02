library detailsnews_page.dart;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/feature/DetailPage/appbar.dart';
import 'package:news_project/feature/DetailPage/cubit/detailnews_cubit.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';
import 'package:news_project/product/widgets/newsSource_widget.dart';
import 'package:share_plus/share_plus.dart';
part 'parts/build_newsSourceButton.dart';
part 'parts/build_newsDateText.dart';
part 'parts/build_newsImage.dart';

class DetailsNews extends StatelessWidget {
  final Articles news;
  const DetailsNews({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailnewsCubit, DetailnewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is DetailnewsInitial) {
          return CupertinoPageScaffold(
              navigationBar: DetailsNewsAppBar(context, news),
              child: Column(
                children: [
                  SizedBox(
                    width: context.width,
                    height: context.height / 1.1,
                    child: ListView(
                      children: [
                        NewsImage(news: news),
                        Padding(
                          padding: EdgeInsets.all(context.width / 20),
                          child: Text(
                            news.description ?? "",
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .navTitleTextStyle
                                .copyWith(fontSize: 15),
                          ),
                        ),
                        NewsDateAndAuthorText(news: news),
                        Padding(
                          padding: EdgeInsets.all(context.width / 20),
                          child: AutoSizeText(
                              news.content ?? "News Description Null "),
                        ),
                      ],
                    ),
                  ),
                  NewsSourceButton(news: news)
                ],
              ));
        } else {
          return Text("Sorun Oluştu");
        }
      },
    );
  }
}
