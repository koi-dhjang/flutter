import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/models/webtoon_model.dart';

class ApiService {
  List<WebtoonModel> webtoonLinstances = [];
  static const baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';

  static const String today = 'today';

  Future<List<WebtoonModel>> getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        webtoonLinstances.add(WebtoonModel.fromJson(webtoon));
      }

      return webtoonLinstances;
    }
    throw Error();
  }
}
