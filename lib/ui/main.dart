import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/bloc/article_bloc/article_bloc.dart';
import 'package:weather_bloc/data/repositories/repositories/ArticleRepository.dart';
import 'package:weather_bloc/ui/pages/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (BuildContext context) => ArticleBloc(repository: ArticlesRepositoryImplementation()),
        child: HomePage(),
      )
    );
  }
}
