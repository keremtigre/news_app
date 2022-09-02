import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/feature/homepage/model/news_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsSourceWidget extends StatelessWidget {
  final String url;
  NewsSourceWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("News Source"),
        leading: CupertinoNavigationBarBackButton(onPressed: () {
          Navigator.pop(context);
        }),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: context.width / 6),
        //News Source'a gitmek için
        child: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
