import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/models/mainMenu_model.dart';
import 'package:webtoon_app/models/user_model.dart';

class ApiService {
  final String baseUrl = 'http://gw.koiware.co.kr:2012'; //운영계
  // final String baseUrl = 'http://localhost:8080'; //개발계
  final String noticeList = '/main/refNoticeList.do';
  final String costDetail = '/cost/getCostDetail.do';

// TODO: 유저정보가져오기
  Future<UserModel> getUserInfo(String id, String pw) async {
    const String login = '/login/loginProc.do';

    final url = Uri.parse('$baseUrl$login');
    final headers = {"Content-Type": "application/json"};
    final body = jsonEncode({"usr_id": id, "password": pw});

    final res = await http.post(url, headers: headers, body: body);

    if (res.statusCode == 200) {
      print(res.body);
      return UserModel.fromJson(jsonDecode(res.body));
    }
    throw Error();
  }

// TODO: 메뉴정보가져오기
  Future<List<MainmenuModel>> getMainMenuList(String empGrade) async {}
}
