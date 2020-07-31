import 'package:equatable/equatable.dart';
import 'package:weather_bloc/data/repositories/models/Article.dart';
import 'package:meta/meta.dart';

abstract class ArticleState extends Equatable {}

class ArticleInitialState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ArticleLoadingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ArticleLoadedState extends ArticleState {
  List<Articles> articles;

  ArticleLoadedState({@required this.articles});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ArticleErrorState extends ArticleState {
  String message;

  ArticleErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
