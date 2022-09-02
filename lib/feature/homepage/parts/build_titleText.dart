part of homepage_view.dart;

class TitlleText extends StatelessWidget {
  const TitlleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.height / 20),
      alignment: Alignment.center,
      child: Text(
        "NewsApp",
        style: CupertinoTheme.of(context)
            .textTheme
            .actionTextStyle
            .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
