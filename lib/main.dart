import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project/feature/DetailPage/cubit/detailnews_cubit.dart';
import 'package:news_project/feature/homepage/cubit/homepage_cubit.dart';
import 'package:news_project/feature/homepage/homepage_view.dart';

 main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => HomepageCubit(),
    ),
    BlocProvider(
      create: (context) => DetailnewsCubit(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}
