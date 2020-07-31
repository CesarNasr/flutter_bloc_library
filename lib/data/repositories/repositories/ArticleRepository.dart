import 'package:weather_bloc/data/repositories/models/ApiResult.dart';
import 'package:weather_bloc/data/repositories/models/Article.dart';
import 'package:http/http.dart' as http;
import 'package:weather_bloc/res/strings.dart';
import 'dart:convert';

abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class ArticlesRepositoryImplementation implements ArticleRepository {
  @override
  Future<List<Articles>> getArticles() async {
    var response = await http.get(Strings.newsArticleURL);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> articles = ApiResult.fromJson(data).articles;
      return articles;
    } else {
      throw Exception();
    }

  }
}
