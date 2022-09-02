part of detailsnews_page.dart;

class NewsImage extends StatelessWidget {
  const NewsImage({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: context.width / 20,
          right: context.width / 20,
          top: context.height / 80),
      child: Image.network(
        news.urlToImage ?? "assets/news.png",
        fit: BoxFit.cover,
        width: context.width,
        height: context.height / 2.9,
      ),
    );
  }
}
