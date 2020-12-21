import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_api/models/article_model.dart';


// to get all category type news
// called by article_view
class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=e0c33a1d7c8e42348005811f2f19f0eb";
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);

    if (jsondata['status'] == 'ok') {
      jsondata['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            content: element['content'],
            description: element['description'],
            title: element['title'],
            url: element['url'],
            urlToImage: element['urlToImage']
          );

          news.add(articleModel);
        }
      });
    }
  }
}


// to get all specific category type news
// called by category_view
class CategoryNewsWithData{
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    String url = "http://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=e0c33a1d7c8e42348005811f2f19f0eb";
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);

    if (jsondata['status'] == 'ok') {
      jsondata['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            content: element['content'],
            description: element['description'],
            title: element['title'],
            url: element['url'],
            urlToImage: element['urlToImage']
          );

          news.add(articleModel);
        }
      });
    }
  }
}