part of homepage_view.dart;

class NewsList extends StatelessWidget {
  final List<Articles> news;
  const NewsList({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: context.read<HomepageCubit>().isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: CupertinoColors.black,
              ),
            )
          : ListView.builder(
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.only(top: context.height / 20),
              itemCount: news.length,
              itemBuilder: (itemBuilder, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (builder) =>
                                DetailsNews(news: news[index])));
                  },
                  child: Column(
                    children: [
                      index != 0 ? Divider() : SizedBox(),
                      NewsCard(
                        news: news[index],
                      )
                    ],
                  ),
                );
              }),
    );
  }
}
