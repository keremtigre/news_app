part of fav_view.dart;

class FavTitle extends StatelessWidget {
  const FavTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.height / 20),
      alignment: Alignment.center,
      child: Text(
        "Favorites",
        style: CupertinoTheme.of(context)
            .textTheme
            .actionTextStyle
            .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
