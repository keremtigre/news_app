import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';

class NewsCard extends StatelessWidget {
  final Articles news;
  const NewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("url" + news.urlToImage.toString());
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: context.width / 50),
            //AutoSizeWidget'ı textlerin overflow'a sebebiyet vermemesi için kullanıldı
            child: AutoSizeText(
              news.title ?? "",
              style:
                  CupertinoTheme.of(context).textTheme.actionTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
            ),
          ),
          Row(
            children: [
              Container(
                width: context.width / 1.8,
                padding: EdgeInsets.only(
                    left: context.width / 50, top: context.height / 50),
                child: AutoSizeText(
                  news.description ?? "",
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: context.width / 40,
                  bottom: context.width / 40,
                  left: context.width / 20,
                  right: context.width / 20,
                ),
                child: news.urlToImage == "null" || news.urlToImage == null
                    //eğer url boş gelirse hata almamak için asset'den bir image gösterdim
                    ? Image.asset(
                        "assets/news.png",
                        fit: BoxFit.cover,
                        height: context.height / 10,
                        width: context.width / 3,
                      )
                    : Image.network(
                        news.urlToImage!,
                        fit: BoxFit.cover,
                        height: context.height / 10,
                        width: context.width / 3,
                      ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
