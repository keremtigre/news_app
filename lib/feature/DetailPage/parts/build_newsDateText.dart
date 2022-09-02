part of detailsnews_page.dart;

class NewsDateAndAuthorText extends StatelessWidget {
  const NewsDateAndAuthorText({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(CupertinoIcons.square_favorites),
            SizedBox(width: context.width / 50),
            Text((news.author?.length ?? 0) < 20
                ? (news.author ?? "unkown")
                : (news.author ?? "unkown              ").substring(0, 20))
          ],
        ),
        Row(
          children: [
            Icon(CupertinoIcons.calendar),
            SizedBox(width: context.width / 50),
            Text(news.publishedAt?.substring(0, 10) ?? "")
          ],
        ),
      ],
    );
  }
}
