part of fav_view.dart;

class FavBody extends StatelessWidget {
  const FavBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FavTitle(),
        Flexible(
            child: ListView.builder(
                padding: EdgeInsets.only(top: context.height / 20),
                itemCount: context.read<DetailnewsCubit>().favoriNews.length,
                itemBuilder: (itemBuilder, index) {
                  return Column(
                    children: [
                      index == 0 ? SizedBox() : Divider(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (builder) => DetailsNews(
                                      news: context
                                          .read<DetailnewsCubit>()
                                          .favoriNews[index])));
                        },
                        child: NewsCard(
                            news: context
                                .read<DetailnewsCubit>()
                                .favoriNews[index]),
                      ),
                    ],
                  );
                })),
        AppBottomNavigator(
          index: 1,
        )
      ],
    );
  }
}
