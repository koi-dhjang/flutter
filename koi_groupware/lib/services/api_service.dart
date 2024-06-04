import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://gw.koiware.co.kr:2012'; //운영계
  // final String baseUrl = 'http://localhost:8080'; //개발계
  final String noticeList = '/main/refNoticeList.do';
  final String costDetail = '/cost/getCostDetail.do';
  final String login = '/login/loginProc.do';

  void doLogin() async {
    final url = Uri.parse('$baseUrl$login');
    final headers = {"Content-Type": "application/json"};
    final body = jsonEncode({"usr_id": "koi.dhjang", "password": "koiware123"});

    try {
      final res = await http.post(url, headers: headers, body: body);

      if (res.statusCode == 200) {
        print('success ${res.body}');
      } else {
        print('fail ${res.statusCode}');
        print('fail ${res.body}');
      }
    } catch (e) {
      print('Error$e');
    }
  }

  void getNoticeList() async {
    final url = Uri.parse('$baseUrl$noticeList');
    final headers = {"Content-Type": "application/json"};
    final body = jsonEncode({
      'nPage': 1,
      'searchType': 'all',
      'keyword': '',
    });

    try {
      final res = await http.post(url, headers: headers, body: body);

      if (res.statusCode == 200) {
        print('success ${res.body}');
        print(res.body);
      } else {
        print('fail ${res.statusCode}');
        print('fail ${res.body}');
      }
    } catch (e) {
      print('Error$e');
    }
  }

  void getCostDetail() async {
    final url = Uri.parse('$baseUrl$costDetail');
    final Object param = {
      'seq': '6843',
    };

    print(url);
    print(param);

    final res = await http.post(url, body: param);

    if (res.statusCode == 200) {
      print(res.body);
      return;
    }
    throw Error();
  }
}
