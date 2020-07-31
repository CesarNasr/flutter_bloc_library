import 'package:bloc/bloc.dart';
import 'package:weather_bloc/bloc/article_bloc/article_event.dart';
import 'package:weather_bloc/bloc/article_bloc/article_state.dart';
import 'package:weather_bloc/data/repositories/models/Article.dart';
import 'package:weather_bloc/data/repositories/repositories/ArticleRepository.dart';
import 'package:meta/meta.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository repository;

  ArticleBloc({@required this.repository});

  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticlesEvent) {
      yield ArticleLoadingState();
      try {
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles: articles);
      } catch (e) {
        yield ArticleErrorState(message: e.toString());
      }
    }
  }
}
