part of homepage_view.dart;

class HomePageBody extends StatelessWidget {
  HomePageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomepageCubit, HomepageState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomepageInitial) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //AppCent NewsApp Title'ı için
              TitlleText(),
              //Haber arama text'i
              SearchText(),
              //Hbaerlerin Listelendiği widget
              NewsList(
                  news: context.read<HomepageCubit>().news),
              //HomepageBottomNavigator
              AppBottomNavigator(index: 0)
            ],
          );
        } else {
          return Center(
            child: Text("Sorun Oluştu"),
          );
        }
      },
    );
  }
}
