part of homepage_view.dart;

class SearchText extends StatelessWidget {
  const SearchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: context.height / 40,
            left: context.width / 40,
            right: context.width / 40),
        height: context.height / 15,
        width: context.width,
        decoration: BoxDecoration(
          color: CupertinoColors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                blurRadius: 10,
                color: CupertinoColors.systemGrey.withOpacity(0.6))
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: CupertinoTextField(
          controller: context.read<HomepageCubit>().searchTextController,
          placeholder: "Type a text",
          prefix: GestureDetector(
              onTap: () {
                if (!context
                    .read<HomepageCubit>()
                    .searchTextController
                    .text
                    .isEmpty) {
                  context.read<HomepageCubit>().onTapSearch(
                      context.read<HomepageCubit>().searchTextController.text);
                  print("ontap :" +
                      context.read<HomepageCubit>().news.toString());
                }
              },
              child: Icon(CupertinoIcons.search)),
          suffix: GestureDetector(
              onTap: () {
                context.read<HomepageCubit>().onTapDelete();
              },
              child: Icon(CupertinoIcons.delete)),
          textAlign: TextAlign.center,
        ));
  }
}
