import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_project/feature/homepage/model/news_model.dart';

class HomePageService {
  Future<List<Articles>> getRequest(String searchText) async {
    //replace your restFull API here.
    String _apikey = "7bfa82999d6b41f9b7be10f398fba893";
    String _apikey2= "992dc4395ecd4a9e910a7ae2673a83e7";
    String url =
        "https://newsapi.org/v2/everything?q=${searchText}&page=1&apiKey=${_apikey2}";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonBody = NewsModel.fromJson(jsonDecode(response.body));

      return jsonBody.articles!;
    } else {
      return [];
    }
  }
}
