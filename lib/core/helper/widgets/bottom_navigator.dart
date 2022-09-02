import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/core/extension/context_extension.dart';
import 'package:news_project/feature/favoritespage/fav_view.dart';
import 'package:news_project/feature/homepage/cubit/homepage_cubit.dart';
import 'package:news_project/feature/homepage/homepage_view.dart';

class AppBottomNavigator extends StatefulWidget {
  int index;
  AppBottomNavigator({Key? key, required this.index}) : super(key: key);

  @override
  State<AppBottomNavigator> createState() => _AppBottomNavigatorState();
}

class _AppBottomNavigatorState extends State<AppBottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 12,
      child: CupertinoTabBar(
        onTap: (value) {
          context.read<HomepageCubit>().onTapPage(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(builder: (context) => HomePageView()),
                    (route) => false);
              },
              child: Icon(
                CupertinoIcons.home,
                color: widget.index == 0
                    ? CupertinoColors.black
                    : CupertinoColors.systemGrey,
              ),
            ),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(builder: (context) => FavView()),
                    (route) => false);
              },
              child: Icon(Icons.favorite_border_outlined,
                  color: widget.index == 1
                      ? CupertinoColors.black
                      : CupertinoColors.systemGrey),
            ),
            label: "Favorites",
          )
        ],
      ),
    );
  }
}
