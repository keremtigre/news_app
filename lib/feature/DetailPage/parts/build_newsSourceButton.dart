part of detailsnews_page.dart;

class NewsSourceButton extends StatelessWidget {
  const NewsSourceButton({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: EdgeInsets.only(top: context.height / 50),
          width: context.width / 2.5,
          height: context.height / 20,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border:
                  Border.all(color: CupertinoColors.black.withOpacity(0.4))),
          alignment: Alignment.center,
          child: Text(
            "News Source",
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () async {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (builder) => NewsSourceWidget(
                        url: news.url!,
                      )));
        });
  }
}
