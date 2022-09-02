import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/feature/DetailPage/cubit/detailnews_cubit.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';
import 'package:share_plus/share_plus.dart';

DetailsNewsAppBar(
  BuildContext context,
  Articles news,
) {
  return CupertinoNavigationBar(
    leading: CupertinoNavigationBarBackButton(onPressed: () {
      Navigator.pop(context);
    }),
    trailing: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
            onTap: () {
              if ((news.url?.isEmpty ?? "").toString().isNotEmpty) {
                Share.share(news.url!, subject: news.title);
              }
            },
            child: Icon(CupertinoIcons.share)),
        SizedBox(
          width: context.width / 20,
        ),
        GestureDetector(
          onTap: () async {
            context.read<DetailnewsCubit>().onTapFavoriteIcon(news);
          },
          child: Icon(context.read<DetailnewsCubit>().favoriNews.contains(news)
              ? Icons.favorite
              : Icons.favorite_border_outlined),
        )
      ],
    ),
  );
}
